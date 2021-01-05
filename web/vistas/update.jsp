<%-- 
    Document   : insert
    Created on : 05-ene-2021, 11:49:01
    Author     : El benévolo señor Arciniegas <Anarchy Framework>
--%>

<%@page import="DAO.PersonaDAO"%>
<%@page import="modelo.Persona"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div>
            <h3>Editar persona:</h3>
            <%
                int id = Integer.parseInt(request.getParameter("idPersona"));
                Persona persona = PersonaDAO.get(id);
            %>
            <form action="Controlador" >
                <input type="hidden" name="txtID" value="<%= id %>"/>
                <input type="text" name="txtDni" value="<%= persona.getDNI()%>"/>
                <input type="text" name="txtNombres" value="<%= persona.getNombres()%>"/>
                <input type="submit" name="action" value="Editar"/>
            </form>
        </div>
    </body>
</html>
