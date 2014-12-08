<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

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

		<div class="row">
			<div class="col-md-6 col-md-offset-3 well">
				<!-- FORMS -->
				<h2 style="text-align: center;">
					<spring:message code="location.form.title" />
				</h2>
				<form id="location" name="location" class="form-horizontal" role="form" 
					action="/localizator/location/save" method='POST'>
					
					<c:if test="${!empty location.id}">
						<div class="form-group">
							<label for="inputName" class="col-sm-3 control-label"> 
								<spring:message code="location.form.id" />:
							</label>
							<div class="col-sm-7">
								<input id="id" name="id" class="form-control" type="number" disabled="disabled" value="${location.id}"/>
							</div>
						</div>
					</c:if>

					<div class="form-group">
						<label for="inputName" class="col-sm-3 control-label">
							<spring:message code="location.form.name" />:
						</label>
						<div class="col-sm-7">
							<input id="name" name="name" class="form-control" type="text" value="${location.name}" 
								placeholder="<spring:message code="location.form.name"/>" required autofocus/>
						</div>
					</div>

					<div class="form-group">
						<label for="inputLatitude" class="col-sm-3 control-label">
							<spring:message code="location.form.latitude" />:
						</label>
						<div class="col-sm-7">
							<input id="latitude" name="latitude" class="form-control" type="text" value="${location.latitude}" 
								placeholder="<spring:message code="location.form.latitude"/>" required/>
						</div>
					</div>
					
					<div class="form-group">
						<label for="inputLongitude" class="col-sm-3 control-label">
							<spring:message code="location.form.longitude" />:
						</label>
						<div class="col-sm-7">
							<input id="longitude" name="longitude" class="form-control" type="text" value="${location.longitude}" 
								placeholder="<spring:message code="location.form.longitude"/>" required/>
						</div>
					</div>
					
					<div class="col-sm-3 col-md-offset-5">
						<button class="btn btn-primary btn-block" type="submit">
							<spring:message code="location.form.button" />
						</button>
					</div>

				</form>
			</div>
		</div>
		
		<c:if test="${!empty locations}">

			<div class="row">
				<!-- TABLES -->
				<h2>
					<spring:message code="location.grid.title" />
				</h2>
				<div class="bs-example">
					<table class="table table-bordered">
						<thead>
							<tr>
								<th><spring:message code="location.grid.id" /></th>
								<th><spring:message code="location.grid.name" /></th>
								<th><spring:message code="location.grid.latitude" /></th>
								<th><spring:message code="location.grid.longitude" /></th>
								<th><spring:message code="location.grid.creation" /></th>
								<th><spring:message code="location.grid.delete" /></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${locations}" var="location">
								<tr>
									<td>${location.id}</td>
									<td><a href="<c:url value='/location/getUpdate/${location.id}' />">${location.name}</a></td>
									<td>${location.latitude}</td>
									<td>${location.longitude}</td>
									<td>${location.created}</td>
									<td><a href="<c:url value='/location/delete/${location.id}' />"><spring:message
												code="location.grid.delete" /></a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</c:if>

		<!-- FOOTER -->
		<c:import url="/WEB-INF/views/template/footer.jsp" />
	</div>
</body>
</html>