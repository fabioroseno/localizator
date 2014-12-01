<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="Template for a Login and CRUD web aplication in Bootstrap using Servlets ans JSP's">
<meta name="author" content="Eduardo Gonzalez">
<link rel="shortcut icon" href="<c:url value='/resources/icon/favicon.png' />">

<title><spring:message code="main.title"/></title>

<!-- Bootstrap CSS / Theme / Template / JavaScript -->
<link href="<c:url value='/resources/css/bootstrap.css' />" rel="stylesheet"/>
<link href="<c:url value='/resources/css/bootstrap-theme.min.css' />" rel="stylesheet">
<link href="<c:url value='/resources/css/theme.css' />" rel="stylesheet">
<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
<script src="<c:url value='/resources/js/bootstrap.min.js' />"></script>