using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TPFinalPrograLafon
{
    public partial class Registro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {

        }
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string username = txtUsuario.Text;
            string password = txtPassword.Text;

            // Obtén los valores de los campos adicionales
            string nombre = txtNombre.Text;
            string apellido = txtApellido.Text;
            string correo = txtCorreo.Text;

            // Lógica para crear un nuevo usuario con los datos adicionales
            var userManager = new UserManager<ApplicationUser>(new UserStore<ApplicationUser>(new ApplicationDbContext()));
            var user = new ApplicationUser { UserName = username, Email = correo };

            var result = userManager.Create(user, password);

            if (result.Succeeded)
            {
                // Registro exitoso
                Response.Redirect("PagGrid.aspx"); // Redirige a la página de inicio de sesión u otra página deseada
            }
            else
            {
                // Error de registro
                foreach (var error in result.Errors)
                {
                    // Muestra los errores en la consola o en una etiqueta de error en la página
                    Console.WriteLine(error);
                    // Opcionalmente, puedes mostrarlos en una etiqueta de error en la página:
                    errorLabel.Text = error;
                    errorLabel.Text = string.Join("<br />", result.Errors);
                }
            }

        }
    }
}