<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="header.jsp"%>
<h3>Lista Instytucji</h3>
<a href="${pageContext.request.contextPath}/admin/institution/add" class="btn btn-success">Dodaj nową instytucję</a>
<table class="table">
    <tr>
        <th>Id</th>
        <th>Fundacja</th>
        <th>Opis Fundacji</th>
    </tr>
    <c:forEach var="institution" items="${institutions}">
        <tr>
            <td>${institution.id}</td>
            <td>${institution.name}</td>
            <td>${institution.description}</td>
            <td>
                <a href="${pageContext.request.contextPath}/admin/institution/edit?institutionId=${institution.id}" class="btn btn-primary btn-sm">Edytuj</a>

                <form:form action="${pageContext.request.contextPath}/admin/institution/delete" method="post"
                           style="display:inline;">
                    <input type="hidden" name="institutionId" value="${institution.id}">
                    <button type="submit" class="btn btn-danger btn-sm">Usuń</button>
                </form:form>

            </td>
        </tr>
    </c:forEach>
</table>
<%@include file="footer.jsp"%>
