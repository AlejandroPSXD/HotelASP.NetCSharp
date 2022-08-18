using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoFinal.Empleados
{
    public partial class Habitaciones : System.Web.UI.Page
    {
        DataRow ofila;
        SqlDataAdapter AdaptadorHabitaciones = new SqlDataAdapter();
        DataSet DataHabitaciones;
        int i;
        void metConectar()
        {
            SqlConnection conexion = new SqlConnection();

            string strConexion = ConfigurationManager.ConnectionStrings["hoteles"].ConnectionString;
            conexion.ConnectionString = strConexion;
            conexion.Open();

            AdaptadorHabitaciones = new SqlDataAdapter("select * from habitaciones", conexion);
            SqlCommandBuilder Command = new SqlCommandBuilder(AdaptadorHabitaciones);

            //Creamos DataSet
            DataHabitaciones = new DataSet();
            AdaptadorHabitaciones.Fill(DataHabitaciones, "habitaciones");

            conexion.Close();
        }

        public void CargarFila()
        {
            ofila = DataHabitaciones.Tables["habitaciones"].Rows[i];

            txtDescripcion.Text = ofila["descripcion"].ToString().Trim();
            txtPrecio.Text = ofila["precio"].ToString().Trim();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            metConectar();
            if (IsPostBack == false)
            {
                Session["i"] = 0;
                CargarFila();
            }
        }
        
        protected void btnInsertar_Click(object sender, EventArgs e)
        {
            metConectar();
            ofila = DataHabitaciones.Tables["habitaciones"].NewRow();

            ofila["descripcion"] = txtDescripcion.Text;
            ofila["precio"] = txtPrecio.Text;

            //Agregamos la fila al DataSet
            DataHabitaciones.Tables["habitaciones"].Rows.Add(ofila);
            //Actualizamos la tabla en SQL
            AdaptadorHabitaciones.Update(DataHabitaciones, "habitaciones");

            lblMensaje.Text = "Datos Insertados";
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            i = int.Parse(Session["i"].ToString());

            ofila = DataHabitaciones.Tables["habitaciones"].Rows[i];

            ofila["descripcion"] = txtDescripcion.Text;
            ofila["precio"] = txtPrecio.Text;

            //Actualizamos la tabla en SQL
            AdaptadorHabitaciones.Update(DataHabitaciones, "habitaciones");

            lblMensaje.Text = "Datos Modificados";
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            i = int.Parse(Session["i"].ToString());
            ofila = DataHabitaciones.Tables["habitaciones"].Rows[i];
            ofila.Delete();

            //Actualizamos la tabla en SQL
            AdaptadorHabitaciones.Update(DataHabitaciones, "habitaciones");

            lblMensaje.Text = "Datos Eliminados";

            i = i - 1;
            Session["i"] = i;

            try
            {
                CargarFila();
            }
            catch (IndexOutOfRangeException ex)
            {
                lblMensaje.Text = "Inicio de archivo";
                i = i + 1;
                Session["i"] = i;
            }
        }

        protected void btnAnterior_Click(object sender, EventArgs e)
        {
            i = int.Parse(Session["i"].ToString());
            i = i - 1;
            Session["i"] = i;

            try
            {
                CargarFila();
            }
            catch (IndexOutOfRangeException ex)
            {
                lblMensaje.Text = "Inicio de archivo";
                i = i + 1;
                Session["i"] = i;
            }
        }

        protected void btnSiguiente_Click(object sender, EventArgs e)
        {
            i = int.Parse(Session["i"].ToString());
            i = i + 1;
            Session["i"] = i;

            try
            {
                CargarFila();
            }
            catch (IndexOutOfRangeException ex)
            {
                lblMensaje.Text = "Fin de archivo";
                i = i - 1;
                Session["i"] = i;
            }
        }
    }
}