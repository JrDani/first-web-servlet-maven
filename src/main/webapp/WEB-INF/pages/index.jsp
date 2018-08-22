<%@page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt" prefix = "fmt" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<c:set var="title"><fmt:message key="title.index"/> ${userOn.name}</c:set>
<t:genericpage>
	<jsp:attribute name="meta">
      <t:default_meta title="${title}" />
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
				<h2 class="font-weight-light text-uppercase my-5"><fmt:message key="h2.mostPopular"/></h2>
				<div id="produtos" class="row">
	            
	            <c:forEach var="book" items="${books}">
	            	<t:card_product name="${book.name}" id="${book.id}" visits="${book.getNumbersVisit()}" />
	        	</c:forEach>
	           
	          </div>
			</div>		
		</main>
    </jsp:body>
</t:genericpage>