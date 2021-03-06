<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Livros de Java, Android, iPhone, Ruby, PHP e muito mais - Casa do C�digo</title>

<c:url value="/resources/css" var="cssPath"/>
<link rel="stylesheet" href="${cssPath}/bootstrap.css">
<link rel="stylesheet" href="${cssPath}/bootstrap.min.css">

<style type="text/css">

	html, body{
		margin: 0px;
		padding: 0px;
	}
	body .navbar{
	padding: 0px 0px;
	}
</style>		

</head>
<body>
	
	<div class="container">
	<h1>Login - Casa do C�digo</h1>
	<form:form servletRelativeAction="/login" method="POST">
		<div class="form-group">
			<label>E-mail: </label> 
			<input name="username" type="text" class="form-control"/>
		</div>
		<div class="form-group">
			<label>Senha: </label>	
			<input name="password" type="password" type="text" class="form-control"/>
		</div>
		<button type="submit" class="btn btn-primary">Logar</button>
	</form:form>
	</div>
</body>
</html>