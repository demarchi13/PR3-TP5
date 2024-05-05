using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP5_GRUPO_NRO_10
{
    public partial class EliminarSucursal : System.Web.UI.Page
    {
        //PUNTO 9
        AccesoDatos conexion = new AccesoDatos();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //PUNTO 10
                ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            }
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            //PUNTO 11
            conexion.EliminarSucursal(txtID, lblMensaje);
        }
    }
}
