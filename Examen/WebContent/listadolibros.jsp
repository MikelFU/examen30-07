<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Ver Libros</title>
</head>
<body>

	<%@page import="dao.LibroDAO, modelo.*,java.util.*"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	<h1>Listado de Libros</h1>

	<%
		List<Libro> list = LibroDAO.getAllRecords();
		request.setAttribute("list", list);
	%>

	<div>
		<c:forEach items="${list}" var="u">
			<div class="libro">
				<div><img src="${u.getImagenURL()}"></div>
				<div class="titulo">${u.getTitulo()}</div>
				<div class="autor">${u.getAutor()}</div>
				<div class="numeros">
					<div>${u.getPrecio()}</div>
					<div>${u.getDescuento()}</div>
					<div>${u.getPrecioFinal()}</div>
				</div>
				<div>
					<a href="editarform.jsp?id=${u.getId()}">Editar Libro</a>
					<a href="borrarlibro.jsp?id=${u.getId()}">Borrar Libro</a>
				</div>
			</div>
		</c:forEach>
	</div>
	<br />
	<a href="addlibroform.jsp">Añadir nuevo libro</a>

</body>
</html>