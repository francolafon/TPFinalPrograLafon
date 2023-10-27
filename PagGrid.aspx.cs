using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TPFinalPrograLafon
{
    public partial class PagGrid : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                cargarGrilla();
            }
        }
        protected void cargarGrilla()
        {
            string pSQL = "SELECT * FROM terciario.alumnos;";

            ManConex mconex = new TPFinalPrograLafon.ManConex();
            string cadConex = System.Configuration.ConfigurationManager.ConnectionStrings["ConStrMySQL"].ConnectionString;

            if (cadConex.Equals(""))
            {
                return;
            }

            mconex.cadenaConexion = cadConex;

            DataTable dt = mconex.ejecutarSelect(pSQL) as DataTable;

            if (dt != null && dt.Rows.Count > 0 && dt.Rows[0][0] != DBNull.Value)
            {
                ViewState.Add("tablaTot", dt);
                gvProf.DataSource = dt;
                gvProf.DataBind();
            }
            //Session.Add("tabla", dt);
            //DataTable vdt = (DataTable)ViewState["tablaTot"];
        }

        protected void gvProf_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            string nId = e.CommandArgument.ToString();

            if (e.CommandName.Equals("Editando"))
            {
                // recupero de viewstate los datos guardados obtenidos en cargarGrilla 
                DataTable dt = (DataTable)ViewState["tablaTot"];

                // transformo el datatable en dataview
                DataView dv = dt.AsDataView();
                dv.RowFilter = "id = " + nId;

                divGrilla.Visible = false;
                divControl.Visible = true;

                txtId.Text = nId;
                txtNombre.Text = dv[0].Row[1].ToString() + " " + dv[0].Row[2].ToString();


            }
        }
    }
}