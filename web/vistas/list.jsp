<%-- 
    Document   : list
    Created on : 05-ene-2021, 11:49:09
    Author     : El benévolo señor Arciniegas <Anarchy Framework>
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="modelo.Persona"%>
<%@page import="DAO.PersonaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div>
            <h3>Personas lsitadas:</h3>
            <a href="Controlador?action=insert">Agregar nuevo</a>
            <table >
                <thead>
                    <tr>
                        <th>Id</th>
                        <th>DNI</th>
                        <th>Nombres</th>
                        <th>Acciones</th>
                    </tr>
                </thead>
                <%
                    ArrayList<Persona> personas = PersonaDAO.listar();
                    Iterator it = personas.iterator();
                    Persona persona = null;
                    while( it.hasNext()){
                        persona = (Persona) it.next();
                %>
                <tbody>
                    <tr>
                        <td><%= persona.getId() %></td>
                        <td><%= persona.getDNI()%></td>
                        <td><%= persona.getNombres()%></td>
                        <td>
                            <a href="Controlador?action=update&idPersona=<%= persona.getId() %>">Edit</a><a> - </a>
                            <a>Remove</a>
                        </td>
                    </tr>
                </tbody>
                <%}%>
            </table>

        </div>
    </body>
</html>
