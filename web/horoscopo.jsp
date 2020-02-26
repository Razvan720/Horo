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

        <link rel="stylesheet" type="text/css" href="style.css">

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous">
        </script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous">
        </script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous">
        </script>
        <title>JSP Page</title>
    </head>

    <body>
        <div class="todo">
            <div class="titulo"> Horóscopo </div>

            <form action="horoscopo" method="POST" class="cont-form">

				<% ArrayList<String> meses = (ArrayList<String>) request.getAttribute("meses");
					ArrayList<String> dias = (ArrayList<String>) request.getAttribute("dias");
					
					String dia = (String) request.getAttribute("dia");
					String mes = (String) request.getAttribute("mes");
					String nombre = (String) request.getAttribute("nombre");
				%>

				<% if (nombre == null) {
						nombre = "";
					}
					if (dia == null){
						dia = "1";
					}
					if (mes == null){
						mes = "1";
					}
				%>

                <input type="text" placeholder="Nombre" name="nombre" value="<%= nombre%>"class="in-nombre">

                <div class="cont-fechas">
                    <div class="cont-dia">
                        <label for="dia">Dia </label>
                        <select name="dia" class="in-select">
							
                            <% for (int i = 0; i < dias.size(); i++) {
								String cadenaSelected = "";	
								if (dia.equals(dias.get(i))) {
										cadenaSelected = "selected";
									}
							%>
                            <option value="<%= dias.get(i)%>"  <%= cadenaSelected %> ><%= dias.get(i)%></option>
                            <% }%>
							
                        </select>
                    </div>
                    <div class="cont-mes">
                        <label for="mes">Mes </label>
                        <select name="mes" class="in-select">
                            <% for (int i = 0; i < meses.size(); i++) {
								String cadenaSelected = "";	
								if (mes.equals(meses.get(i))) {
										cadenaSelected = "selected";
									}
							%>
                            <option value="<%= meses.get(i)%>" <%= cadenaSelected %> ><%= meses.get(i)%></option>
                            <% }%>
                        </select>
                    </div>


                </div>

                <button type="submit" class="btn-enviar">Enviar </button>

            </form>

            <div class="cont-signo">
                <% String signo = (String) request.getAttribute("signo");
					if (signo != null) {%>
                <h2> Eres <%= signo%> </h2>
                <img src="imagenes/<%= signo%>.png" class="img-signo"> 
                <% }%>
            </div>




        </div>
    </body>

</html>