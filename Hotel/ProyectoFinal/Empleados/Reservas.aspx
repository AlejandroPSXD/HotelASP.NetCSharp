<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reservas.aspx.cs" Inherits="ProyectoFinal.Empleados.Reservas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
<style type="text/css">
        .auto-style1 {
            text-align: center;
            font-size: xx-large;
            color: #FF3300;
        }
        .auto-style6 {
            color: #003300;
        }
        .auto-style2 {
            width: 220px;
            color: #003300;
        }
        .auto-style9 {
            width: 220px;
            color: #003300;
            height: 26px;
        }
        .auto-style10 {
            height: 26px;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style11 {
        text-align: center;
        height: 120px;
    }
        .auto-style12 {
        height: 23px;
    }
        .auto-style13 {
        width: 220px;
    }
    .auto-style14 {
        height: 23px;
        width: 220px;
    }
        </style>
</head>
<body bgcolor="lightblue">
    <form id="form2" runat="server">
        <div>
            <div class="auto-style1">
                <span class="auto-style6">Reservas</span><hr />
            </div>
            <table style="width: 100%;" >
                <tr>
                    <td class="auto-style2">Reserva:</td>
                    <td>
                        <asp:TextBox ID="txtReserva" runat="server" BackColor="#99FF99" Width="224px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">Nombre: </td>
                    <td class="auto-style10">
                        <asp:TextBox ID="txtNombre" runat="server" BackColor="#99FF99" Width="224px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">Adultos: </td>
                    <td class="auto-style10">
                        <asp:TextBox ID="txtAdultos" runat="server" BackColor="#99FF99" Width="224px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">Niños: </td>
                    <td class="auto-style10">
                        <asp:TextBox ID="txtNinos" runat="server" BackColor="#99FF99" Width="224px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">Fecha Entrada: </td>
                    <td class="auto-style10">
                        <asp:TextBox ID="txtFechaI" runat="server" BackColor="#99FF99" Width="224px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">Fecha Salida: </td>
                    <td class="auto-style10">
                        <asp:TextBox ID="txtFechaS" runat="server" BackColor="#99FF99" Width="224px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
            <tr>
                <td class="auto-style13">
                    <asp:Label ID="Label13" runat="server" Text="Total: "></asp:Label>
                    </td>
                <td class="auto-style29">
                        <asp:TextBox ID="txtTotal" runat="server" BackColor="#99FF99" Width="224px"></asp:TextBox>
                </td>
            </tr>
                <tr>
                    <td class="auto-style3" colspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11" colspan="2">
                        <asp:Label ID="lblMensaje" runat="server"></asp:Label>
                        <hr />
                        <hr />
                        <div>
                            <asp:Button ID="btnAnterior" runat="server" OnClick="btnAnterior_Click" Text="Anterior" />
                            &nbsp;
                            &nbsp;&nbsp;
                            <asp:Button ID="btnSiguiente" runat="server" OnClick="btnSiguiente_Click" Text="Siguiente" />

                        </div>
                    </td>
                </tr>
            </table>
        </div>
    <p>
&nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton1" runat="server" Height="36px" ImageUrl="~/Imagenes/pngtree-previous-vector-icon-png-image_963232.jpg" PostBackUrl="~/Empleados/EmpleadosMenu.aspx" Width="40px" />
        </p>
    
    </form>
        
</body>
</html>
