<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="header.jsp" %>
<div class="container">
  <h1 class="mt-5">Rejestracja</h1>
  <form:form method="post" action="${pageContext.request.contextPath}/register" modelAttribute="user">
    <div class="form-group">
      <label for="firstName">Imię:</label>
      <form:input id="firstName" path="firstName" class="form-control"/>
      <form:errors cssClass="text-danger" path="firstName"/>
    </div>
    <div class="form-group">
      <label for="lastName">Nazwisko:</label>
      <form:input id="lastName" path="lastName" class="form-control"/>
      <form:errors cssClass="text-danger" path="lastName"/>
    </div>
    <div class="form-group">
      <label for="email">Mail:</label>
      <form:input id="email" path="email" class="form-control"/>
      <form:errors cssClass="text-danger" path="email"/>
    </div>
    <div class="form-group">
      <label for="password">Hasło:</label>
      <form:password id="password" path="password" class="form-control"/>
      <form:errors cssClass="text-danger" path="password"/>
    </div>
    <button type="submit" class="btn btn-primary">Zarejestruj się</button>
  </form:form>
</div>
<%@include file="footer.jsp"%>
