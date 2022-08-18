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
    public partial class Reservas : System.Web.UI.Page
    {
        DataRow ofila;
        SqlDataAdapter AdaptadorHotel = new SqlDataAdapter();
        DataSet DataHotel;
        int i;
        void metConectar()
        {
            SqlConnection conexion = new SqlConnection();

            string strConexion = ConfigurationManager.ConnectionStrings["hoteles"].ConnectionString;
            conexion.ConnectionString = strConexion;
            conexion.Open();

            AdaptadorHotel = new SqlDataAdapter("select reserva, nombre, adultos, ninos, fechai, fechas, total from reservas", conexion);
            SqlCommandBuilder Command = new SqlCommandBuilder(AdaptadorHotel);

            //Creamos DataSet
            DataHotel = new DataSet();
            AdaptadorHotel.Fill(DataHotel, "reservas");

            conexion.Close();
        }

        public void CargarFila()
        {
            ofila = DataHotel.Tables["reservas"].Rows[i];

            txtReserva.Text = ofila["reserva"].ToString().Trim();
            txtNombre.Text = ofila["nombre"].ToString().Trim();
            txtAdultos.Text = ofila["adultos"].ToString().Trim();
            txtNinos.Text = ofila["ninos"].ToString().Trim();
            txtFechaI.Text = ofila["fechai"].ToString().Trim();
            txtFechaS.Text = ofila["fechas"].ToString().Trim();
            txtTotal.Text = ofila["total"].ToString().Trim();
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
            ofila = DataHotel.Tables["reservas"].NewRow();

            txtReserva.Text = ofila["habitacion"].ToString().Trim();
            txtNombre.Text = ofila["nombre"].ToString().Trim();;
            txtAdultos.Text = ofila["adultos"].ToString().Trim();
            txtNinos.Text = ofila["ninos"].ToString().Trim();
            txtFechaI.Text = ofila["fechai"].ToString().Trim();
            txtFechaS.Text = ofila["fechas"].ToString().Trim();
            txtTotal.Text = ofila["total"].ToString().Trim();

            //Agregamos la fila al DataSet
            DataHotel.Tables["reservas"].Rows.Add(ofila);
            //Actualizamos la tabla en SQL
            AdaptadorHotel.Update(DataHotel, "reservas");

            lblMensaje.Text = "Datos Insertados";
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