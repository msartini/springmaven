
<%@page import="sun.org.mozilla.javascript.internal.ast.TryStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">


<%@page import="com.springproject.app.entities.Usuario"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%-- <%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
  --%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Bem Vindo a tela de cadastro do sistema</title>
</head>
 
<body class="cadastroUsuario " id="cadastroUsuario">
	<h1>Cadastro do sistema</h1>
	<form name="frmUsuario" action="adicionaUsuario" method="POST">
		Nome: <input type="text" name="nome"  value="${usuario.nome}" /><br />
		E-mail: <input type="text" name="email"  value="${usuario.email}" /><br />
		<button name="brnEnviar">Enviar</button>
		
		 
	</form>
		<!--SEGUNDA MANEIRA DE REQUES DE VALORES PARA FORMULARIO  -->
 
			
			
	 <form:form modelAttribute="usuario" action="adicionaUsuario">
          	<div>First name: <form:input path="nome"/></div>
          	<div>Email: <form:input path="email"/></div>
          
        				
          	<div><input type="submit" value="Submit"></input></div>
      </form:form>
     
</body>
</html>