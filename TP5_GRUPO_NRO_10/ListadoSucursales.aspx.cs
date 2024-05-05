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
        //PUNTO 5
        AccesoDatos conexion = new AccesoDatos();
        protected void Page_Load(object sender, EventArgs e)
        {            
            if (!IsPostBack)
            {
                //PUNTO 6
                ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
                //PUNTO 9
                conexion.CargarGrillaSucursales(gvSucursales);

            }
        }

        protected void btnMostrarTodos_Click(object sender, EventArgs e)
        {        
            //PUNTO 10
            conexion.CargarGrillaSucursales(gvSucursales);
        }

        protected void btnFiltrar_Click(object sender, EventArgs e)
        {
            //PUNTO 11
            conexion.FiltrarGrilla(gvSucursales, txtIdSucursal);
        }
    }
}
