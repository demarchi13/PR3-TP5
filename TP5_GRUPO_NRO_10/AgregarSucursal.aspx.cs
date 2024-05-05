using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace TP5_GRUPO_NRO_10
{
    public partial class AgregarSucursal : System.Web.UI.Page
    {
        AccesoDatos conexion = new AccesoDatos(); //PUNTO 7
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //PUNTO 5
                ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
                
                //PUNTO 7
                conexion.CargarDdlProvincia(ddlProvincia);
            }
        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            //PUNTO 8
            AccesoDatos conexion = new AccesoDatos();
            conexion.setearConsulta("INSERT INTO Sucursal (NombreSucursal, DescripcionSucursal, Id_ProvinciaSucursal, DireccionSucursal) VALUES ('" + txtNombreSucursal.Text + "','" + txtDescripcion.Text + "'," + ddlProvincia.SelectedValue + ",'" + txtDireccion.Text + "')");

            //PUNTO 9
            if (conexion.ejecutarAccion())  lblMensaje.Text = "La sucursal se ha agregado con exito";
            else lblMensaje.Text = "La sucursal no se pudo cargar";

            //PUNTO 11
            conexion.cerrarConexion();
            LimpiarCampos();
        }

        // PUNTO 10
        public void LimpiarCampos()
        {
            txtNombreSucursal.Text = "";
            txtDescripcion.Text = "";
            ddlProvincia.ClearSelection();
            txtDireccion.Text = "";
        }
    }
}
