<!DOCTYPE html="pt-br">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title> Cálculo da área de um trapézio</title>
        <link rel="stylesheet" href="styles.css">
	</head>
	<body>
        <%
            int intBaseMenor, intBaseMaior, intAltura, intArea;
            intBaseMenor = Integer.parseInt(request.getParameter("base_menor"));
            intBaseMaior = Integer.parseInt(request.getParameter("base_maior"));
            intAltura = Integer.parseInt(request.getParameter("altura"));
            intArea = ((intBaseMenor + intBaseMaior)*intAltura)/2;
        %>	

        <div class="heading">
            <h1 class="f-anton" style="text-align: center;">Cálculo da área de um Trapézio </h1>
        </div>

        <div class="container">
            <h2 class="f-anton" style="color: white">Valor da área do trapézio: <%= intArea %></h2>
        </div>

	</body>
</html>