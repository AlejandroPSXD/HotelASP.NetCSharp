<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainMenu.aspx.cs" Inherits="ProyectoFinal.MainMenu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Main Menu</title>

     <style type="text/css">
        .auto-style3 {
            font-size: xx-large;
            font-weight: bold;
            text-align: center;
        }
         </style>
</head>
<body bgcolor="skyblue">
    <form id="form1" runat="server" class="auto-style2">
        <div class="auto-style3">
            <a >Menu Principal</a><hr />
            </div>
            
        <div class="auto-style3">
            <br />
        <asp:ImageButton ID="ImageButton1" runat="server" Height="110px" ImageUrl="~/Imagenes/cliente.png" PostBackUrl="~/Clientes/ClientsMenu.aspx" Width="160px" />
        <asp:ImageButton ID="ImageButton2" runat="server" Height="123px" ImageUrl="~/Imagenes/manager.jpg" PostBackUrl="~/Empleados/EmpleadosMenu.aspx" Width="144px" />
            <br />
        </div>
            <br />

        <hr />


    </form>
</body>
</html>
