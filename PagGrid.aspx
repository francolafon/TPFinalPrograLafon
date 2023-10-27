<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PagGrid.aspx.cs" Inherits="TPFinalPrograLafon.PagGrid" %>
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
                  <div class="container mt-4">
          <h1>Alta de Alumnos</h1>
          <div id="divGrilla" runat="server" class="row">
                  <div class="col-lg-10 form-group form-group-inline">
                      <asp:GridView ID="gvProf" DataKeyNames="id" AllowPaging="false" runat="server"
                          HeaderStyle-BackColor="#c0c0c0"
                          AutoGenerateColumns="false" AllowSorting="true" Style="font-size: 0.9em;"
                          CssClass="table table-bordered table-hover" ShowFooter="false" ShowHeaderWhenEmpty="false"
                          OnRowCommand="gvProf_RowCommand">
                          <Columns>
                              <asp:TemplateField HeaderText="Acciones">
                                  <ItemTemplate>
                                      <asp:Button ID="btnEditar" runat="server" CssClass="btn btn-primary" Width="75px"
                                          CommandName="Editando" CommandArgument='<%#Eval("id") %>'
                                          ToolTip="Editar Fila" Text="Editar" />
                                  </ItemTemplate>
                              </asp:TemplateField>

                              <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="true" />
                              <asp:BoundField DataField="NOMBRE" HeaderText="APELLIDO Y NOMBRE" ReadOnly="true" />
                          </Columns>
                      </asp:GridView>
                  </div>
              </div>


              <div id="divControl" runat="server" visible="false">

                  <div class="row">
                      <div class="col-lg-2">
                          <asp:Label ID="lblId" runat="server" Text="Id : "></asp:Label>
                      </div>
                      <div class="col-lg-3">
                          <asp:TextBox ID="txtId" Font-Bold="true" runat="server"></asp:TextBox>
                      </div>

                  </div>

                  <div class="row">
                      <div class="col-lg-2">
                          <asp:Label ID="lblNombre" runat="server" Text="Nombre : "></asp:Label>
                      </div>
                      <div class="col-lg-3">
                          <asp:TextBox ID="txtNombre" Font-Bold="true" runat="server"></asp:TextBox>
                      </div>
                  </div>
              </div>
          <!-- Resto de tu contenido -->
      </div>
        </div>
    </form>
    <script src="Scripts/jquery.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</body>
</html>