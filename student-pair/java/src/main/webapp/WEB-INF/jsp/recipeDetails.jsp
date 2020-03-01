<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>


<c:import url="/WEB-INF/jsp/header.jsp" />

<body>

	<section class="main-content">



		<div class="summaryContainer">
			<img src="<c:url value="/img/recipe${recipe.recipeId}.jpg" />" />
			<div class="recipeSummary">
				<h3 id="recipeName">
					<c:out value="${recipe.name}" />
				</h3>

				<c:out value="${recipe.recipeType}" />

				<p id="cookTime">
					<c:out value="Cook Time " />

					<span class="normal"> <c:out
							value="${recipe.cookTimeInMinutes} minutes" />
					</span>
				</p>

				<c:out value="${recipe.description}" />

			</div>
		</div>

		<div class="ingredients">
			<p>Ingredients</p>

			<ul>
				<c:forEach var="recipe" items="${recipe.ingredients}">
					<li><c:out value="${recipe.quantity} ${recipe.name}"></c:out></li>
				</c:forEach>

			</ul>


		</div>

		<div class = "line">
		
		</div>


		<div class="prep">
			<p>Preparation</p>
			<ol>
				<c:forEach var="step" items="${recipe.preparationSteps}">
					<li><c:out value="${step}" /></li>
				</c:forEach>

			</ol>



		</div>


	</section>




</body>
</html>