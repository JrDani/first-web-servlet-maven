<%@page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<c:set var="title">
	${searchTitle} <fmt:message key="title.search" />
</c:set>
<t:genericpage>
	<jsp:attribute name="meta">
		<t:default_meta title="${title}" />
		<style  type="text/css">
		.search{
		  background: url(images/magnifying-glass.svg) no-repeat top left;    
		  background-size: contain;
		  cursor: pointer;
		  display: inline-block;   
		  height:1em;
		  width:1em;
		}
		.search:hover{
		  fill: #D77926;
		}
		.search-btn:hover{
		  background-color: transparent;
		}
		</style>
    </jsp:attribute>
	<jsp:attribute name="header">
      <t:default_header />
    </jsp:attribute>
	<jsp:attribute name="footer">
      <t:default_footer />
    </jsp:attribute>
	<jsp:body>
		<main class="text-dark">    
			<div class="container">	      
				<div class="row mt-5 mb-4">
					<form method="post" class="navbar-form col-sm-12 col-md-8" role="search">
						<div class="input-group">
							<input name="query" class="form-control py-2 border-right-0 border" type="search" placeholder='<fmt:message key="search.placeholder"/>' autofocus>
							<span class="input-group-append">
								<button class="btn btn-outline-secondary border-left-0 border search-btn" type="submit">
									<span class="search"></span>
								</button>
							</span>
						</div>		
					</form>
				</div>	
				<div id="produtos" class="row">            
					<c:forEach var="book" items="${books}">
			        	<t:card_product name="${book.name}" visits="${book.getNumbersVisit()}" id="${book.id}" />             
		           	</c:forEach>         
				</div>
			</div>		
		</main>
    </jsp:body>
</t:genericpage>