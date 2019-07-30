<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Libros</title>
<link href="css/index.css" rel="stylesheet" type="text/css">
</head>
<body>
	<h1>Gestor de libros</h1>
	<h5>Librería</h5>
	<a href="addlibroform.jsp">Añadir un nuevo libro<i
		class="fas fa-plus"></i></a>
	<a href="listadolibros.jsp">Detalle listado de libros<i
		class="fas fa-list"></i></a>
	<div class="libros">
		<div class="libro">
			<div class="imagen">
				<img src="imagenes/futboli1.jpg">
			</div>
			<div class="titulo">Los Futbolisimos: El misterio del jugador
				numero 13</div>
			<div class="autor">Roberto Santiago</div>
			<div class="numeros">
				<div class="descontado">11.35€</div>
				<div class="tachado">11.95€</div>
				<div class="descuento">-5%</div>
			</div>
		</div>
		<div class="libro">
			<div class="imagen">
				<img src="imagenes/futboli2.jpg">
			</div>
			<div class="titulo">Los Futbolisimos: El misterio del obelisco
				mágico</div>
			<div class="autor">Roberto Santiago</div>
			<div class="numeros">
				<div class="descontado">11.35€</div>
				<div class="tachado">11.95€</div>
				<div class="descuento">-5%</div>
			</div>
		</div>
		<div class="libro">
			<div class="imagen">
				<img src="imagenes/futboli3.jpg">
			</div>
			<div class="titulo">Los Futbolisimos: El misterio del día de
				los inocentes</div>
			<div class="autor">Roberto Santiago</div>
			<div class="numeros">
				<div class="descontado">11.35€</div>
				<div class="tachado">11.95€</div>
				<div class="descuento">-5%</div>
			</div>
		</div>
	</div>
	<!-- 
	<div>
		<c:forEach items="${list}" var="u">
			<div class="libro">
				<div class="imagen">
					<img src="${u.getImagenURL()}">
				</div>
				<div class="titulo">${u.getTitulo()}</div>
				<div class="autor">${u.getAutor()}</div>
				<div class="numeros">
					<div class="descontado">${u.getPrecioFinal()}</div>
					<div class="tachado">${u.getPrecio()}</div>
					<div class="descuento">${u.getDescuento()}</div>
				</div>
		</c:forEach>
	</div>
	 -->
</body>
</html>