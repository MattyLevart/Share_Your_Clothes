<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="header.jsp" %>

<section class="form--steps">
    <div class="form--steps-instructions">
        <div class="form--steps-container">
            <h3>Ważne!</h3>
            <p data-step="1" class="active">
                Uzupełnij szczegóły dotyczące Twoich rzeczy. Dzięki temu będziemy
                wiedzieć komu najlepiej je przekazać.
            </p>
            <p data-step="2">
                Uzupełnij szczegóły dotyczące Twoich rzeczy. Dzięki temu będziemy
                wiedzieć komu najlepiej je przekazać.
            </p>
            <p data-step="3">
                Wybierz jedną, do
                której trafi Twoja przesyłka.
            </p>
            <p data-step="4">Podaj adres oraz termin odbioru rzeczy.</p>
        </div>
    </div>
    <div class="form--steps-container">
        <div class="form--steps-counter">Krok <span>1</span>/4</div>
<form:form method="post" modelAttribute="donation">
        <div data-step="1" class="active">
            <h3>Zaznacz co chcesz oddać:</h3>
            <c:forEach var="category" items="${categories}">
                <div class="form-group form-group--checkbox">
                    <label>
                        <input
                                type="checkbox"
                                name="categories"
                                value="${category.id}"
                        />
                        <span class="checkbox"></span>
                        <span class="description">${category.name}</span>
                    </label>
                </div>
            </c:forEach>
            <div class="form-group form-group--buttons">
                <button type="button" class="btn next-step">Dalej</button>
            </div>
        </div>

    <div data-step="2">
        <h3>Podaj liczbę 60l worków, w które spakowałeś/aś rzeczy:</h3>

        <div class="form-group form-group--inline">
            <label>
                Liczba 60l worków:
                <form:input path="quantity" type="number" step="1" min="1" />
            </label>
        </div>

        <div class="form-group form-group--buttons">
            <button type="button" class="btn prev-step">Wstecz</button>
            <button type="button" class="btn next-step">Dalej</button>
        </div>
    </div>

    <div data-step="3">
        <h3>Wybierz organizacje, której chcesz pomóc:</h3>

        <c:forEach var="institution" items="${institutions}">
            <div class="form-group form-group--checkbox">
                <label>
                    <input type="radio" name="institutionId" value="${institution.id}" />
                    <span class="checkbox radio"></span>
                    <span class="description">
                <div class="title">Fundacja: ${institution.name}</div>
                <div class="subtitle">Cel i misja: ${institution.description}</div>
              </span>
                </label>
            </div>
        </c:forEach>

        <div class="form-group form-group--buttons">
            <button type="button" class="btn prev-step">Wstecz</button>
            <button type="button" class="btn next-step">Dalej</button>
        </div>
    </div>
    <div data-step="4">
        <h3>Podaj adres oraz termin odbioru rzeczy przez kuriera:</h3>

        <div class="form-section form-section--columns">
            <div class="form-section--column">
                <h4>Adres odbioru</h4>
                <div class="form-group form-group--inline">
                    <label> Ulica <form:input type="text" path="street" /> </label>
                </div>

                <div class="form-group form-group--inline">
                    <label> Miasto <form:input type="text" path="city" /> </label>
                </div>

                <div class="form-group form-group--inline">
                    <label> Kod pocztowy <form:input type="text" path="zipCode" /> </label>
                </div>

            </div>

            <div class="form-section--column">
                <h4>Termin odbioru</h4>
                <div class="form-group form-group--inline">
                    <label> Data <form:input type="date" path="pickUpDate" /> </label>
                </div>

                <div class="form-group form-group--inline">
                    <label> Godzina <form:input type="time" path="pickUpTime" /> </label>
                </div>

                <div class="form-group form-group--inline">
                    <label> Uwagi dla kuriera <form:textarea path="pickUpComment" rows="5"></form:textarea> </label>
                </div>
            </div>
        </div>
        <div class="form-group form-group--buttons">
            <button type="button" class="btn prev-step">Wstecz</button>
            <button type="button" class="btn next-step">Dalej</button>
        </div>
    </div>
    <div data-step="5">
        <h3>Podsumowanie Twojej darowizny</h3>

        <div class="summary">
            <div class="form-section">
                <h4>Oddajesz:</h4>
                <ul>
                    <li>
                        <span class="icon icon-bag"></span>
                        <span class="summary--text">
            Oddajesz <c:out value="${donation.quantity}" /> worków na cele charytatywne.
          </span>
                    </li>

                    <li>
                        <span class="icon icon-hand"></span>
                        <span class="summary--text">
            <c:out value="${donation.institution.name}" /> w <c:out value="${donation.institution.city}" />
          </span>
                    </li>
                </ul>
            </div>

            <div class="form-section form-section--columns">
                <div class="form-section--column">
                    <h4>Adres odbioru:</h4>
                    <ul>
                        <li><c:out value="${donation.street}" /></li>
                        <li><c:out value="${donation.city}" /></li>
                        <li><c:out value="${donation.zipCode}" /></li>
                    </ul>
                </div>

                <div class="form-section--column">
                    <h4>Termin odbioru:</h4>
                    <ul>
                        <li><c:out value="${donation.pickUpDate}" /></li>
                        <li><c:out value="${donation.pickUpTime}" /></li>
                        <li><c:out value="${donation.pickUpComment}" /></li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="form-group form-group--buttons">
            <button type="button" class="btn prev-step">Wstecz</button>
            <button type="submit" class="btn">Potwierdzam</button>
        </div>
    </div>
