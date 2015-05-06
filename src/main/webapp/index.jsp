<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html>
<html>
<head>
<!-- HEAD -->
<c:import url="/WEB-INF/views/template/head.jsp" />
</head>
<body>
	<!-- NAVBAR -->
	<c:import url="/WEB-INF/views/template/navbar.jsp" />

	<!-- CONTAINER -->
	<div class="container theme-showcase">

		<!-- Main jumbotron for a primary marketing message or call to action -->
		<div class="jumbotron">
			<h1><spring:message code="app.welcome1" /></h1>
			<p><spring:message code="app.welcome2" /></p>
			<p><a href="<c:url value='/login' />" class="btn btn-primary btn-lg"
					role="button">Login &raquo;</a>
			</p>
		</div>

		<div class="progress">
			<div class="progress-bar" role="progressbar" aria-valuenow="60"
				aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
				<span class="sr-only">60% Complete</span>
			</div>
		</div>
		<div class="progress">
			<div class="progress-bar progress-bar-success" role="progressbar"
				aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"
				style="width: 40%">
				<span class="sr-only">40% Complete (success)</span>
			</div>
		</div>
		<div class="progress">
			<div class="progress-bar progress-bar-info" role="progressbar"
				aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"
				style="width: 20%">
				<span class="sr-only">20% Complete</span>
			</div>
		</div>

		<!-- FOOTER -->
		<c:import url="/WEB-INF/views/template/footer.jsp" />
	</div>
</body>
</html>