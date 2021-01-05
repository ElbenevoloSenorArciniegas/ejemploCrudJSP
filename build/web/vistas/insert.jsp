<%-- 
    Document   : insert
    Created on : 05-ene-2021, 11:49:01
    Author     : El benévolo señor Arciniegas <Anarchy Framework>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div>
            <h3>Angregar persona:</h3>
            <form action="Controlador" >
                <input type="text" name="txtDni"/>
                <input type="text" name="txtNombres"/>
                <input type="submit" name="action" value="Agregar"/>
            </form>
        </div>
    </body>
</html>
