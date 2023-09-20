
<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.modelo.Persona"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            if (session.getAttribute("listaper") == null) {
                ArrayList<Persona> lista = new ArrayList<Persona>();
                //Agregamos lista a la coleccion
                lista.add(new Persona(1, "Freddy Condori", "72012345", "fredy@hotmail.es"));
                lista.add(new Persona(2, "German Martinez", "70612345", "gmartinez@yahoo.es"));
                lista.add(new Persona(1, "Noel Choque", "79111109", "papnoel@yahoo.es"));
                //colocamos la lista como un atributo de session
                session.setAttribute("listaper", lista);
            }
        %>
        <h1>Ejemplos de JSTL Core</h1>
        <ul>
            <li><a href="jstl_if.jsp">Ejemolo del If</a> </li>
            <li><a href="jstl_choose.jsp">Probando en choose</a> </li>
            <li><a href="jstl_foreach.jsp">Recoriendo la coleccion con Foreach</a> </li>

        </ul>

    </body>
</html>
