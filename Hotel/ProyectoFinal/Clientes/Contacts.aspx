<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contacts.aspx.cs" Inherits="ProyectoFinal.Contacts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="styles.css" rel="stylesheet" type="text/css"/>
    <style type="text/css">
        .auto-style3 {
            font-size: xx-large;
            font-weight: bold;
            text-align: center;
        }
         .auto-style4 {
             font-weight: bold;
             font-size:xx-large;
             text-align: center;
             color:darkgreen;
         }
         .auto-style6 {
            font-weight: normal;
            font-size: large;
        }
        .auto-style7 {
            font-weight: normal;
            font-size: small;
        }
    </style>
</head>
<body bgcolor="khaki">
    <form id="form1" runat="server">
        <div class="auto-style3">
            <br />
            <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#006600" PostBackUrl="~/Clientes/ClientsMenu.aspx">Contactos</asp:LinkButton>

            <br />

        <hr />

        <div class="auto-style4">
            <h2 class="auto-style6">&nbsp;</h2>
            <h2 class="auto-style6">Teléfono</h2>
            <span class="auto-style7">6247-9269<br />
            </span><hr />
        </div>

        <div class="auto-style4">
            <h2 class="auto-style6">&nbsp;</h2>
            <h2 class="auto-style6">Correo Electrónico</h2>
            <span class="auto-style7"><a href="mailto:support@arenalhotel.com">support@arenalhotel.com</a></span>
            <br />
            <hr />
        </div>
        </div>
        <p>
            <asp:ImageButton ID="ImageButton1" runat="server" Height="36px" ImageUrl="~/Imagenes/pngtree-previous-vector-icon-png-image_963232.jpg" PostBackUrl="~/Clientes/ClientsMenu.aspx" Width="40px" />
        </p>
    </form>
    </body>
</html>
