<!DOCTYPE html="pt-br">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title> Cálculo de Áreas</title>
        <link rel="stylesheet" href="styles.css">
	</head>
	<body>
       <%
            int intFiguraGeometrica;
            String strTituloFormulario, strFormulario;

            if(request.getParameter("TipoFigura") !=  null)
                intFiguraGeometrica = Integer.parseInt(request.getParameter("TipoFigura"));
            else 
                intFiguraGeometrica = 0;

            if(intFiguraGeometrica == 1){
                strTituloFormulario = "Cálculo da área de um Retângulo";
                strFormulario = "<form name='formCalculoAreasFiguras' method='get' action='area_retangulo.jsp'>";
            }else if(intFiguraGeometrica == 2){
                strTituloFormulario = "Cálculo da área de uma Circunferência";
                strFormulario = "<form name='formCalculoAreasFiguras' method='get' action='area_circunferencia.jsp'>";
            }else if(intFiguraGeometrica == 3){
                strTituloFormulario = "Cálculo da área de um Triângulo";
                strFormulario = "<form name='formCalculoAreasFiguras' method='get' action='area_triangulo.jsp'>";
            }else{
                strTituloFormulario ="**Erro**";
                strFormulario = "<form name='formCalculoAreasFiguras'>" ;
            }
            out.println(strFormulario);
       %>
        <div class="heading">
            <h1 style="text-align: center;"> <%= strTituloFormulario  %></h2>
        </div>

        <div class="container">
            <%
            if((intFiguraGeometrica == 1)||(intFiguraGeometrica == 3)){
                out.println("<p> Digite o valor da altura:");
                out.println("<input class='input-text' name='fldAltura' type='text' size='8' maxlength='8'/>");
                out.println("</p>");

                out.println("<p> Digite o valor da largura:");
                out.println("<input class='input-text' name='fldLargura' type='text' size='8' maxlength='8'/>");
                out.println("</p>");
            }else if(intFiguraGeometrica == 2){
                out.println("<p> Digite o valor o raio da circunferência:");
                out.println("<input class='input-text' name='fldRaio' type='text' size='8' maxlength='8'/>");
                out.println("</p>");
            }else{
                out.println("<h2>Deve ser especificado o tipo de figura</h2>");
            }
            %>
            <p>
                <input class="input-submit" type="submit" name="btnCalcular" value="Calcular"/>
            </p>
        </div>
           
    </body>
</html>