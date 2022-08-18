using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoFinal.Clientes
{
    public partial class Sumario : System.Web.UI.Page
    {
        DataRow ofila;
        SqlDataAdapter AdaptadorHabitaciones = new SqlDataAdapter();
        DataSet DataHabitaciones;

        protected void Page_Load(object sender, EventArgs e)
        {
            metConectar();
            HttpCookie cookiehabi;
            cookiehabi = Request.Cookies["cookiehabi"];

            if (cookiehabi == null)
            {
                lblMensaje.Text = "No existen datos.";
            }
            else
            {
                lblHabitacion.Text = cookiehabi["habitacion"];
                lblNombre.Text = cookiehabi["nombre"];
                lblCedula.Text = cookiehabi["cedula"];
                lblEmail.Text = cookiehabi["email"];
                lblTelefono.Text = cookiehabi["telefono"];
                lblAdultos.Text = cookiehabi["adultos"];
                lblNinos.Text = cookiehabi["ninos"];
                lblFechaI.Text = cookiehabi["fechai"];
                lblFechaS.Text = cookiehabi["fechas"];
                lblTipoA.Text = cookiehabi["tipoa"];
                lblDias.Text = cookiehabi["dias"];
                lblHospedaje.Text = cookiehabi["hospedaje"];
                lblAlimentacion.Text = cookiehabi["alimentacion"];
                lblImpuestos.Text = cookiehabi["impuesto"];
                lblTotal.Text = cookiehabi["total"];

            }
        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            metConectar();
            ofila = DataHabitaciones.Tables["reservas"].NewRow();

            ofila["habitacion"] = lblHabitacion.Text;
            ofila["nombre"] = lblNombre.Text;
            ofila["cedula"] = lblCedula.Text;
            ofila["correo"] = lblEmail.Text;
            ofila["telefono"] = lblTelefono.Text;
            ofila["adultos"] = lblAdultos.Text;
            ofila["ninos"] = lblNinos.Text;
            ofila["fechai"] = lblFechaI.Text;
            ofila["fechas"] = lblFechaS.Text;
            ofila["dias"] = lblDias.Text;
            ofila["hospedaje"] = lblHospedaje.Text;
            ofila["alimentacion"] = lblAlimentacion.Text;
            ofila["impuestos"] = lblImpuestos.Text;
            ofila["total"] = lblTotal.Text;

            //Agregamos la fila al DataSet
            DataHabitaciones.Tables["reservas"].Rows.Add(ofila);
            //Actualizamos la tabla en SQL
            AdaptadorHabitaciones.Update(DataHabitaciones, "reservas");

            lblMensaje.Text = "Datos Insertados";
            btnEnviar.Visible = false;
        }

        void metConectar()
        {
            SqlConnection conexion = new SqlConnection();

            string strConexion = ConfigurationManager.ConnectionStrings["hoteles"].ConnectionString;
            conexion.ConnectionString = strConexion;
            conexion.Open();

            AdaptadorHabitaciones = new SqlDataAdapter("select * from reservas", conexion);
            SqlCommandBuilder Command = new SqlCommandBuilder(AdaptadorHabitaciones);

            //Creamos DataSet
            DataHabitaciones = new DataSet();
            AdaptadorHabitaciones.Fill(DataHabitaciones, "reservas");

            conexion.Close();
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("ClientsMenu.aspx");
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("ClientsMenu.aspx");
        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("ClientsMenu.aspx");
        }
    }
}