<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="info.aspx.cs" Inherits="ProyectoFinal.Clientes.info" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Información</title>
<style type="text/css">
        .auto-style3 {
            font-size: xx-large;
            font-weight: bold;
            text-align: center;
        }
         .auto-style4 {
             font-weight: bold;
             font-size: x-large;
             text-align: center;
         }
         .auto-style5 {
             font-weight: normal;
             font-size: medium;
         }
    </style>
</head>
<body bgcolor="springgreen">
    <form id="form1" runat="server">
        <div class="auto-style3">
            <br />
            <a>Información</a><br />
        </div>

        <hr />

        <div class="auto-style4">
            <h2>¿Quiénes somos?</h2>
            <span class="auto-style5"><a>Hotel Arenal, donde la palabra &quot;Vacaciones&quot; se define verdaderamente. Con una vista espectacular del Volcán Arenal, aguas termales naturales, cinco experiencias gastronómicas únicas y un impresionante spa de servicio completo, Hotel Arenal en Fortuna promete abrumarlo en todos los aspectos de calidad, servicio y diseño.</a></span>
            <hr />
        </div>

        <div class="auto-style4">
            <h2>Misión</h2>
            <span class="auto-style5"><a>Ofrecer un servicio de calidad y confort en el mercado de servicio hotelero y de alimentos, proveyendo a nuestros clientes productos de alta calidad, creando con ello la satisfacción total y dándonos a conocer por nuestros servicios y atención única en nuestra localidad.</div>

        <hr />

        <div class="auto-style4">
            <h2>Visión</h2>
            <span class="auto-style5"><a>Para el 2023 lograr los estándares de calidad requeridos en la prestación de servicios y productos  a nuestros huéspedes y comensales, a través de un proceso de mejora continua obteniendo una generación de beneficios a través del mercado local y foráneo, en el que nuestro nombre llegue a ser uno de los primeros en nuestra región.</div>

        <hr />


        <div class="auto-style4">
            <h2>Valores</h2>
            <span class="auto-style5"></span>
            <span class="auto-style5"><a>Algunos valores identificados por nosotros que sabemos que nos ayudaran a poder lograr el impulso necesario y requerido como una nueva opción en el mercado hotelero y de alimentos son:

 

            </a>
            <br />
            <br />
            <a>Honestidad:</a><br />
            <a>Calidad humana que encierra el compromiso de la verdad dentro  y fuera de la empresa.</a><br />
            <br />
            <a>Respeto:</a><br />
            <a>Reconocimiento de los intereses y sentimientos mutuos, base de la relación social de forma interna y externa de la entidad.</a><br />
            <br />
            <a>Lealtad:</a><br />
            <a>Fidelidad y compromiso al cliente, a la empresa y a los colaboradores.</a><br />
            <br />
            <a>Trabajo en equipo:</a><br />
            <a>Desarrollo de compañerismo entre colaboradores que nos permitirá coherencia y concordancia en las acciones a tomar.</a><br />
            <br />
            <a>Colaboración:</a><br />
            <a>Consecuencia del trabajo en equipo para obtener resultados conjuntos enfocados a los clientes.</a><br />
            <br />
            <a>Sinceridad</a><br />
            <a>Manifestación de la verdad, principio básico en la relación laboral y con el cliente. </a></span>
        </div>

    <hr />
        <p>
            <asp:ImageButton ID="ImageButton1" runat="server" Height="41px" ImageUrl="~/Imagenes/pngtree-previous-vector-icon-png-image_963232.jpg" PostBackUrl="~/Clientes/ClientsMenu.aspx" Width="58px" />
        </p>
    </form>
</body>
</html>
