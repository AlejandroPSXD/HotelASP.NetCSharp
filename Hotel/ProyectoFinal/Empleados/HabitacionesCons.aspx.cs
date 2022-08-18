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
    public partial class HabitacionesCons : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (IsPostBack == false)
            {
                metConectar();
                //Lenar GridView
                grdHabitaciones.DataSource = DataHotel.Tables["habitaciones"];
                grdHabitaciones.DataBind();
            }
        }

        SqlDataAdapter AdaptadorHotel = new SqlDataAdapter();
        DataSet DataHotel;

        void metConectar()
        {
            SqlConnection conexion = new SqlConnection();

            string strConexion = ConfigurationManager.ConnectionStrings["hoteles"].ConnectionString;
            conexion.ConnectionString = strConexion;
            conexion.Open();

            AdaptadorHotel = new SqlDataAdapter("select * from habitaciones", conexion);
            SqlCommandBuilder Command = new SqlCommandBuilder(AdaptadorHotel);

            //Creamos DataSet
            DataHotel = new DataSet();
            AdaptadorHotel.Fill(DataHotel, "habitaciones");

            conexion.Close();
        }
    }
}