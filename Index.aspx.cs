using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity;
using MySql.Data.MySqlClient;

namespace TPFinalPrograLafon
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            var userManager = new UserManager<ApplicationUser>(new UserStore<ApplicationUser>(new ApplicationDbContext()));
            var user = userManager.Find(txtUsuario.Text, txtPassword.Text);

            if (user != null)
            {
                
            }
            else
            {
                // Error de inicio de sesión
            }
        }

            protected void btnRegister_Click(object sender, EventArgs e)
        {
            // Aquí puedes redirigir al usuario a la página de registro.
            //Response.Redirect("Register.aspx");
        }
    }
}