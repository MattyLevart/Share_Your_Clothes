<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html lang="pl">
<head>
  <meta charset="UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
  <title>Document</title>

  <link rel="stylesheet" href="/css/style.css"/>


<%--  <style>--%>
<%--    .form-group {--%>
<%--      margin-bottom: 15px;--%>
<%--    }--%>
<%--    .form-group label {--%>
<%--      display: block;--%>
<%--      font-weight: bold;--%>
<%--      margin-bottom: 5px;--%>
<%--    }--%>
<%--    .form-group input,--%>
<%--    .form-group select,--%>
<%--    .form-group textarea {--%>
<%--      width: 100%;--%>
<%--      padding: 8px;--%>
<%--      box-sizing: border-box;--%>
<%--    }--%>
<%--    .form-checkboxes, .form-select {--%>
<%--      margin-bottom: 15px;--%>
<%--    }--%>
<%--    .form-checkboxes label, .form-select label {--%>
<%--      display: inline-block;--%>
<%--      margin-right: 10px;--%>
<%--    }--%>
<%--    .form-container {--%>
<%--      max-width: 600px;--%>
<%--      margin: 0 auto;--%>
<%--      padding: 20px;--%>
<%--      border: 1px solid #ccc;--%>
<%--      border-radius: 5px;--%>
<%--    }--%>
<%--  </style>--%>

</head>
<body>
<header class="header--form-page">
  <nav class="container container--70">
    <ul class="nav--actions">
      <li><a href="/login" class="btn btn--small btn--without-border">Zaloguj</a></li>
      <li><a href="/register" class="btn btn--small btn--highlighted">Załóż konto</a></li>
      <li><sec:authorize acces="isAuthenticated()">
        <form action="<c:url value="/logout"/>" method="post">
          <input type="submit" value="Wyloguj">
          <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        </form>
      </sec:authorize>
      </li>
    </ul>

    <ul>
      <li><a href="#" class="btn btn--without-border active">Start</a></li>
      <li><a href="#" class="btn btn--without-border">O co chodzi?</a></li>
      <li><a href="#" class="btn btn--without-border">O nas</a></li>
      <li><a href="/admin/institutions" class="btn btn--without-border">Fundacje i organizacje</a></li>
      <li><a href="#" class="btn btn--without-border">Kontakt</a></li>
    </ul>
  </nav>

</header>
