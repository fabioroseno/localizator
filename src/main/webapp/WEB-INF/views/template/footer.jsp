<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@page import="java.net.Inet4Address"%>

<div class="well">
    <p align="center">
    <strong><spring:message code="footer.developer"/></strong>: <spring:message code="footer.autor"/> - 
    <strong><spring:message code="footer.date"/></strong>: <%= new java.util.Date() %> - 
    <strong>IP</strong>: <%= Inet4Address.getLocalHost().getHostAddress()%>
    </p>
</div>