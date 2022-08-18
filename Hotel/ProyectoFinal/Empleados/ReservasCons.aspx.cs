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
    public partial class ReservasCons : System.Web.UI.Page
    {

        SqlDataAdapter AdaptadorHotel = new SqlDataAdapter();
        DataSet DataHotel;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (IsPostBack == false)
            {
                metConectar();
                //Llenar GridView
                grdReservas.DataSource = DataHotel.Tables["reservas"];
                grdReservas.DataBind();
            }
        }

        void metConectar()
        {
            SqlConnection conexion = new SqlConnection();

            string strConexion = ConfigurationManager.ConnectionStrings["hoteles"].ConnectionString;
            conexion.ConnectionString = strConexion;
            conexion.Open();

            AdaptadorHotel = new SqlDataAdapter("select * from reservas", conexion);
            SqlCommandBuilder Command = new SqlCommandBuilder(AdaptadorHotel);

            //Creamos DataSet
            DataHotel = new DataSet();
            AdaptadorHotel.Fill(DataHotel, "reservas");

            conexion.Close();
        }
    }
}