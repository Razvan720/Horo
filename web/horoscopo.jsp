<%-- 
    Document   : horoscopo
    Created on : 26-feb-2020, 10:51:12
    Author     : Xenon
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
        <title>JSP Page</title>
    </head>
    <body>
        <form action="horoscopo" method="POST">
            <label for="nombre">Nombre: </label>
            <input type="text" name="nombre">

            <% ArrayList<String> meses = (ArrayList<String>) request.getAttribute("meses");%>
            <% ArrayList<String> dias = (ArrayList<String>) request.getAttribute("dias");%>

            <label for="mes">Mes: </label>   
            <select name="mes">
                <% for (int i = 0; i < meses.size(); i++) {%>
                <option value="<%= meses.get(i)%>"><%= meses.get(i)%></option>
                <% }%>
            </select>

            <label for="dia">Dia: </label>  
            <select name="dia">
                <% for (int i = 0; i < dias.size(); i++) {%>
                <option value="<%= dias.get(i)%>"><%= dias.get(i)%></option>
                <% }%>
            </select>

            <button type="submit">Enviar </button>

        </form>

        <% String signo = (String) request.getAttribute("signo");
            if (signo != null) {%>
        <h2>Eres del signo: <%= signo%></h2>
        <% }%>
    </body>
</html>