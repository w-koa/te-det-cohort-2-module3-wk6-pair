<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>

<html>
<head>
<meta name="viewport" content="width=device-width" />
<title>Recipe List View</title>
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
		<div class="recipeTiles">

			<c:forEach var="recipe" items="${recipes}">
				<div class="recipeTile">
					<c:url var = "recipeDetails" value ="/recipeDetails?recipeId=${recipe.recipeId}"/>
					<a class="product-image" href="${recipeDetails}"> <img
						src="<c:url value="/img/recipe${recipe.recipeId}.jpg" />" />
					</a> <br>
					<c:out value="${recipe.name}" />
					<br>

					<div class="numOfIngredientsTile">
						<fmt:formatNumber var='ratingInt' value="${recipe.averageRating}"
							maxFractionDigits="0" type="number" />
						<img class="rating-image"
							src="<c:url value="/img/${ratingInt}-star.png" />" />


						<c:set var="numberOfIngredients"
							value="${fn:length(recipe.ingredients)}" />


						<div class="ingredientCount">
							<c:out value='${numberOfIngredients} ingredients' />
						</div>
					</div>
				</div>
			</c:forEach>




		</div>
	</section>
</body>
</html>