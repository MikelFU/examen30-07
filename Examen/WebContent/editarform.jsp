<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Editar Libro</title>
</head>
<body>
	<%@page import="dao.LibroDAO, modelo.Libro"%>

	<%
		String id = request.getParameter("id");
		Libro libro = LibroDAO.getRecordById(Integer.parseInt(id));
	%>

	<h1>Editar Libro</h1>
	<form action="edituser.jsp" method="post">
		<input type="hidden" name="id" value="<%=libro.getId()%>" />
		<table>
			<tr>
				<td>Titulo:</td>
				<td><input type="text" name="titulo" value="<%=libro.getTitulo()%>" /></td>
			</tr>
			<tr>
				<td>Autor:</td>
				<td><input type="text" name="autor"
					value="<%=libro.getAutor()%>" /></td>
			</tr>
			<tr>
				<td>Precio:</td>
				<td><input type="text" name="precio" value="<%=libro.getPrecio()%>" /></td>
			</tr>
						<tr>
				<td>Descuento:</td>
				<td><input type="text" name="descuento" value="<%=libro.getDescuento()%>" /></td>
			</tr>
						<tr>
				<td>Precio Final:</td>
				<td><input type="text" name="preciofinal" value="<%=libro.getPrecioFinal()%>" /></td>
			<tr>
				<td colspan="2"><input type="submit" value="Editar Libro" /></td>
			</tr>
		</table>
	</form>

</body>
</html>