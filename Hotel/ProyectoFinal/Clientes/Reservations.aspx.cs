using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoFinal
{
    public partial class Reservations : System.Web.UI.Page
    {
        SqlDataAdapter AdaptadorHabitaciones = new SqlDataAdapter();
        DataSet DataHabitaciones;
        int idHabi = 0;

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

        public void Precio()
        {
            try
            {
                SqlCommand command;
                SqlConnection conexion = new SqlConnection();

                string strConexion = ConfigurationManager.ConnectionStrings["hoteles"].ConnectionString;
                conexion.ConnectionString = strConexion;
                conexion.Open();

                command = new SqlCommand("select precio from habitaciones where habitacion = " + idHabi, conexion);

                command.Parameters.ToString();

                lblPrecio.Text = command.ExecuteScalar().ToString();
            }
            catch (Exception ex)
            {

            }
        }


        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
                metConectar();
                //Llenar DropDownList
                cmbHabitacion.DataSource = DataHabitaciones.Tables["habitaciones"];
                cmbHabitacion.DataTextField = "descripcion";
                cmbHabitacion.DataValueField = "habitacion";
                cmbHabitacion.DataBind();
            }
            idHabi = int.Parse(cmbHabitacion.SelectedValue);
            Precio();
        }

        protected void btnCalcular_Click(object sender, EventArgs e)
        {
            string Nombre, Cedula, Email, Telefono;
            int Habitacion, Adultos, Ninos, FechaSMes, TipoA = 1;
            double Hospedaje, Alimentacion, Impuesto, Total;

            Nombre = txtNombre.Text;
            Cedula = txtCedula.Text;
            Habitacion = int.Parse(cmbHabitacion.Text);
            Adultos = int.Parse(txtAdultos.Text);
            Ninos = int.Parse(txtNinos.Text);
            Email = txtEmail.Text;
            Telefono = txtTelefono.Text;
            string FechaI = Calendar1.SelectedDate.Day.ToString() + "/" + Calendar1.SelectedDate.Month.ToString() + "/" + Calendar1.SelectedDate.Year.ToString();
            string FechaS = Calendar2.SelectedDate.Day.ToString() + "/" + Calendar2.SelectedDate.Month.ToString() + "/" + Calendar2.SelectedDate.Year.ToString();
            int DiaI = Calendar1.SelectedDate.Day;
            int DiaS = Calendar2.SelectedDate.Day;
            FechaSMes = Calendar2.SelectedDate.Month;
            double Precio = double.Parse(lblPrecio.Text);

            //Tipo Alimentación
            if (rb1.Checked)
            {
                TipoA = 1;
            }
            else if (rb2.Checked)
            {
                TipoA = 2;
            }
            else if (rb3.Checked)
            {
                TipoA = 3;
            }

            //Calcular Dias
            int Dias = DiaS - DiaI;
            
            //Calculos
            ws_Hotel.wsHotel obCalc = new ws_Hotel.wsHotel();
            Hospedaje = obCalc.Met_Hospedaje(FechaSMes, Dias, Ninos, Adultos, Precio);
            Alimentacion = obCalc.Met_Alimentacion(TipoA, Hospedaje);
            Impuesto = obCalc.Met_Impuestos(Hospedaje, Alimentacion);
            Total = obCalc.Met_Total(Hospedaje, Alimentacion, Impuesto);

            //Creación de una Cookie
            //1.Creación
            HttpCookie cookiehabi;
            cookiehabi = new HttpCookie("cookiehabi");

            //2.Llenar los datos
            cookiehabi["habitacion"] = Habitacion.ToString();
            cookiehabi["nombre"] = Nombre;
            cookiehabi["cedula"] = Cedula;
            cookiehabi["email"] = Email;
            cookiehabi["telefono"] = Telefono;
            cookiehabi["adultos"] = Adultos.ToString();
            cookiehabi["ninos"] = Ninos.ToString();
            cookiehabi["fechai"] = FechaI;
            cookiehabi["fechas"] = FechaS;
            cookiehabi["tipoa"] = TipoA.ToString();
            cookiehabi["dias"] = Dias.ToString();
            cookiehabi["hospedaje"] = Hospedaje.ToString();
            cookiehabi["alimentacion"] = Alimentacion.ToString();
            cookiehabi["impuesto"] = Impuesto.ToString();
            cookiehabi["total"] = Total.ToString();

            //3.La expiración de la Cookie
            cookiehabi.Expires = DateTime.Today.AddDays(10);

            //4.Escribirla
            Response.Cookies.Add(cookiehabi);
            Response.Redirect("Sumario.aspx");
        }

        protected void btnLimpiar_Click(object sender, EventArgs e)
        {

        }
    }
}