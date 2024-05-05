using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace TP5_GRUPO_NRO_10
{
    public class AccesoDatos
    {             
        private SqlConnection conexion;
        private SqlCommand comando;
        private SqlDataReader lector;
        public SqlDataReader Lector
        {
            get { return lector; }
        }
        public AccesoDatos()
        {
            conexion = new SqlConnection("Data Source=localhost\\sqlexpress; Initial Catalog=BDSucursales; Integrated Security = True");
            comando = new SqlCommand();
        }      
        public void setearConsulta(string consulta)
        {
            comando.CommandType = System.Data.CommandType.Text;
            comando.CommandText = consulta;
        }
        public void ejecutarLectura()
        {
            comando.Connection = conexion;
            try
            {
                conexion.Open();
                lector = comando.ExecuteReader();
            }
            catch (Exception )
            {
                
            }
        }
        public bool ejecutarAccion()
        {
            comando.Connection = conexion;
            try
            {
                conexion.Open();
                if (comando.ExecuteNonQuery() == 1) 
                {
                    return true;
                }
                else
                {
                    return false;
                }        
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
           
        public void cerrarConexion()
        {
            if (lector != null) 
            {          
                lector.Close();
            }
                conexion.Close();
        }

        //PUNTO 6 EJERCICIO 1
        public void CargarDdlProvincia(DropDownList ddlProvincias)
        {
            string consulta = "SELECT Id_Provincia, DescripcionProvincia FROM Provincia";

            setearConsulta(consulta);

            ejecutarLectura();

            ddlProvincias.Items.Insert(0, new ListItem("--Seleccionar--", "0"));

            while (lector.Read())
            {
                ddlProvincias.Items.Add(new ListItem(lector["DescripcionProvincia"].ToString(), lector["Id_Provincia"].ToString()));
            }          

            conexion.Close();
        }

        //PUNTO 7 EJERCICIO 2
        public void CargarGrillaSucursales(GridView gvSucursales)
        {
            string consulta = "SELECT Sucursal.Id_Sucursal, Sucursal.NombreSucursal, Sucursal.DescripcionSucursal, Provincia.DescripcionProvincia ,Sucursal.DireccionSucursal FROM Sucursal INNER JOIN Provincia ON Sucursal.Id_ProvinciaSucursal = Provincia.Id_Provincia";

            setearConsulta(consulta);

            ejecutarLectura();

            gvSucursales.DataSource = lector;
            gvSucursales.DataBind();         

            cerrarConexion();
        }

        //PUNTO 8 EJERCICIO 2
        public void FiltrarGrilla(GridView gvSucursales, TextBox txtId)
        {
            string consulta = "SELECT Sucursal.Id_Sucursal, Sucursal.NombreSucursal, Sucursal.DescripcionSucursal, Provincia.DescripcionProvincia ,Sucursal.DireccionSucursal FROM Sucursal INNER JOIN Provincia ON Sucursal.Id_ProvinciaSucursal = Provincia.Id_Provincia WHERE Sucursal.Id_Sucursal =" + txtId.Text;
            
            setearConsulta(consulta);

            ejecutarLectura();

            gvSucursales.DataSource = lector;
            gvSucursales.DataBind();

            txtId.Text = "";

            cerrarConexion();
        }

        //PUNTO 8 EJERCICIO 3
        public void EliminarSucursal(TextBox txtIdSucursal, Label lblMensaje)
        {
            string consulta = "DELETE FROM Sucursal WHERE Sucursal.Id_Sucursal=" + txtIdSucursal.Text;

            setearConsulta(consulta);

            if (ejecutarAccion()) lblMensaje.Text = "La sucursal se ha eliminado con exito";
            else lblMensaje.Text = "La sucursal no existe o ya se elimino";

            txtIdSucursal.Text = "";

            cerrarConexion();
        }
     
    }
}
