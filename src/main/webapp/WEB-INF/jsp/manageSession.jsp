<%
	// Si la sesion esta abierta, redirigimos a la vista Academy (**).
	String view=(String)request.getSession().getAttribute("view");
	System.out.println("session[view]="+view);
	if (null!=view)
	{
		%><c:redirect url="<%= view %>"/><%
	}
	// En otro caso, mostramos la pagina por defecto (index.jsp).
%>