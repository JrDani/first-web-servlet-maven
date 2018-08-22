<%@page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt" prefix = "fmt" %>

<c:set var="title"><fmt:message key="newProduct.title"/></c:set>
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
				<h2 class="font-weight-light text-uppercase mt-5 mb-4"><fmt:message key="newProduct.title" /></h2>
				<c:if test="${sucesso == true}">
					<div class="alert alert-success">Livro cadastrado com sucesso</div>
				</c:if>	
				<form method="post" action="controller">
					<div class="form-group">
						<label for="titulo"><fmt:message key="newProduct.label.title" /></label>
						<input type="text" id="titulo" name="titulo" class="form-control"
							autofocus>
					</div>
					<div class="form-group">
						<label for="descricao"><fmt:message key="newProduct.label.desc" /></label>
						<textarea id="descricao" name="descricao" class="form-control"
							rows="3"></textarea>
					</div>
						<input type="hidden" name="action" value="NewProductPost" />
						<button type="submit" class="btn btn-primary"><fmt:message key="send.button" /></button>
				</form>	           
	          </div>				
		</main>
    </jsp:body>
</t:genericpage>