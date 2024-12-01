<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Panel de Usuario - Ecosoft</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@picocss/pico@2/css/pico.min.css">
        <style>
            /* Estilo para el cuerpo de la página */
            body {
                margin: 0;
                font-family: Arial, sans-serif;
                background-color: #ffffff; 
                display: flex;
            }

            /* Estilo para la barra lateral */
            .sidebar {
                width: 250px;
                background-color: #27ae60; 
                height: 100vh;
                padding-top: 20px;
                position: fixed;
                left: 0;
                top: 0;
                color: white;
            }

            .sidebar h2 {
                text-align: center;
                font-size: 24px;
                margin-bottom: 20px;
            }

            .sidebar a {
                color: white;
                text-decoration: none;
                display: block;
                padding: 15px 20px;
                font-size: 18px;
                border-bottom: 1px solid #2c3e50;
            }

            .sidebar a:hover {
                background-color: #2ecc71;
            }

            /* Estilo para el contenido principal */
            .main-content {
                margin-left: 250px;
                padding: 40px;
                flex-grow: 1;
                background-color: #ffffff; 
            }
            .main-content h1 {
                font-size: 36px;
                color: #2c3e50;
            }

            .main-content p {
                font-size: 18px;
                color: #7f8c8d;
            }

            /* Estilo para el botón de cerrar sesión */
            .logout-btn {
                background-color: #e74c3c;
                color: white;
                border: none;
                padding: 10px;
                font-size: 16px;
                cursor: pointer;
                width: 100%;
                margin-top: 20px;
                text-align: center;
            }

            .logout-btn:hover {
                background-color: #c0392b;
            }
        </style>
    </head>
    <body>
        <%
            // Verificar si la sesión contiene un atributo "usuario"
            if (session.getAttribute("usuario") == null) {
                response.sendRedirect("index.html"); // Redirigir si no está autenticado
                return; // Detener ejecución
            }
        %>

        <div class="sidebar">
            <h2>ECOSOFT</h2>
            <a href="#">Importar</a>
            <a href="#">Archivos</a>
            <a href="#">Compartir</a>
            <a href="#">Utilidades</a>
            <form action="logout" method="POST">
                <button type="submit" class="logout-btn">Cerrar sesión</button>
            </form>
        </div>

        <div class="main-content">
            <h1>Bienvenido a Ecosoft</h1>
            <p>Por favor, navega a través del menú lateral para acceder a las diferentes opciones.</p>
        </div>
    </body>
</html>
