<%@page import="dao.LibroDAO"%>
<jsp:useBean id="u" class="modelo.Libro"></jsp:useBean>
<jsp:setProperty property="*" name="u" />

<%
	int i = LibroDAO.update(u);
	response.sendRedirect("listadolibros.jsp");
%>