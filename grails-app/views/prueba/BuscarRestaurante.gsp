<!doctype html>
<html>
<head>
	<title>Seleccione Restaurante para Reserva </title>
	
	<!--  Muestra lista de restaurantes segùn especialidad seleccionada 04_05 --> 
	
</head>
<body>
<g:form action="muestra" id="1"> 
 
 <!-- 
		${restaurants.restaurante}
		${restaurants.especialidad}
		${restaurants.calle_nro }
		${restaurants.barrio }
		
		AGREGART TITULO A LAS COLS, AGREGAR BOTON RESERVAR -->
	
		<table border="1">
		<tr><td>Restaurante</td><td>Especialidad</td><td>Direccion</td><td>Barrio</td><td>Capacidad</td><td>id</td><td>Accion</td></tr>
		
	<g:each in="${restaurants}" var="thisRestaurants">
		<tr>
			<td>${thisRestaurants.restaurante}</td>
			<td>${thisRestaurants.especialidad}</td>
			<td>${thisRestaurants.calle_nro}</td>
			<td>${thisRestaurants.barrio}</td>
			<td>${thisRestaurants.capacidad}</td>
			<td>${thisRestaurants.id}</td>
			
			<td><g:submitButton name="reservar" value="Reservar"/></td>
			
		
		
		</tr>
	</g:each>
</table>
</g:form>



</body>
</html>

