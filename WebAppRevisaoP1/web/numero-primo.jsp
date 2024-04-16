<%-- 
    Document   : numero-primo
    Created on : 16 de abr. de 2024, 14:43:01
    Author     : Fatec
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String errorMessage = null;
    int n1=0, c=0;
    try{
        if(request.getParameter("subPrimo")!=null){
           n1 = Integer.parseInt(request.getParameter("primo"));
           c = n1 + n1;
        }
    }catch(Exception ex){
        errorMessage = ex.getMessage();
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <h2>Número Primo</h2>
        <p>Descubra se o número é primo!</p>
        <form>
            <input type="number" name="primo" placeholder="Digite o número"/>
            <input type="submit" name="subPrimo" valeu="Enviar"/>
        </form>
        <br><br>
        <% if(errorMessage==null){ %>
        <div>
            <%= n1%>
        </div>
        <% } %>
    </body>
</html>
