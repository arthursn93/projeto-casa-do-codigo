<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
    <%@ taglib uri="http://www.springframework.org/security/tags" prefix="security"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Livros de Java, Android, iPhone, Ruby, PHP e muito mais - Casa do Código</title>

<c:url value="/resources/css" var="cssPath"/>
<link rel="stylesheet" href="${cssPath}/bootstrap.css">
<link rel="stylesheet" href="${cssPath}/bootstrap.min.css">

<style type="text/css">
	html, body{
		margin: 0px;
		padding: 0px;
	}
</style>

</head>
<body>

	<nav class="navbar navbar-expand-lg navbar-light bg-light">
	  <a class="navbar-brand" href="${s:mvcUrl('HC#index').build() }">Casa do Código</a>
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
	      <li class="nav-item">
	        <a class="nav-link" href="<c:url value="/logout"/>">Sair</a>
	      </li>
	    </ul>
	    <ul class="nav navbar-nav navbar-right">
	    	<li><a href="#">
				<security:authentication property="principal" var="usuario"/>
				Usuário: ${usuario.username }
			</a></li>
	    </ul>
	  </div>
	</nav>
	
	<div class="container">
		<h1 align="center">Lista de Produtos</h1>
		<div>${sucesso }</div>
		<div>${falha }</div>
		<table class="table table-bordered table-striped table-hover">
			<tr>
				<th>Título</th>
				<th>Descrição</th>
				<th>Preços</th>
				<th>Páginas</th>
			</tr>
			<c:forEach items="${produtos }" var="produto" >
				<tr>
					<td><a href="${s:mvcUrl('PC#detalhe').arg(0,produto.id).build()}" >${produto.titulo }</a></td>
					<td>${produto.descricao }</td>
					<td>${produto.precos }</td>
					<td>${produto.paginas }</td>
				</tr>
			</c:forEach>	
		</table>
	</div>
</body>
</html>