<%@page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt" prefix = "fmt" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<t:genericpage>
	<jsp:attribute name="meta">
      <t:default_meta title="Login" />
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
				<h2 class="font-weight-light text-uppercase mt-5 mt-4">Login</h2>
				  <form method="post" action="controller">
				  	<c:if test="${not empty error }">
			        	<div class="alert alert-danger mt-3">${error}</div>
			        </c:if>
			        <div class="form-group">
			          <label for="user"><fmt:message key="user.label" /></label>
			          <input type="text" name="user" id="user" class="form-control" autofocus>
			        </div>   
			        <div class="form-group">
			          <label for="pass"><fmt:message key="pass.label" /></label>
			          <input type="password" name="pass" id="pass" class="form-control">
				    </div>   
			        <button type="submit" class="btn btn-primary">Login</button>
			        <input type="hidden" name="action" value="Login"/>
			        <c:if test="${redirect != null}">
			        <input type="hidden" name="redirect" value="${redirect}"/>
			        </c:if>
			      </form>	 
			</div>			
		</main>
    </jsp:body>
</t:genericpage>