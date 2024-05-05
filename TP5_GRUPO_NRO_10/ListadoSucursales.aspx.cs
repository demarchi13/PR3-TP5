using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace TP5_GRUPO_NRO_10
{
    public partial class ListadoSucursales : System.Web.UI.Page
    {
        AccesoDatos conexion = new AccesoDatos();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
                conexion.CargarGrillaSucursales(gvSucursales);

            }
        }

        protected void btnMostrarTodos_Click(object sender, EventArgs e)
        {        
            conexion.CargarGrillaSucursales(gvSucursales);
        }

        protected void btnFiltrar_Click(object sender, EventArgs e)
        {
            conexion.FiltrarGrilla(gvSucursales, txtIdSucursal);
        }
    }
}