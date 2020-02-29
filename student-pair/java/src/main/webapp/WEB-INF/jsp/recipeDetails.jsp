<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>


<c:import url = "/WEB-INF/jsp/header.jsp"/>

<body>

	<section class="main-content">

		<img src="<c:url value="/img/recipe${recipe.recipeId}.jpg" />" />
		<h1><c:out value="${recipe.name}" /></h1>
		<c:out value = "${recipe.recipeType}"/>
		<h2><c:out value = "Cook Time"/></h2><c:out value = "${recipe.cookTimeInMinutes} minutes"/>
		<c:out value = "${recipe.description}"/>


	</section>




</body>
</html>