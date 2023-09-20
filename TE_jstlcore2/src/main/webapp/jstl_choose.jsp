<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSTL CHOOSE</title>
    </head>
    <body>
        <h1>Ejemplo del choose</h1>
        <p>Para visualizar el texto condiciones necesita agregar un parametro en la barra
        de direcciones con valores A, S, I ej. ?estado=A</p>
        <c:choose>
        <c:when test="${param.estado == 'A'}">
        <h4 style="color:blue">ACTIVO</h4>
        </c:when>
        <c:when test="${param.estado == 'S'}">
        <h4 style="color:red">SUSPENDIDO</h4>
        </c:when>
        <c:when test="${param.estado == 'I'}">
        <h4 style="color:green">INACTIVO</h4>
        </c:when>
        <c:otherwise>
            <p>***Sin Estado***</p>
        </c:otherwise>
        </c:choose>
            
            <a href="index.jsp">Volver</a>
   
    </body>
</html>
