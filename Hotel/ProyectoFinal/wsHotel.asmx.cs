using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace ProyectoFinal
{
    /// <summary>
    /// Descripción breve de wsHotel
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // Para permitir que se llame a este servicio web desde un script, usando ASP.NET AJAX, quite la marca de comentario de la línea siguiente. 
    // [System.Web.Script.Services.ScriptService]
    public class wsHotel : System.Web.Services.WebService
    {

        [WebMethod]
        public double Met_Hospedaje(int FechaSMes, int Dias, int Ninos, int adultos, double Tarifa)
        {

            double n, a;
            double hospedaje = 0;

            n = (Tarifa * Ninos * Dias) * 0.40;
            

            switch (FechaSMes)
            {
                case 1:
                    hospedaje = (Tarifa * 1.50) * Dias * adultos + n;
                    break;
                case 2:
                    hospedaje = (Tarifa * 1.50) * Dias * adultos + n;
                    break;
                case 3:
                    hospedaje = (Tarifa * 1.50) * Dias * adultos + n;
                    break;
                case 4:
                    hospedaje = (Tarifa * 1.50) * Dias * adultos + n;
                    break;
                case 5:
                    hospedaje = (Tarifa * 1.50) * Dias * adultos + n;
                    break;
                case 6:
                    hospedaje = (Tarifa * 1.50) * Dias * adultos + n;
                    break;
                case 7:
                    hospedaje = (Tarifa * 1.50) * Dias * adultos + n;
                    break;
                case 8:
                    hospedaje = Tarifa * Dias * adultos + n;
                    break;
                case 9:
                    hospedaje = Tarifa * Dias * adultos + n;
                    break;
                case 10:
                    hospedaje = Tarifa * Dias * adultos + n;
                    break;
                case 11:
                    hospedaje = Tarifa * Dias * adultos + n;
                    break;
                case 12:
                    hospedaje = (Tarifa * 1.50) * Dias * adultos + n;
                    break;
                default:
                    break;
            }
            return hospedaje;
        }

        [WebMethod]
        public double Met_Alimentacion(int TipoA, double Hospedaje)
        {
            double Alimentacion = 0;

            if (TipoA == 1)
            {
                Alimentacion = Hospedaje * 0.25;
            }
            else if (TipoA == 2)
            {
                Alimentacion = Hospedaje * 0.35;
            }
            else if (TipoA == 3)
            {
                Alimentacion = Hospedaje * 0.50;
            }

            return Alimentacion;
        }

        [WebMethod]
        public double Met_Impuestos(double Hospedaje, double Alimentacion)
        {
            double Impuestos;

            Impuestos = (Hospedaje + Alimentacion) * 0.22;

            return Impuestos;
        }

        [WebMethod]
        public double Met_Total(double Hospedaje, double Alimentacion, double Impuestos)
        {
            double Total = 0;

            Total = Hospedaje + Alimentacion + Impuestos;

            return Total;
        }
    }
}
