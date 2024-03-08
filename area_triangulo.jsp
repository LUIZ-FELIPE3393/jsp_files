<!DOCTYPE html="pt-br">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title> Cálculo da área do Triângulo</title>

        <link rel="stylesheet" href="styles.css">
	</head>
	<body>
        <div class="heading">
            <h1 class="f-anton" style="text-align: center;">Cálculo da área de um Triângulo </h1>
        </div>
        <%
            int intLargura, intAltura, intArea = 0;

            if(request.getParameter("fldAltura") != null)
                intAltura =  Integer.parseInt(request.getParameter("fldAltura"));
            else
                intAltura = 0;
            
            if(request.getParameter("fldLargura") != null)
                intLargura =  Integer.parseInt(request.getParameter("fldLargura"));
            else
                intLargura = 0;
            
            if((intAltura != 0)&&(intLargura != 0))
               intArea = (intLargura*intAltura)/2;
        %>	
        <div class="container">
            <h2 class="f-anton" style="color: white">Valor da área do triângulo: <%= intArea %></h2>
        </div>
	</body>
</html>