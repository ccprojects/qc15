<%@ page import="qc15.Reserva" %>



<div class="fieldcontain ${hasErrors(bean: restauranteInstance, field: 'restaurante', 'error')} required">
	<label for="restaurante">
		<g:message code="reserva.restaurante.label" default="Restaurante" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="restaurante" required="" value="${reservaInstance?.restaurante}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: restauranteInstance, field: 'usuario', 'error')} required">
	<label for="usuario">
		<g:message code="reserva.usuario.label" default="usuario" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="usuario" required="" value="${reservaInstance?.usuario}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: reservaInstance, field: 'comensales', 'error')} required">
	<label for="comensales">
		<g:message code="reserva.comensales.label" default="Comensales" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="comensales" type="number" value="${reservaInstance.comensales}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: reservaInstance, field: 'fecha', 'error')} required">
	<label for="disponibles">
		<g:message code="reserva.fecha.label" default="Fecha" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="fecha" type="number" value="${reservaInstance.fecha}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: restauranteInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="restaurante.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="email" required="" value="${restauranteInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: restauranteInstance, field: 'especialidad', 'error')} required">
	<label for="especialidad">
		<g:message code="restaurante.especialidad.label" default="Especialidad" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="especialidad" required="" value="${restauranteInstance?.especialidad}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: reservaInstance, field: 'reservados', 'error')} required">
	<label for="reservados">
		<g:message code="restaurante.reservados.label" default="Reservados" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="reservados" type="number" value="${restauranteInstance.reservados}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: reservaInstance, field: 'hora', 'error')} required">
	<label for="hora">
		<g:message code="reserva.hora.label" default="Hora" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="hora" required="" value="${reservaInstance?.hora}"/>

</div>



