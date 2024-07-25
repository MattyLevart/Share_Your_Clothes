<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="header.jsp"%>
<h3>Formularz Instytucji</h3>
<form:form modelAttribute="institution" action="${pageContext.request.contextPath}/admin/institution/save" method="post">
    <form:hidden path="id"/>
    <div>
        <form:label path="name">Fundacja:</form:label>
        <form:input path="name"/>
    </div>
    <div>
        <form:label path="description">Opis:</form:label>
        <form:textarea path="description"/>
    </div>
    <div>
        <button type="submit" class="btn btn-primary">Zapisz</button>
    </div>
</form:form>
<a href="${pageContext.request.contextPath}/admin/institutions" class="btn btn-secondary">Powrót do listy</a>
<%@include file="footer.jsp"%>
