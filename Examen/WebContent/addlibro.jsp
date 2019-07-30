<%@page import="dao.LibroDAO"%>
<jsp:useBean id="u" class="modelo.Libro"></jsp:useBean>
<jsp:setProperty property="*" name="u" />

<%
	int i = LibroDAO.save(u);
	if (i > 0) {
		response.sendRedirect("addlibro-exito.jsp");
	} else {
		response.sendRedirect("addlibro-error.jsp");
	}
%>