<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="header.jsp" %>
<%--<section class="form--steps">--%>
<%--    <div class="form--steps-instructions">--%>
<%--        <div class="form--steps-container">--%>
<%--            <h3>Ważne!</h3>--%>
<%--            <p>--%>
<%--                Uzupełnij szczegóły dotyczące Twoich rzeczy. Dzięki temu będziemy--%>
<%--                wiedzieć komu najlepiej je przekazać.--%>
<%--            </p>--%>
<%--        </div>--%>
<%--    </div>--%>
    <div>
        <form:form method="post" modelAttribute="donation">
            <div class="form-section--checkboxes">
                <label for="categories">Kategorie:</label>
                <form:checkboxes id="categories" path="categories" items="${categories}" itemValue="id" itemLabel="name"/>
            </div>
            <div class="form-section--checkboxes">
                <label for="institution">Fundacje:</label>
            <form:select id="institution" path="institution" items="${institutions}" itemValue="id" itemLabel="name"/>
            </div>
            <div class="form-group">
                <label for="zipCode">Kod pocztowy:</label>
                <form:input path="zipCode" id="zipCode" placeholder="Kod pocztowy"/>
            </div>
            <div class="form-group">
                <label for="street">Ulica:</label>
                <form:input path="street" id="street" placeholder="Ulica"/>
            </div>
            <div class="form-group">
                <label for="city">Miasto:</label>
                <form:input path="city" id="city" placeholder="Miasto"/>
            </div>
            <div class="form-group">
                <label for="quantity">Ilość:</label>
                <form:input path="quantity" id="quantity" placeholder="Ilość"/>
            </div>
            <div class="form-group">
                <label for="pickUpComment">Komentarz:</label>
                <form:textarea path="pickUpComment" id="pickUpComment" placeholder="Komentarz"/>
            </div>
            <div class="form-group">
                <label for="pickUpDate">Data odbioru:</label>
                <form:input type="date" path="pickUpDate" id="pickUpDate" placeholder="Data odbioru"/>
            </div>
            <div class="form-group">
                <label for="pickUpTime">Godzina odbioru:</label>
                <form:input type="time" path="pickUpTime" id="pickUpTime" placeholder="Godzina odbioru"/>
            </div>
            <div class="form-group">
                <input type="submit" value="Zapisz"/>
            </div>
        </form:form>
    </div>
<%--</section>--%>
<%@include file="footer.jsp" %>
