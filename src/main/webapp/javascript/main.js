/**
 * 
 */

function GoToLogin()
{
	location.href='./';
}

function Logout()
{
	location.href='./logout';
}

function TestXHR(i)
{
	//alert(i);
	var xhr=new XMLHttpRequest();
	xhr.onreadystatechange=function()
	{
		if ((this.readyState==4)&&(this.status==200))
		{
			alert("DEMO LISTADO\n"+
				"status: "+this.status+"\n"+
				"respuesta: "+this.responseText);
		}
		if (0==i) // ** temporal: usar JSON/status
		{
			GoToLogin();
		}
	}
	switch (i)
	{
		case 0:
			xhr.open("GET", "restaurant?op=logout", true);
			break;
		case 1:
			xhr.open("GET", "hello.json", true);
			break;
		case 2:
			xhr.open("GET", "bye.json", true);
			break;
		case 3:
			xhr.open("POST", "restaurant?op=hire", true);
			break;
		case 4:
			xhr.open("GET", "restaurant?op=searchEnterprise", true);
			break;
		case 5:
			xhr.open("POST", "restaurant?op=createMenu", true);
			break;
		case 6:
			xhr.open("POST", "restaurant?op=modifyMenu", true);
			break;
		case 7:
			xhr.open("POST", "restaurant?op=deleteMenu", true);
			break;
		case 8:
			xhr.open("GET", "restaurant?op=searchMenus", true);
			break;
		case 9:
			xhr.open("GET", "workerEnterprise?op=searchMenus", true);
			break;
		case 10:
			xhr.open("POST", "workerEnterprise?op=purchaseMenu", true);
			break;
		case 11:
			xhr.open("GET", "workerEnterprise?op=purchaseHistory", true);
			break;
	}
	xhr.send();
}