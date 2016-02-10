
<%@ page import="qc15.Prueba" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'prueba.label', default: 'Prueba')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-prueba" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-prueba" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list prueba">
			
				<g:if test="${pruebaInstance?.hora}">
				<li class="fieldcontain">
					<span id="hora-label" class="property-label"><g:message code="prueba.hora.label" default="Hora" /></span>
					
						<span class="property-value" aria-labelledby="hora-label"><g:fieldValue bean="${pruebaInstance}" field="hora"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pruebaInstance?.fecha}">
				<li class="fieldcontain">
					<span id="fecha-label" class="property-label"><g:message code="prueba.fecha.label" default="Fecha" /></span>
					
						<span class="property-value" aria-labelledby="fecha-label"><g:formatDate date="${pruebaInstance?.fecha}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${pruebaInstance?.comensales}">
				<li class="fieldcontain">
					<span id="comensales-label" class="property-label"><g:message code="prueba.comensales.label" default="Comensales" /></span>
					
						<span class="property-value" aria-labelledby="comensales-label"><g:fieldValue bean="${pruebaInstance}" field="comensales"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pruebaInstance?.restaurante}">
				<li class="fieldcontain">
					<span id="restaurante-label" class="property-label"><g:message code="prueba.restaurante.label" default="Restaurante" /></span>
					
						<span class="property-value" aria-labelledby="restaurante-label"><g:fieldValue bean="${pruebaInstance}" field="restaurante"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pruebaInstance?.usuario}">
				<li class="fieldcontain">
					<span id="usuario-label" class="property-label"><g:message code="prueba.usuario.label" default="Usuario" /></span>
					
						<span class="property-value" aria-labelledby="usuario-label"><g:fieldValue bean="${pruebaInstance}" field="usuario"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:pruebaInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${pruebaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
