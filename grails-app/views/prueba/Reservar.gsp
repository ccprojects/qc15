<!doctype html>
<html>
<head>
	<title>Datos de la  Reserva </title>
	
	<!----> 
	
	
</head>
<body>


<!--  <form action="demo_form.asp"> -->
<g:form action="BuscarDisponib">
<h3>Reservar</h3>
<h4>Por favor, Seleccione Fecha y Hora de Su Reserva <p> y luego buscar para ver Disponibilidad de Rservas</h4>
<br>

<!-- <p>Click the "Submit" button and the form-data will be sent to a page on the server called "demo_form.asp".</p> -->

Restaurante:  ${restaurants.id} ${restaurants.restaurante}, capacidad del local: ${restaurants.capacidad} personas.
<br>Barrio: ${restaurants.barrio}

<br><br>


Dia: <input type="date" name="fechaRes" value=""><br>
<!--  <br>
 Hora: <input type="integer" name="horaRes" value=[20..23]><br> -->

<br>
Hora: <select name="horaRes">
  <option value="20">20</option>
  <option value="21">21</option>
  <option value="22">22</option>
  <option value="23">23</option>
  
</select>
<br>
Comensales: <input type="integer" name="Com" value=""><br>
<br>

<g:actionSubmit name="submit" value="Buscar Disponibilidad" />

</g:form>

</body>
</html>