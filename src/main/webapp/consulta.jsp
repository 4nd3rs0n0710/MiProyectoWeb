<%-- 
    Document   : consulta
    Created on : 2/05/2025, 8:32:14 a. m.
    Author     : SENA
--%>
<%@page import="java.util.List"%>
<%@page import="com.miproyecto.modelo.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consulta de Usuarios</title>
        <style>
        * {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

body {
    background: linear-gradient(135deg, #0f0c29, #302b63, #24243e);
    color: #e0e0e0;
    min-height: 100vh;
    display: flex;
    align-items: center;
    justify-content: center;
    padding: 20px;
}

.container {
    background: rgba(35, 35, 60, 0.9);
    backdrop-filter: blur(8px);
    padding: 30px;
    border-radius: 18px;
    box-shadow: 0 8px 30px rgba(0, 0, 0, 0.5);
    text-align: center;
    max-width: 960px;
    width: 100%;
}

h1, h2 {
    margin-bottom: 16px;
    font-size: 1.5em;
    font-weight: bold;
    text-transform: uppercase;
    background: linear-gradient(135deg, #5ee7df, #b490ca);
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    text-shadow: 0 2px 3px rgba(255, 255, 255, 0.1);
    letter-spacing: 1.5px;
}

form {
    margin-bottom: 25px;
}

input[type="email"] {
    padding: 10px;
    border: 2px solid #5ee7df;
    border-radius: 8px;
    width: 250px;
    font-size: 1em;
    background-color: #1f1f2e;
    color: #fff;
}

.btn, .menu a {
    padding: 10px 20px;
    background: linear-gradient(135deg, #5ee7df, #b490ca);
    color: #0d0d0d;
    border: none;
    border-radius: 8px;
    font-weight: bold;
    text-transform: uppercase;
    letter-spacing: 0.5px;
    text-decoration: none;
    cursor: pointer;
    transition: all 0.3s ease;
    box-shadow: 0 4px 12px rgba(94, 231, 223, 0.4);
}

.btn:hover, .menu a:hover {
    background: linear-gradient(135deg, #b490ca, #5ee7df);
    transform: translateY(-2px);
    box-shadow: 0 6px 20px rgba(180, 144, 202, 0.5);
    color: #ffffff;
}

table {
    width: 100%;
    margin-top: 20px;
    border-collapse: collapse;
    background-color: rgba(255, 255, 255, 0.04);
}

th, td {
    padding: 10px;
    border-bottom: 1px solid rgba(255, 255, 255, 0.08);
}

th {
    background-color: rgba(180, 144, 202, 0.2);
    color: #dbc9f5;
}

tr:hover {
    background-color: rgba(255, 255, 255, 0.06);
}

.not-found {
    color: #ff6b6b;
    margin-top: 10px;
}

.menu {
    margin-top: 30px;
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    gap: 12px;
}
    </style>
            </head>
    <body>
     <div class="container">
        <h1>Consulta de Usuarios</h1>
        
        <%-- Formulario de búsqueda que usa método GET --%>
        <form action="consulta" method="GET">
            <div class="form-group">
                <label for="email">Buscar usuario por email:</label>
                <input type="email" id="email" name="email" required>
                <button type="submit" class="btn">Buscar</button>
            </div>
        </form>
        
        <%-- Resultados de la búsqueda --%>
        <% if(request.getAttribute("busquedaRealizada") != null) {%>
        <div class="results">
            <h2>Resultado de la búsqueda</h2>
            
            <% if (request.getAttribute("usuarioBuscado") != null) { %>
                <% Usuario usuario = (Usuario)
    request.getAttribute("usuarioBuscado"); %>
    
    <table>
        <tr>
            <th>Nombre</th>
            <th>Apellido</th>
            <th>Email</th>
        </tr>
        <tr>
            <td><%= usuario.getNombre() %></td>
            <td><%= usuario.getApellido()%></td>
            <td><%= usuario.getEmail()%></td>
        </tr>
    </table>
        <% } else { %>
        <div class="not-found">
            No se encontró ningún usuario con el email especificado.
        </div>
        <% } %>
        </div>
        <% } %>
        
    <%-- Lista de todos los usuarios --%>
    <h2>Lista de Usuarios Registrados</h2>
    
    <%
        List<Usuario> listaUsuarios = (List<Usuario>)
session.getAttribute("listaUsuarios");
        if (listaUsuarios != null && !listaUsuarios.isEmpty()) {
        %>
        <table>
            <tr>
                <th>Nombre</th>
                <th>Apellido</th>
                <th>Email</th>
            </tr>
            <% for (Usuario usuario : listaUsuarios) { %>
            <tr>
                <td><%= usuario.getNombre() %></td>
                <td><%= usuario.getApellido() %></td>
                <td><%= usuario.getEmail() %></td>
            </tr>
        <% } %>
        </table>
        <% } else { %>
        <p>No hay usuarios registrados en el sistema.</p>
    <% } %>
    
    <div class="menu">
        <a href="index.jsp">Volver a Inicio</a>
        <a href="registro">Registrar Usuario</a>
    </div>
    </body>
</html>
