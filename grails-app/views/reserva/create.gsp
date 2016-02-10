<!doctype html>
<html>
<head>
	<title>Seleccione Tipo de Comida</title>

</head>
<body>

<form action="localhost:8081/QC15/Reserva/buscaRestaurante" method= GET>
<h2>Qué tipo de comida desea</h2>
<p>
<h3>Seleccione Especialidad:</h3>
</p>
<label for="tipo">Especialidad:</label>
<select>
  <option value="italiana">italiana</option>
  <option value="china">china</option>
  <option value="mexicana">mexicana</option>
  <option value="vegetariana" selected>vegetariana</option>
  <option value="parrillada" selected>parrillada</option>
</select>

<input type="submit" value= Enviar>


</body>
</html>