</form:form>
    </div>
</section>

<%--    <div>--%>
<%--        <form:form method="post" modelAttribute="donation">--%>
<%--            <div class="form-section--checkboxes">--%>
<%--                <label for="categories">Kategorie:</label>--%>
<%--                <form:checkboxes id="categories" path="categories" items="${categories}" itemValue="id" itemLabel="name"/>--%>
<%--            </div>--%>
<%--            <div class="form-section--checkboxes">--%>
<%--                <label for="institution">Fundacje:</label>--%>
<%--            <form:select id="institution" path="institution" items="${institutions}" itemValue="id" itemLabel="name"/>--%>
<%--            </div>--%>
<%--            <div class="form-group">--%>
<%--                <label for="zipCode">Kod pocztowy:</label>--%>
<%--                <form:input path="zipCode" id="zipCode" placeholder="Kod pocztowy"/>--%>
<%--            </div>--%>
<%--            <div class="form-group">--%>
<%--                <label for="street">Ulica:</label>--%>
<%--                <form:input path="street" id="street" placeholder="Ulica"/>--%>
<%--            </div>--%>
<%--            <div class="form-group">--%>
<%--                <label for="city">Miasto:</label>--%>
<%--                <form:input path="city" id="city" placeholder="Miasto"/>--%>
<%--            </div>--%>
<%--            <div class="form-group">--%>
<%--                <label for="quantity">Ilość:</label>--%>
<%--                <form:input path="quantity" id="quantity" placeholder="Ilość"/>--%>
<%--            </div>--%>
<%--            <div class="form-group">--%>
<%--                <label for="pickUpComment">Komentarz:</label>--%>
<%--                <form:textarea path="pickUpComment" id="pickUpComment" placeholder="Komentarz"/>--%>
<%--            </div>--%>
<%--            <div class="form-group">--%>
<%--                <label for="pickUpDate">Data odbioru:</label>--%>
<%--                <form:input type="date" path="pickUpDate" id="pickUpDate" placeholder="Data odbioru"/>--%>
<%--            </div>--%>
<%--            <div class="form-group">--%>
<%--                <label for="pickUpTime">Godzina odbioru:</label>--%>
<%--                <form:input type="time" path="pickUpTime" id="pickUpTime" placeholder="Godzina odbioru"/>--%>
<%--            </div>--%>
<%--            <div class="form-group">--%>
<%--                <input type="submit" value="Zapisz"/>--%>
<%--            </div>--%>
<%--        </form:form>--%>
<%--    </div>--%>
<%@include file="footer.jsp" %>
