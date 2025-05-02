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
            background: linear-gradient(135deg, #0f2027, #203a43, #2c5364);
            color: #ffffff;
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .container {
            background: rgba(255, 255, 255, 0.05);
            backdrop-filter: blur(10px);
            padding: 40px;
            border-radius: 16px;
            box-shadow: 0 8px 32px rgba(0, 0, 0, 0.4);
            text-align: center;
            width: 90%;
            max-width: 600px;
        }

        h1 {
            margin-bottom: 20px;
            font-size: 1.8em;
            color: #00ffe1;
            text-shadow: 1px 1px 2px #000;
        }

        form {
            margin-bottom: 30px;
        }

        input[type="text"] {
            padding: 10px;
            width: 70%;
            border-radius: 8px;
            border: none;
            outline: none;
            margin-right: 10px;
        }

        input[type="submit"] {
            padding: 10px 20px;
            background-color: #00ffe1;
            border: none;
            border-radius: 8px;
            color: #000;
            font-weight: bold;
            cursor: pointer;
            transition: 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #00bfa6;
            color: white;
        }

        .resultado {
            text-align: left;
            margin-top: 20px;
        }

        .usuario {
            background-color: rgba(255,255,255,0.1);
            padding: 10px;
            border-radius: 8px;
            margin-bottom: 10px;
        }
    </style>
    </head>
    <body>
        <div class="container">
        <h1>Consulta de Usuarios</h1>
        
        <form action="consulta" method="GET">
            <input type="text" name="filtro" placeholder="Buscar por nombre o correo...">
            <input type="submit" value="Buscar">
            
            <div class="resultado">
                <div class="usuario">
                    <strong>Nombre:</strong> Anderson Forero<br>
                    <strong>Correo:</strong>foreroivan130@gmail.com
                </div>
            </div>
        </div>
            <!-- Formulario de busqueda -->   
        </form>
        <!-- Resultados de busqueda y lista de usuarios -->
        </div>
    </body>
    
    
</html>
