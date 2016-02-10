<!doctype html>
<html>
<head>
	<title>Datos de la  Reserva </title>
	
	<!----> 
	
</head>
<body>

<form action="demo_form.asp">
<br>
<h4>Por favor, Seleccione Fecha y Hora de Su Reserva <p> y luego buscar para ver Disponibilidad</h4>
<br>

Restaurante: ${rest.restaurante}

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
Comensales: <input type="integer" name="Cant" value=""><br>
<br>
<input type="submit" value="Buscar">
<br><g:actionSubmit value="Buscar Disponibilidad" action="BuscarDisponib"/><br>
</form>

<p>Click the "Submit" button and the form-data will be sent to a page on the server called "demo_form.asp".</p>
</body>