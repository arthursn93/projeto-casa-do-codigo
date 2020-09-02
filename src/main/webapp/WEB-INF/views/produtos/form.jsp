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

	<nav class="navbar navbar-expand-lg navbar-light bg-light">
	  <a class="navbar-brand" href="${s:mvcUrl('HC#index').build() }">Casa do C�digo</a>
	  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
	    <span class="navbar-toggler-icon"></span>
	  </button>
	  <div class="collapse navbar-collapse" id="navbarNav">
	    <ul class="navbar-nav">
	      <li class="nav-item active">
	        <a class="nav-link" href="${s:mvcUrl('PC#listar').build() }">Lista de Produtos</a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="${s:mvcUrl('PC#form').build() }">Cadastro de Produtos</a>
	      </li>
	    </ul>
	  </div>
	</nav>
	
	<div class="container">
	<h1>Cadastro de Produtos</h1>
	<form:form action="${s:mvcUrl('PC#gravar').build()}" method="POST" 
		commandName="produto" enctype="multipart/form-data">
		<div class="form-group">
			<label>T�tulo: </label> 
			<form:input path="titulo" cssClass="form-control"/>
			<form:errors path="titulo" />
		</div>
		<div class="form-group">
			<label>Descri��o: </label>	
			<form:textarea path="descricao" cssClass="form-control"/>		
			<form:errors path="descricao" />
		</div>
		<div class="form-group">
			<label>P�ginas: </label> 
			<form:input path="paginas" cssClass="form-control"/>
			<form:errors path="paginas" />
		</div>
		<div class="form-group">
			<label>Data de Lan�amento: </label> 
			<form:input path="dataLancamento" cssClass="form-control" />
			<form:errors path="dataLancamento" />
		</div>
		<c:forEach items="${tipos}" var="tipoPreco" varStatus="status">
			<div class="form-group">
				<label>${tipoPreco}</label> 
				<form:input path="precos[${status.index}].valor" cssClass="form-control"/> 
				<form:hidden path="precos[${status.index}].tipo" value="${tipoPreco }" />
			</div>
		</c:forEach>
		<div class="form-group">
			<label>Sum�rio</label>
			<input name="sumario" type="file" class="form-control"/>
		</div>
		<button type="submit" class="btn btn-primary">Cadastrar</button>
	</form:form>
	</div>
</body>
</html>