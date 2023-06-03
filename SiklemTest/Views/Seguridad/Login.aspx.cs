using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SiklemTest.Views.Seguridad
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack == false)
            { }
        }

        protected void Ingresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("../Proveedores/ListaProveedores.aspx", false);
        }
    }
}