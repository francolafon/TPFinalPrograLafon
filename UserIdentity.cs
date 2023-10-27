using Microsoft.AspNet.Identity.EntityFramework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TPFinalPrograLafon
{
    public class UserIdentity : ApplicationUser
    {
        public string Nombre { get; set; }
        public string Apellido { get; set; }
        
    }
}