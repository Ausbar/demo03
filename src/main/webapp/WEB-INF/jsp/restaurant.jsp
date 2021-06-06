<%@ include file="/WEB-INF/jsp/include.jsp" %>
<%
	String cuerpo=request.getReader().readLine();
	String paramOp=request.getParameter("op");
	
	System.out.println("** restaurant.jsp: **");
	
	if (null==request.getSession().getAttribute("view"))
	{
		%>{"error":"invalidSession"}<%
		return;
	}

	if (null==paramOp)
	{
		%>{"error":null}<%
	}
	else if (paramOp.equals("hire"))
	{
		// Devuelve una respuesta vacia con status 200
		// Alternativa (1): devolver {}
		%>{}<%
	}
	else if (paramOp.equals("searchEnterprise"))
	{
		%>{"results":[
		{"id":1,"name":"AXTODAS S.A","cif":"A00112233","address":"Calle Nomerindo S/N","phone":910555666},
		{"id":2,"name":"Developers S.L.","cif":"A00112244","address":"Parque Tecnologico Oeste","phone":910555777},
		{"id":3,"name":"MeLoSaKo","cif":"A00112255","address":"Plaza Conde de Diploma  S/N","phone":910555888},
		{"id":4,"name":"AprobaditOS S.A.","cif":"A00112266","address":"Av. del Esfuerzo S/N","phone":910555999},
		{"id":5,"name":"DVizrt ","cif":"A00112277","address":"Europastrasse S/N","phone":910555000}
		
		],"view":"<c:out value="${view}"/>"}<%
	}
	else if (paramOp.equals("createMenu"))
	{
		%>{"id":6}<%
	}
	else if (paramOp.equals("modifyMenu"))
	{
		// Alternativa (1)
		%>{}<%
	}
	else if (paramOp.equals("deleteMenu"))
	{
		// Alternativa (1)
		%>{}<%
	}
	else if (paramOp.equals("searchMenu"))
	{
		%>{"results":[
		{"id":1,"name":"Ricas Vacaciones","startDate":"20210601","endDate":"20211231","price":250.0},
		{"id":2,"name":"Java con comida entra","startDate":"20210101","endDate":"20220630","price":199.95},
		{"id":3,"name":"DAW Tapas","startDate":"20210601","endDate":"20230601","price":316.50},
		{"id":4,"name":"Menu del Desarrollador","startDate":"20210115","endDate":"20211215","price":89.95}
		],"view":"<c:out value="${view}"/>"/>"}<%
	}
	else
	{
		%>{"error":true}<%
	}
%>