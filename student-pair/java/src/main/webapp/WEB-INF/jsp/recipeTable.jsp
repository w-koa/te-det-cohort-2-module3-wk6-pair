<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>

<html>
<head>
<meta name="viewport" content="width=device-width" />
<title>Recipe Table View</title>
<link rel="stylesheet" href="css/site.css" />
</head>
<body>
	<header>
		<h1>MVC Exercises - Views Part 2: Models</h1>
	</header>
	<nav>
		<ul>
			<li><a href="recipeTiles">Tile Layout</a></li>
			<li><a href="recipeTable">Table Layout</a></li>
		</ul>

	</nav>
	<section id="main-content">
		<h1>Recipes</h1>
		<!-- Use the request attribute "recipes" (List<Recipe>) -->



		<table class='recipeTable'>
			<tr>
				<th></th>
				<c:forEach var='recipe' items='${recipes}'>
					<c:url var = "recipeDetails" value = "recipeDetails?recipeId=${recipe.recipeId}"/>
					<td><a class="product-image" href="${recipeDetails}"> <img
							src="<c:url value="/img/recipe${recipe.recipeId}.jpg" />" />
					</a></td>
				</c:forEach>

			</tr>
			<tr>
				<th>Name</th>
				<c:forEach var='recipe' items='${recipes}'>
					<td id='recipeNameRow'><c:out value='${recipe.name}' /></td>
				</c:forEach>
			</tr>

			<tr>
				<th>Type</th>
				<c:forEach var='recipe' items='${recipes}'>
					<td id='recipeTypeRow'><c:out value='${recipe.recipeType}' />
					</td>
				</c:forEach>
			</tr>

			<tr>
				<th>Cook Time</th>
				<c:forEach var='recipe' items='${recipes}'>
					<td id='recipeTimeRow'><c:out
							value='${recipe.cookTimeInMinutes} min' /></td>
				</c:forEach>
			</tr>

			<tr>
				<th>Ingredients</th>
				<c:forEach var='recipe' items='${recipes}'>
					<c:set var="numberOfIngredients"
						value="${fn:length(recipe.ingredients)}" />
					<td id='recipeNumbOfIngredientsRow'><c:out
							value='${numberOfIngredients} ingredients' /></td>
				</c:forEach>
			</tr>

			<tr>
				<th>Rating</th>
				<c:forEach var='recipe' items='${recipes}'>
					<fmt:formatNumber var='ratingInt' value="${recipe.averageRating}"
						maxFractionDigits="0" type="number" />
					<td id='recipeRatingRow'><a class="product-image" href="#">
							<img src="<c:url value="/img/${ratingInt}-star.png" />" />
					</a></td>
				</c:forEach>
			</tr>

		</table>



		<%-- 
		<div class="bigdiv">
			<div class="labels">

				Name <br> Type <br> Cook Time <br> Ingredients <br>
				Rating
			</div>
			<div class="recipes">
				<c:forEach var="recipe" items="${recipes}">

					<div class="recipe">
						<a class="product-image" href="#"> <img
							src="<c:url value="/img/recipe${recipe.recipeId}.jpg" />" />
						</a> <br>
						<c:set var="class" value="name"></c:set>
						<c:out value="${recipe.name}"></c:out>
						<br>
						<c:out value="${recipe.recipeType}" />
						<br>
						<c:out value="${recipe.cookTimeInMinutes}" />
						<br>

						<c:out value="${numberOfIngredients}" />
						<br>
						<c:choose>
							<c:when
								test="${recipe.averageRating > 0 && recipe.averageRating < 2}">
								<a class="product-image" href="#"> <img
									src="<c:url value="/img/1-star.png" />" />
								</a>
							</c:when>
							<c:when
								test="${recipe.averageRating > 2 && recipe.averageRating < 3}">
								<a class="product-image" href="#"> <img
									src="<c:url value="/img/2-star.png" />" />
								</a>
							</c:when>
							<c:when
								test="${recipe.averageRating > 3 && recipe.averageRating < 4}">
								<a class="product-image" href="#"> <img
									src="<c:url value="/img/3-star.png" />" />
								</a>
							</c:when>
							<c:when
								test="${recipe.averageRating > 4 && recipe.averageRating < 5}">
								<a class="product-image" href="#"> <img
									src="<c:url value="/img/4-star.png" />" />
								</a>
							</c:when>
							<c:when test="${recipe.averageRating == 5}">
								<a class="product-image" href="#"> <img
									src="<c:url value="/img/5-star.png" />" />
								</a>
							</c:when>
						</c:choose>

					</div>
				</c:forEach>
			</div>
		</div>
--%>
	</section>
</body>
</html>