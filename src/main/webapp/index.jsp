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
            max-width: 800px;
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

        p {
            margin-bottom: 20px;
            line-height: 1.6;
        }

        .menu {
            margin-top: 20px;
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 15px;
        }

        .menu a {
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

        .menu a:hover {
            background: linear-gradient(135deg, #b490ca, #5ee7df);
            transform: translateY(-2px);
            box-shadow: 0 6px 20px rgba(180, 144, 202, 0.5);
            color: #ffffff;
        }

        ul {
            text-align: left;
            margin: 0 auto;
            max-width: 400px;
            padding-left: 20px;
        }

        hr {
            margin: 30px 0;
            border: 0;
            height: 1px;
            background: rgba(255, 255, 255, 0.1);
        }
    </style>
    </head>
    <body>
        <div class="container">
        <h1>Bienvenido al Sistema de Registro de Usuarios</h1>
        
        <p>Este sistema permite registrar nuevos usuarios y consultar la información de usuarios registrados.</p>
        
        <div class="menu">
            <a href="registro">Registrar Usuario</a>
            <a href="consulta">Consultar Usuarios</a>    
        </div>
        
        <hr>
        <h2>Información del Sistema</h2>
        <p>
            Este sistema es un ejemplo simple que muestra como utilizar:
        <ul>
            <li>Servlets para procesar formularios</li>
            <li>JSP para renderizar páginas dinámicas</li>
            <li>Métodos HTTP GET y POST</li>
            <li>Sesiones para almacenar datos</li>
        </ul>
        </p>
    </div>
    </body>
</html>
