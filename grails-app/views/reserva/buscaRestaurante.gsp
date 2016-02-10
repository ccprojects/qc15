<!doctype html>
<html>
<head>
	<title>Seleccione Restaurante para Reserva </title>
	
	<!--  Muestra lista de restaurantes segùn especialidad seleccionada 04_05 --> 
	
</head>
<body>

<table border ="1">
       <tr>
              <td>Restaurante</td>
              <td>Especialidad</td>
              <td>Telefono</td>
              <td>email</td>
              <td>Telefono</td>
              <td>Calle_nro</td>
              <td>Barrio</td>
              <td>Capacidad</td>
              <td>Reservados</td>
              <td>Disponibles</td>
              <td>Accion</td>
          </tr>
	<g:each in ="${restaurantes}" var="thisRestaurante">
		<tr>
			<td>${thisRestaurante.Restaurante}</td>
			<td>${thisRestaurante.Especialidad}</td>
			<td>${thisRestaurante.Telefono}</td>
			<td>${thisRestaurante.email}</td>
			<td>${thisRestaurante.Calle_nro}</td>
			<td>${thisRestaurante.Barrio}</td>
			<td>${thisRestaurante.Capacidad}</td>
			<td>${thisRestaurante.Reservados}</td>
			<td>${thisRestaurante.Disponibles}</td>
			<td><a href= "localhost:8080/QC15/Reserva/buscaDisponibilidad">Reservar</a></td>
			
		</tr>
	</g:each>
</table>



<!--  recibir seleccion en una tabla y agregar columna reservar para que el usuario agregue los datos de la reserva -->

</body>
</html>

