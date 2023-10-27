using Microsoft.AspNet.Identity.EntityFramework;
using System;
using System.Collections.Generic;
using System.Configuration.Provider;
using System.Linq;
using System.Web;

namespace TPFinalPrograLafon
{
    public class ConexionIdentity : IdentityDbContext<ApplicationUser>
    {
        public ConexionIdentity()
        {
            this.Database.Connection.ConnectionString = "server=127.0.0.1;database=terciario;user id=root;Password=admin;pooling=false;";
        }

        public static ConexionIdentity Create()
        {
            return new ConexionIdentity();
        }
    }
}