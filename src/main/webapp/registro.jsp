<%-- 
    Document   : registro
    Created on : 2/05/2025, 8:28:10 a. m.
    Author     : SENA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro de Usuarios</title>
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
            max-width: 500px;
            width: 100%;
        }

        h1 {
            font-size: 1.5em;
            margin-bottom: 20px;
            background: linear-gradient(135deg, #5ee7df, #b490ca);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            text-shadow: 0 2px 3px rgba(255, 255, 255, 0.1);
        }

        .form-group {
            margin-bottom: 15px;
            text-align: left;
        }

        label {
            display: block;
            margin-bottom: 6px;
            color: #ccc;
        }

        input[type="text"],
        input[type="email"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 6px;
            background: #2e2e4d;
            color: #ffffff;
            font-size: 14px;
            box-shadow: inset 0 1px 3px rgba(0,0,0,0.3);
        }

        .btn {
            padding: 10px 20px;
            background: linear-gradient(135deg, #5ee7df, #b490ca);
            border: none;
            border-radius: 8px;
            font-weight: bold;
            cursor: pointer;
            text-transform: uppercase;
            color: #1b1b1b;
            transition: all 0.3s ease;
            width: 100%;
        }

        .btn:hover {
            background: linear-gradient(135deg, #b490ca, #5ee7df);
            color: #ffffff;
            transform: translateY(-1px);
            box-shadow: 0 4px 10px rgba(94, 231, 223, 0.5);
        }

        .message {
            background-color: #2c3e50;
            color: #00ffbf;
            padding: 10px;
            border-radius: 6px;
            margin-bottom: 20px;
        }

        .menu {
            margin-top: 20px;
            display: flex;
            justify-content: space-around;
            gap: 10px;
        }

        .menu a {
            text-decoration: none;
            background: #5ee7df;
            color: #0d0d0d;
            padding: 8px 12px;
            border-radius: 6px;
            font-weight: bold;
            transition: background 0.3s ease;
        }

        .menu a:hover {
            background: #b490ca;
            color: white;
        }
    </style>
    </head>
    <body>
        <div class="container">
        <h1>Registro de Usuario</h1>
        
        <% if (request.getAttribute("mensaje") != null) {%>
            <div class="message">
                <%= request.getAttribute("mensaje") %>
        </div>
      <% } %>
      
     
      <form action="registro" method="POST">
           <div class="form-group">
             <label for="nombre">Nombre:</label>
             <input type="text" id="nombre" name="nombre" required>
           </div>
          
          <div class="form-group">
            <label for="apellido">Apellido:</label>
            <input type="text" id="apellido" name="apellido" required>     
          </div>
      
      <div class="form-group">
          <label for="email">Email:</label>
          <input type="email" id="email" name="email" required>
      </div>
      
      <div class="form-group">
          <label for="password">Contraseña:</label>
          <input type="password" id="password" name="password" required>  
      </div>
          
          <div class="form-group">
              <button type="submit" class="btn">Registrar</button>
          </div>
      </form>
      
      <div class="menu">
          <a href="index.jsp">Volver a Inicio</a> |
          <a href="consulta">Consultar Usuarios</a>
      </div>
    </body>
</html>
