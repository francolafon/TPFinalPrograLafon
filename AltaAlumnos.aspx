<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AltaAlumnos.aspx.cs" Inherits="TPFinalPrograLafon.AltaAlumnos" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Tu Título</title>
    <link rel="stylesheet" href="Content/bootstrap.min.css" />
    <style>
        /* Estilos personalizados */
        .navbar-custom {
            background-color: #007BFF; /* Color de fondo del encabezado */
        }
        .navbar-custom .navbar-brand {
            color: #FFFFFF; /* Color del texto del logo */
        }
        .navbar-custom .navbar-nav .nav-link {
            color: #FFFFFF; /* Color del texto del menú */
        }
        .navbar-custom .navbar-nav .nav-link:hover {
            color: #F0F0F0; /* Color del texto del menú al pasar el mouse */
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <!-- Encabezado con Menú -->
            <nav class="navbar navbar-expand-lg navbar-custom">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="Index.aspx">Inicio</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="PagGrid.aspx">Alumnos</a>
                        </li>
                         <li class="nav-item">
                             <a class="nav-link" href="AltaAlumnos.aspx">Alta Alumnos</a>
                         </li>
                        <!-- Agrega más elementos de menú según tus necesidades -->
                    </ul>
                </div>
            </nav>
            <!-- Contenido de la página -->
      
        </div>
    </form>
    <script src="Scripts/jquery.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</body>
</html>
