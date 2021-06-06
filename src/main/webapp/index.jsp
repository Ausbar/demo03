<%@ include file="/WEB-INF/jsp/include.jsp" %>
<%@ include file="/WEB-INF/jsp/manageSession.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Demo Ticketeo- Let's Workeat!</title>
<link rel="stylesheet" href="css/mystyles.css">
<!-- Descargar Angular JS en local -->
<script type="text/javascript" src="javascript/angular.min.js"></script>
<script type="text/javascript" src="javascript/angular-route.js"></script>
</head>
<body ng-app="demo-alejandra" ng-controller="control">
<!-- Enlaces a las vistas que se mostraran en ng-view (2) -->
<ul>
 <li><a href="#!/">Main</a></li> 
 <li><a href="#!loginRestaurant">I am Restaurant</a></li> 
 <li><a href="#!loginWorkerEnterprise">I am Worker</a></li>
 <li><a href="#!loginEnterprise">I am Enterprise</a></li>
</ul>
<h1>Demo Ticketeo</h1>
<div ng-view></div><!-- <div class="ng-view"></div> -->
<h6><a href="tests.jsp">Tests</a></h6>
<script>
/* Tiene que coincidir "demo-alejandra" con el atributo ng-app (1) */
var app=angular.module("demo-alejandra", ["ngRoute"]);
app.controller('control',
	function($scope, $http) /* (2) */
	{}
);
app.config(function($routeProvider)
{
	/* aqui se declaran las vistas y las URL de las mismas (2) */
	$routeProvider
	.when("/", {
		templateUrl: "angular/main.html"
	})
	.when("/loginRestaurant", {
		templateUrl: "angular/loginRestaurant.html"
	})
	.when("/loginWorkerEnterprise", {
		templateUrl: "angular/loginWorkerEnterprise.html"
	})
	.when("/loginEnterprise", {
		templateUrl: "angular/loginEnterprise.html"
	});
});
</script>
</body>
</html>