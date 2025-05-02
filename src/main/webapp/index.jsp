<%-- 
    Document   : index
    Created on : 2/05/2025, 8:24:19 a. m.
    Author     : SENA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicio - Sistema de Usuarios</title>
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
            backdrop-filter: blur(12px);
            padding: 40px;
            border-radius: 16px;
            box-shadow: 0 8px 32px rgba(0, 0, 0, 0.4);
            text-align: center;
            max-width: 400px;
            width: 90%;
        }

        h1 {
            margin-bottom: 30px;
            font-size: 1.8em;
            color: #00ffe1;
            text-shadow: 1px 1px 2px #000;
        }

        .menu {
            display: flex;
            flex-direction: column;
            gap: 15px;
        }

        .menu a {
            text-decoration: none;
            background: #00ffe1;
            color: #000;
            padding: 12px;
            border-radius: 8px;
            font-weight: bold;
            transition: all 0.3s ease;
        }

        .menu a:hover {
            background: #00bfa6;
            transform: scale(1.05);
            color: white;
        }
    </style>
    </head>
    <body>
        <div class="container">
        <h1>Bienvenido al Sistema de Registro de Usuarios</h1>
        
        <div class="menu">
            <a href="registro">Registrar Usuario</a>
            <a href="consulta">Consultar Usuarios</a>    
        </div>
    </div>
    </body>
</html>
