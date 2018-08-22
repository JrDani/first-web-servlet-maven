<%@page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt" prefix = "fmt" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<t:genericpage>
	<jsp:attribute name="meta">
		<t:default_meta title="${book.name}" />
	</jsp:attribute>
	<jsp:attribute name="header">
      <t:default_header />
    </jsp:attribute>
	<jsp:attribute name="footer">
      <t:default_footer />
      <script type="text/javascript">		
      	$(document).ready(function(){	
			document.getElementById('detalhe').scrollIntoView();
		});	
	  </script>
    </jsp:attribute>
    <jsp:body>
    	<main class="text-dark">
			<div class="container">
				<h2 class="font-weight-light text-uppercase my-5"><fmt:message key="product.about" /></h2>
				
				<!-- inicio do card produto -->
				<div id="detalhe" class="card2">
					<div class="container-fliud">
						<div class="wrapper row">
							<div class="preview col-md-6">
								
								<div class="preview-pic tab-content">
								  <div class="tab-pane active" id="pic-1"><img src="http://placekitten.com/400/252" /></div>
								  <div class="tab-pane" id="pic-2"><img src="http://placekitten.com/400/252" /></div>
								  <div class="tab-pane" id="pic-3"><img src="http://placekitten.com/400/252" /></div>
								  <div class="tab-pane" id="pic-4"><img src="http://placekitten.com/400/252" /></div>
								  <div class="tab-pane" id="pic-5"><img src="http://placekitten.com/400/252" /></div>
								</div>
								<ul class="preview-thumbnail nav nav-tabs">
								  <li class="active"><a data-target="#pic-1" data-toggle="tab"><img src="http://placekitten.com/200/126" /></a></li>
								  <li><a data-target="#pic-2" data-toggle="tab"><img src="http://placekitten.com/200/126" /></a></li>
								  <li><a data-target="#pic-3" data-toggle="tab"><img src="http://placekitten.com/200/126" /></a></li>
								  <li><a data-target="#pic-4" data-toggle="tab"><img src="http://placekitten.com/200/126" /></a></li>
								  <li><a data-target="#pic-5" data-toggle="tab"><img src="http://placekitten.com/200/126" /></a></li>
								</ul>
								
							</div>
							<div class="details col-md-6">
								<h3 class="product-title">${book.name}</h3>
								<div class="rating">
									<div class="stars">
										<span class="fa fa-star checked"></span>
										<span class="fa fa-star checked"></span>
										<span class="fa fa-star checked"></span>
										<span class="fa fa-star"></span>
										<span class="fa fa-star"></span>
									</div>
									<span class="review-no">41 reviews</span>
								</div>
								<p class="product-description">${book.description}</p>
								<h4 class="price"><fmt:message key="product.qtd" /><span> 25</span></h4>
								<p class="vote"><strong>95%</strong> <fmt:message key="product.votes" /> <strong>(87 votes)</strong></p>
								
								<div class="action">
									<button class="add-to-cart btn btn-default" type="button"><fmt:message key="product.button"/></button>
								</div>
							</div>
						</div>
					</div>
				</div>	
				<!-- fim do card produto-->
			</div>		
		</main>				
    </jsp:body>    
</t:genericpage>
