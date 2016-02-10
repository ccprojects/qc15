
<%@ page import="qc15.Prueba" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'prueba.label', default: 'Prueba')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-prueba" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-prueba" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="hora" title="${message(code: 'prueba.hora.label', default: 'Hora')}" />
					
						<g:sortableColumn property="fecha" title="${message(code: 'prueba.fecha.label', default: 'Fecha')}" />
					
						<g:sortableColumn property="comensales" title="${message(code: 'prueba.comensales.label', default: 'Comensales')}" />
					
						<g:sortableColumn property="restaurante" title="${message(code: 'prueba.restaurante.label', default: 'Restaurante')}" />
					
						<g:sortableColumn property="usuario" title="${message(code: 'prueba.usuario.label', default: 'Usuario')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${pruebaInstanceList}" status="i" var="pruebaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${pruebaInstance.id}">${fieldValue(bean: pruebaInstance, field: "hora")}</g:link></td>
					
						<td><g:formatDate date="${pruebaInstance.fecha}" /></td>
					
						<td>${fieldValue(bean: pruebaInstance, field: "comensales")}</td>
					
						<td>${fieldValue(bean: pruebaInstance, field: "restaurante")}</td>
					
						<td>${fieldValue(bean: pruebaInstance, field: "usuario")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${pruebaInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
