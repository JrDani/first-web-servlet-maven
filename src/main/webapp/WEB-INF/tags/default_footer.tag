<%@tag description="Default Footer with Scripts JS" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt" prefix = "fmt" %>
<footer class="mt-5">
	<div id="footer01" class="container-fluid">
		<div class="container py-4 text-dark">
			<div class="container text-center">
				<h2><fmt:message key="footer.h2" /></h2>
				<a href="https://fabricaon.com.br" target="_blank"><fmt:message key="footer.h2.text" /></a>
			</div>
		</div>
	</div>
	<div id="copyright" class="container-fluid">
		<div class="container text-light py-3">
			<span class="">Daniel Junior &copy 2018</span>
		</div>
	</div>
</footer>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript">
	$('#navbarNavDropdown').on('show.bs.collapse', function() {
		$('#chamada').css('transform', 'translate(-50%, 15%');
	});
	$('#navbarNavDropdown').on('hide.bs.collapse', function() {
		$('#chamada').css('transform', 'translate(-50%, -40%');
	});
</script>