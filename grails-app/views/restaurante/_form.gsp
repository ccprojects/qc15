<%@ page import="qc15.Restaurante" %>



<div class="fieldcontain ${hasErrors(bean: restauranteInstance, field: 'barrio', 'error')} required">
	<label for="barrio">
		<g:message code="restaurante.barrio.label" default="Barrio" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="barrio" required="" value="${restauranteInstance?.barrio}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: restauranteInstance, field: 'calle_nro', 'error')} required">
	<label for="calle_nro">
		<g:message code="restaurante.calle_nro.label" default="Callenro" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="calle_nro" required="" value="${restauranteInstance?.calle_nro}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: restauranteInstance, field: 'capacidad', 'error')} required">
	<label for="capacidad">
		<g:message code="restaurante.capacidad.label" default="Capacidad" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="capacidad" type="number" value="${restauranteInstance.capacidad}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: restauranteInstance, field: 'disponibles', 'error')} required">
	<label for="disponibles">
		<g:message code="restaurante.disponibles.label" default="Disponibles" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="disponibles" type="number" value="${restauranteInstance.disponibles}" required=""/>

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

<div class="fieldcontain ${hasErrors(bean: restauranteInstance, field: 'reservados', 'error')} required">
	<label for="reservados">
		<g:message code="restaurante.reservados.label" default="Reservados" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="reservados" type="number" value="${restauranteInstance.reservados}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: restauranteInstance, field: 'restaurante', 'error')} required">
	<label for="restaurante">
		<g:message code="restaurante.restaurante.label" default="Restaurante" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="restaurante" required="" value="${restauranteInstance?.restaurante}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: restauranteInstance, field: 'telefono', 'error')} required">
	<label for="telefono">
		<g:message code="restaurante.telefono.label" default="Telefono" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="telefono" required="" value="${restauranteInstance?.telefono}"/>

</div>

