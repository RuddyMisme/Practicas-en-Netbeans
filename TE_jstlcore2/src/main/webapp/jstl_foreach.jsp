<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
--
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSTL FOREACH</title>
    </head>
    <body>
        <h1>Ejemplo de ForEach</h1>
        <p>los elementos de la coleccion son:</p>
        <table border='1'>
            <tr style="color:red">
                <th>Id</th>
                <th>Nombre</th>
                <th>Telefono</th>
                <th>Correo</th>

            </tr>
            <c:forEach var="item" items="${sessionScope.listaper}">
                <tr>
                    <td style="color:red;">${item.id}</td>
                    <td style="color:chocolate">${item.nombre}</td>
                    <td style="color:springgreen">${item.telefono}</td>
                    <td style="color:aqua">${item.correo}</td>
                </tr>
            </c:forEach>
        </table>
        <a href="index.jsp">Volver</a>

    </body>
</html>
