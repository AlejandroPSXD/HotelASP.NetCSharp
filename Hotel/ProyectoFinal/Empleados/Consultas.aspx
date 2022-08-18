<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Consultas.aspx.cs" Inherits="ProyectoFinal.Empleados.Consultas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Consultas</title>

     <style type="text/css">
        .auto-style3 {
            font-size: xx-large;
            font-weight: bold;
            text-align: center;
            color:darkorange;
        }
         .auto-style4 {
             font-size: xx-large;
             font-weight: bold;
             text-align: center;
             height: 183px;
         }
         </style>
</head>
<body bgcolor="skyblue">
    <form id="form1" runat="server" class="auto-style2">
        <div class="auto-style3">
            <a >Consultas</a><hr />
            </div>
            
        <div class="auto-style4">
            <br />
            <br />
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Empleados/HabitacionesCons.aspx" ForeColor="#FF6600">Consultar Habitaciones</asp:LinkButton>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/Empleados/ReservasCons.aspx" ForeColor="#FF6600">Consultar Reservas</asp:LinkButton>
        </div>
            <asp:ImageButton ID="ImageButton1" runat="server" Height="36px" ImageUrl="~/Imagenes/pngtree-previous-vector-icon-png-image_963232.jpg" PostBackUrl="~/Empleados/EmpleadosMenu.aspx" Width="40px" />
            <br />

        <hr />


    </form>
</body>
</html>
