<!DOCTYPE html="pt-br">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title> Cálculo da área da Circulo</title>

		<link rel="stylesheet" href="styles.css">
	</head>
	<body>
		<div class="heading">
            <h1 class="f-anton" style="text-align: center;">Cálculo da área de uma Circunferência</h1>
        </div>
        <%
            double dblRaio, pi = 3.14151692, dblArea = 0;

            if(request.getParameter("fldRaio") != null)
                dblRaio = Double.parseDouble(request.getParameter("fldRaio"));
			else
				dblRaio = 0;
            dblArea = pi*dblRaio*dblRaio;
        %>	
		<div class="container">
        	<h2 class="f-anton" style="color: white">Valor da área do círculo: <%= dblArea %></h2>
		</div>
	</body>
</html>