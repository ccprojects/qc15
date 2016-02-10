<!doctype html>
<html>
<head>
	<title>Datos de la Reserva </title>
	
	<!----> 
	
	
</head>
<body>
<g:form   action ="BuscaReservas" >   <!-- method="GET" -->
<h4>Datos de su reserva:</h4>
<strong>Codigo Restaurante:</strong> ${restauran.id }
<br>
<strong>Nombre Restaurante:</strong> ${restauran.restaurante }

<!-- 
RESTAURANTE:$ {temp.id}
 

Tamb sale!!: $ {restaurants.id}

$ {restaurants.restaurante}

$ {restaurants.barrio}
-->
<br>
<strong>Comensales:</strong> ${params.comensales} personas
<!-- fecha: $ {params.fecha} -->
<br><strong>Fecha:</strong> ${params.fecha}
<br>
<strong>Hora:</strong> ${params.hora}
<br>
<strong>Usuario:</strong> ${params.usuario}
<br><br>

<g:actionSubmit name="submit" value="BuscaReservas" />

</g:form>
</body>

</html>