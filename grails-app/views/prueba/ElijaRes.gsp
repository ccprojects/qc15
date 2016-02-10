<!doctype html>
<html>
<head>
	<title>Seleccione Restaurante para Reserva </title>
	
	<!--  Muestra lista de restaurantes segùn especialidad seleccionada 04_05 --> 
	
</head>
<body>
<g:form  method="GET" action = "enviar" >
<!-- action = "Enviar" id="Cod" --> 
 	<br><h3>Datos de Restaurantes:</h3>
		<table border="1">
		<tr><td>CODIGO</td><td>Restaurante</td><td>Especialidad</td><td>Direccion</td><td>Barrio</td><td>Capacidad</td></tr>
		
	<g:each in="${restaurants}" var="thisRestaurants">
		<tr>
			<td>${thisRestaurants.id}</td>
			<td>${thisRestaurants.restaurante}</td>
			<td>${thisRestaurants.especialidad}</td>
			<td>${thisRestaurants.calle_nro}</td>
			<td>${thisRestaurants.barrio}</td>
			<td>${thisRestaurants.capacidad}</td>
			
			
			<!--  <td><g:submitButton name="reservar" value="Reservar"/></td>  -->
			
		
		
		</tr>
	</g:each>
</table>
<br><br>
<h4>Ingrese los datos de su Reserva:</h4>

Código Restaurante: <input type="integer" name="id" value=""><br><br>
Dia: <input type="date" name="fecha" value=""><br>
<!--  <br>
 Hora: <input type="integer" name="hora" value=[20..23]><br> -->

</br>
Hora: <select name="hora">
  <option value="20">20</option>
  <option value="21">21</option>
  <option value="22">22</option>
  <option value="23">23</option>
  
</select>
<br>
<br>
Comensales: <input type="integer" name="comensales" value=""><br>
<br>
email: <input type="integer" name="usuario" value=""><br>
</br>
<br>

<g:actionSubmit name="submit" value="Enviar" />
</br>
</g:form>



</body>
</html>