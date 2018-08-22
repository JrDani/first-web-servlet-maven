<%@tag description="Card product" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ attribute name="name" required="true"  %>
<%@ attribute name="id" required="true"  %>
<%@ attribute name="visits" required="true"  %>

<div class="col-sm-6 col-md-4 col-lg-3">
	<div class="card mb-4 box-shadow">
		<img class="card-img-top" src="images/book.jpg">
		<div class="card-body">
			<p class="card-text">${name}</p>
			<div class="d-flex justify-content-between align-items-center">
				<div class="btn-group">
					<a href="controller?action=ProductDetail&id=${id}"
						class="btn btn-sm btn-outline-secondary"><fmt:message key="product.view"/></a>
					<button type="button" class="btn btn-sm btn-outline-secondary"><fmt:message key="product.edit"/></button>
				</div>
				<small class="text-muted">${visits} <fmt:message key="product.small" /></small>
			</div>
		</div>
	</div>
</div>
