<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClientsMenu.aspx.cs" Inherits="ProyectoFinal.MainSite" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Hotel Arenal</title>
    <style type="text/css">
        .auto-style3 {
            font-size: xx-large;
            font-weight: bold;
            text-align: center;
            color:green;
        }
         .auto-style4 {
             font-weight: bold;
             font-size:xx-large;
             text-align: center;
             color:green;
             font-weight: bold;
         }
         .auto-style5 {
             font-weight: normal;
             font-size: large;
             color:darkslategray
         }
         </style>
</head>
<body bgcolor="skyblue">
    <form id="form2" runat="server">
        <div class="auto-style3">
            <a>Menú Clientes</a>
            <hr />
        </div>
        <div>
        </div>
        <asp:TreeView ID="TreeView2" runat="server" ImageSet="Faq" BorderStyle="Groove" BorderWidth="10px" CssClass="auto-style2" Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Size="XX-Large" Height="174px" Width="223px">
            <HoverNodeStyle Font-Underline="True" ForeColor="Purple" />
            <Nodes>
                <asp:TreeNode NavigateUrl="~/Clientes/info.aspx" Text="Información" Value="Información" Target="contenido"></asp:TreeNode>
                <asp:TreeNode NavigateUrl="~/Clientes/Reservations.aspx" Text="Reservaciones" Value="Reservaciones" Target="contenido"></asp:TreeNode>
                <asp:TreeNode NavigateUrl="~/Clientes/GaleriaFinal.html" Text="Imagenes" Value="Imagenes" Target="contenido"></asp:TreeNode>
                <asp:TreeNode NavigateUrl="~/Clientes/Contacts.aspx" Text="Contactos" Value="Contactos" Target="contenido"></asp:TreeNode>
            </Nodes>
            <NodeStyle Font-Names="Tahoma" Font-Size="8pt" ForeColor="DarkBlue" HorizontalPadding="5px" NodeSpacing="0px" VerticalPadding="0px" />
            <ParentNodeStyle Font-Bold="False" />
            <SelectedNodeStyle Font-Underline="True" HorizontalPadding="0px" VerticalPadding="0px" />
        </asp:TreeView>
        <br />
            <asp:ImageButton ID="ImageButton1" runat="server" Height="36px" ImageUrl="~/Imagenes/pngtree-previous-vector-icon-png-image_963232.jpg" PostBackUrl="~/MainMenu.aspx" Width="40px" />
    </form>
    <hr />

    <div class="auto-style4">
            <h2>¿Quienes somos?</h2>
            <span class="auto-style5"><a>Bienvenido a Hotel Arenal, donde la palabra "Vacaciones" se define verdaderamente. Con una vista espectacular del Volcán Arenal, aguas termales naturales, cinco experiencias gastronómicas únicas y un impresionante spa de servicio completo, Hotel Arenal en Fortuna promete abrumarlo en todos los aspectos de calidad, servicio y diseño.<hr />
        </div>

        <div class="auto-style4">
            <span class="auto-style5"><a>CNN Travel votó a nuestra propiedad de cinco estrellas como uno de los siete resorts con las vistas más espectaculares del mundo, y hemos presentado&nbsp; muchos programas de televisión famosos. </a>
            <br />
            <br />
                <hr />
            <a>En nuestra propiedad de 165 acres, las familias seguramente disfrutarán del tobogán de agua, el exclusivo campo de putt-putt, la sala de juegos para niños y nuestro Club Arenal Adventure Center en el lugar,
ofreciendo tubing, kayak, paseos a caballo, escalada en roca, aguas termales y nuestro increíble Santuario de animales. </a>
            <br />
                <hr />
            <br />
            <a>Ya sea que viaje con su familia o para una escapada íntima, Hotel Arenal es un escape ideal para el romance, la relajación o la aventura, y puede experimentar los tres sin salir de la propiedad.</a></span>
        </div>


        <hr />


    <hr />

</body>
</html>
