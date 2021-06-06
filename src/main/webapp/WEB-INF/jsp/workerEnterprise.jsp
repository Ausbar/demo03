<%@ include file="/WEB-INF/jsp/include.jsp" %>
<%
	String cuerpo=request.getReader().readLine();
	String paramOp=request.getParameter("op");
	
	System.out.println("** workerEnterprise.jsp: **");
	
	if (null==request.getSession().getAttribute("view"))
	{
		%>{"error":"invalidSession"}<%
		return;
	}

	if (null==paramOp)
	{
		%>{"error":null}<%
	}
	else if (paramOp.equals("searchMenus"))
	{
		%>{"results":[
		{"restaurantId":1,"restaurantName":"Inners","menuId":1,"menuName":"Ricas Vacaciones","startDate":"20210601","endDate":"20211231","price":250.0},
		{"restaurantId":1,"restaurantName":"Ambiente","menuId":2,"menuName":"Java con comida entra","startDate":"20210101","endDate":"20220630","price":199.95},
		{"restaurant":1,"restaurantName":"Purlepaus","menuId":3,"menuName":"DAW Tapas","startDate":"20210601","endDate":"20230601","price":316.50},
		{"restaurant":1,"restaurantName":"Moccador","menuId":4,"menuName":"Menu del Desarrollador","startDate":"20210115","endDate":"20211215","price":89.95}
		]}<%
	}
	else if (paramOp.equals("purchaseMenu"))
	{
		%>{"id":1}<%
	}
	else if (paramOp.equals("purchaseHistory"))
	{
		%>{"results":[
		{"restaurantId":1,"restaurantName":"Example Restaurant","menuId":1,"menuName":"Ricas Vacaciones","startDate":"20210601","endDate":"20211231","price":250.0},
		{"restaurantId":1,"restaurantName":"Example Restaurant","menuId":4,"menuName":"Menu del Desarrolladora","startDate":"20210115","endDate":"20211215","price":89.95}
		]}<%
	}
	else
	{
		%>{"error":true}<%
	}
%>