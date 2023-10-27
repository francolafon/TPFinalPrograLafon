<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="TPFinalPrograLafon.Registro" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Página de Registro</title>
    <link rel="stylesheet" href="Content/bootstrap.min.css" />
    <style>
        /* Estilos personalizados para el fondo oscuro */
        body {
            background-color: rgba(0, 0, 0, 0.5); /* Fondo negro */
        }

        .registro-container {
            background: #f3f3f3; /* Fondo blanco-gris */
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.5); /* Sombra */
            border-radius: 10px; /* Bordes redondeados */
            padding: 20px; /* Espaciado interno */
        }

        .error-label {
            color: red; /* Cambia el color del texto a rojo u otro color de tu elección */
            display: none; /* Inicialmente, oculta el control de error */
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container mt-5">
            <div class="row justify-content-center">
                <div class="col-md-6 registro-container"> <!-- Aplicar el estilo a este contenedor -->
                    <h2 class="text-center">Registro de Usuario</h2>
                    <div class="form-group">
                        <asp:Label ID="Label1" runat="server" Text="Usuario:" AssociatedControlID="txtUsuario" CssClass="font-weight-bold" />
                        <asp:TextBox ID="txtUsuario" runat="server" CssClass="form-control" />
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label2" runat="server" Text="Contraseña:" AssociatedControlID="txtPassword" CssClass="font-weight-bold" />
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control" />
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label3" runat="server" Text="Nombre:" AssociatedControlID="txtNombre" CssClass="font-weight-bold" />
                        <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control" />
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label4" runat="server" Text="Apellido:" AssociatedControlID="txtApellido" CssClass="font-weight-bold" />
                        <asp:TextBox ID="txtApellido" runat="server" CssClass="form-control" />
                    </div>
                    <div class="form-group">
                        <asp:Label ID="Label5" runat="server" Text="Correo Electrónico:" AssociatedControlID="txtCorreo" CssClass="font-weight-bold" />
                        <asp:TextBox ID="txtCorreo" runat="server" CssClass="form-control" />
                        <asp:Label ID="errorLabel" runat="server" text= "" Visible="true"></asp:Label>
                    </div>
                    <div class="mb-3"></div>

                    <!-- Agrega espacio entre el label y el botón -->
                    <div class="d-flex justify-content-between">
                        <asp:Button ID="btnRegister" runat="server" Text="Registrarse" CssClass="btn btn-secondary" OnClick="btnRegister_Click" />
                        <asp:Button ID="btnLogin" runat="server" Text="Iniciar Sesión" CssClass="btn btn-primary" OnClick="btnLogin_Click" />
                        
                    </div>
                    <div></div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>