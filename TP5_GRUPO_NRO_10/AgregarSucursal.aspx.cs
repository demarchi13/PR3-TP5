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
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
                AccesoDatos conexion = new AccesoDatos();
                conexion.CargarDdlProvincia(ddlProvincia);
            }
        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            AccesoDatos conexion = new AccesoDatos();

            conexion.setearConsulta("INSERT INTO Sucursal (NombreSucursal, DescripcionSucursal, Id_ProvinciaSucursal, DireccionSucursal) VALUES ('" + txtNombreSucursal.Text + "','" + txtDescripcion.Text + "'," + ddlProvincia.SelectedValue + ",'" + txtDireccion.Text + "')");

            if (conexion.ejecutarAccion())  lblMensaje.Text = "La sucursal se ha agregado con exito";
            else lblMensaje.Text = "La sucursal no se pudo cargar";
            
            conexion.cerrarConexion();

            LimpiarCampos();
        }

        public void LimpiarCampos()
        {
            txtNombreSucursal.Text = "";
            txtDescripcion.Text = "";
            ddlProvincia.ClearSelection();
            txtDireccion.Text = "";
        }
    }
}