<%@tag description="Default Header with Menu" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt" prefix = "fmt" %>
<header>
	<nav class="navbar navbar-expand-lg navbar-dark">
		<div class="container">
			<div class="mr-right">
				<a class="navbar-brand" href="/">Biblioteca</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown"
					aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
			</div>

			<div class="collapse navbar-collapse" id="navbarNavDropdown">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active">
						<a class="nav-link mr-2" href="/">Home </a>
					</li>					
					<li class="nav-item">
						<a class="nav-link mr-2" href="controller?action=Search"><fmt:message key="menu.search"/></a><!--Search-->
					</li>
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" 
						data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><c:if test="${userOn != null}">${userOn.name}</c:if>
						<c:if test="${userOn == null}"><fmt:message key="menu.myAccount"/><!--My account--></c:if></a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
							<c:if test="${userOn != null}">
							<!-- Inser a product -->
							<a class="dropdown-item" href="controller?action=NewProductPage"><fmt:message key="menu.newProduct"/></a>							
							<a class="dropdown-item" href="controller?action=Logout">Logout</a>
							</c:if>
							<c:if test="${userOn == null}">
							<a class="dropdown-item" href="controller?action=LoginPage">Login</a>
							<!-- Inser a product -->
							<a class="dropdown-item" href="controller?action=NewUserPage"><fmt:message key="menu.register"/><!-- Register --></a>
							</c:if>
						</div></li>
				</ul>
			</div>
		</div>
	</nav>

	<div id="chamada">
		<h1><fmt:message key="h1.title"/></h1>
		<p class="text-center text-light"><fmt:message key="h1.text"/></p>
	</div>

</header>
<div id="middle-ads" class="container-fluid text-dark">
	<div class="container pt-5 pb-4">
		<h2><fmt:message key="h2.title"/></h2>
		<p><fmt:message key="h2.text"/></p>
	</div>
</div>