<%@ page import="qc15.Prueba" %>



<div class="fieldcontain ${hasErrors(bean: pruebaInstance, field: 'hora', 'error')} required">
	<label for="hora">
		<g:message code="prueba.hora.label" default="Hora" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="hora" from="${20..23}" class="range" required="" value="${fieldValue(bean: pruebaInstance, field: 'hora')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pruebaInstance, field: 'fecha', 'error')} required">
	<label for="fecha">
		<g:message code="prueba.fecha.label" default="Fecha" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fecha" precision="day"  value="${pruebaInstance?.fecha}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: pruebaInstance, field: 'comensales', 'error')} required">
	<label for="comensales">
		<g:message code="prueba.comensales.label" default="Comensales" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="comensales" type="number" value="${pruebaInstance.comensales}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: pruebaInstance, field: 'restaurante', 'error')} required">
	<label for="restaurante">
		<g:message code="prueba.restaurante.label" default="Restaurante" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="restaurante" required="" value="${pruebaInstance?.restaurante}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pruebaInstance, field: 'usuario', 'error')} required">
	<label for="usuario">
		<g:message code="prueba.usuario.label" default="Usuario" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="usuario" required="" value="${pruebaInstance?.usuario}"/>

</div>

