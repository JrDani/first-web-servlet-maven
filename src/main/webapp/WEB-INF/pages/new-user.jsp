<%@page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt" prefix = "fmt" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<c:set var="title"><fmt:message key="register.title" /></c:set>
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
			<div class="container ">      
		      <h2 class="font-weight-light text-uppercase mt-5 mb-4"><fmt:message key="register.title" /></h2>
		      <form method="post" action="controller" >
		      	<c:if test="${not empty error}"> 
		      	  <div class="alert alert-danger mt-3">${error}</div>
		        </c:if>
		        <c:if test="${success==true}">
		        	<div class="alert alert-success mt-3">Success!</div>
		        </c:if>
		        <div class="form-group">
		          <label for="name"><fmt:message key="newUser.label.name" /></label>
		          <input type="text" name="name" id="name" class="form-control" autofocus>
		        </div> 
		        <div class="form-group">
		          <label for="user"><fmt:message key="user.label" /></label>
		          <input type="text" name="user" id="user" class="form-control">
		        </div>   
		        <div class="form-group">
		          <label for="pass"><fmt:message key="pass.label" /></label>
		          <input type="password" name="pass" id="pass" class="form-control">
		        </div>   
		        <button type="submit" class="btn btn-primary"><fmt:message key="send.button" /></button>
		        <input type="hidden" name="action" value="NewUserPost" />
		      </form>
		    </div>		
		</main>
    </jsp:body>
</t:genericpage>