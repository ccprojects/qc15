<!doctype html>
<html>
<head>
	<title>Datos de la  Reserva </title>
	
	<!----> 
	
	
</head>
<body>

Comensales: ${reservas.comensales}
<!-- Comensales: $ { lista.comensales} -->
<!-- Usuario: $ {lista.usuario } -->
<!-- comensales:$ {params.comensales} -->
<!--  comensales:$ {listR.comensales} -->
<!-- $ {nuevaRes.comensales} -->

<ul>
<!-- El restaurante es: $ {reservas.restaurante} dia: $ {reservas.fecha} hora: $ {reservas.hora } -->

<!-- datosREs: $ {datosres.fecha } $ {datosres.hora} -->
<!-- a continuacion  muestra las reservas de esa fecha y hora-->

<!-- 
def com= reserva.comensales
	def cant = 0
	-->
	
	
<g:each in="${reservas}" var="reserva">
	<li>Usuario,   Cantidad</li>
	<li>${reserva.usuario} ${reserva.comensales}</li>
	println reservas.comensales.sum()
	<!--  sumar reserva.comensales -->
	
	<!--  cant=cant +  com-->
	
</g:each>

		<br>
	<!--  Total de REservas en esta fecha: $  {cant} -->
	<!-- return -->
</ul>
</body>
</html>