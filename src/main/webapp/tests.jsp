<!DOCTYPE html>
<html>
<head>
	<title>Demo 03 Ticketeo</title>
	<script type="text/javascript" src="javascript/main.js"></script>
</head>
<body>
	<h1>Demo 03  </h1>
	<p>It Works!</p>
	<p><a href="hello.json">hello.json</a></p>
	<p><a href="#1" onclick="TestXHR(1);">XHR test Hello</a></p>
	<p><a href="#2" onclick="TestXHR(2);">XHR test Bye</a></p>
	<p>restaurant?op=hire:
		<a href="#3" onclick="TestXHR(3);">XHR</a> |
		<a href="restaurant?op=hire">Link</a>
	</p>
	<p>restaurant?op=searchEnterprise:
		<a href="#4" onclick="TestXHR(4);">XHR</a> |
		<a href="restaurant?op=searchEnterprise">Link</a>
	</p>
	<p>restaurant?op=createMenu:
		<a href="#5" onclick="TestXHR(5);">XHR</a>
	</p>
	<p>restaurant?op=modifyMenu:
		<a href="#6" onclick="TestXHR(6);">XHR</a>
	</p>
	<p>restaurant?op=deleteCourse:
		<a href="#7" onclick="TestXHR(7);">XHR</a>
	</p>
	<p>restaurant?op=searchMenus:
		<a href="#8" onclick="TestXHR(8);">XHR</a> |
		<a href="restaurant?op=searchMenus">Link</a>
	</p>
</body>
</html>