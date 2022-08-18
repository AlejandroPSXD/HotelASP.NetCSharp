<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sumario.aspx.cs" Inherits="ProyectoFinal.Clientes.Sumario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        .auto-style20 {
            width: 100%;
            height: 177px;
        }
        
        .auto-style23 {
            font-size: x-large;
        }
        .auto-style24 {
            color: #002848;
        }

        .auto-style25 {
            text-align: left;
            height: 20px;
        }
        .auto-style29 {
            text-align: left;
        }
        .auto-style32 {
            text-align: left;
            height: 20px;
            width: 182px;
        }
        .auto-style33 {
            width: 182px;
            text-align: left;
        }

        .auto-style34 {
            width: 182px;
            text-align: left;
            height: 23px;
        }
        .auto-style35 {
            text-align: left;
            height: 23px;
        }
        .auto-style36 {
            height: 594px;
        }

        .auto-style37 {
            text-align: left;
            height: 55px;
        }

        </style>
</head>
<body bgcolor="lightblue">
    <form id="form1" runat="server" class="auto-style36">
    <br />
    <br />
    <br />
    <asp:Panel class="Panel" ID="Panel1" runat="server" Width="450px" Height="497px">
        <br />
        
        <table class="auto-style20">
            <tr>
                <td class="auto-style37" colspan="2">
                    &nbsp;&nbsp;&nbsp;&nbsp;<span class="auto-style23"><span class="auto-style24"><asp:ImageButton ID="ImageButton2" runat="server" Height="22px" ImageUrl="~/Imagenes/pngtree-previous-vector-icon-png-image_963232.jpg" OnClick="ImageButton2_Click" Width="24px" />
                    </span></span>&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="auto-style23"><span class="auto-style24">Sumario<br />
                    <br />
                    </span></span>
                </td>
            </tr>
            <tr>
                <td class="auto-style32">
                    &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" Text="Habitacion: "></asp:Label>
                    </td>
                <td class="auto-style25">
                    <asp:Label ID="lblHabitacion" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style33">
                    &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label3" runat="server" Text="Nombre: "></asp:Label>
                    </td>
                <td class="auto-style29">
                    <asp:Label ID="lblNombre" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style33">
                    &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label2" runat="server" Text="Cedula: "></asp:Label>
                    </td>
                <td class="auto-style29">
                    <asp:Label ID="lblCedula" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style32">
                    &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label4" runat="server" Text="Correo Electronico: "></asp:Label>
                    </td>
                <td class="auto-style25">
                    <asp:Label ID="lblEmail" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style33">
                    &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label5" runat="server" Text="Telefono: "></asp:Label>
                    </td>
                <td class="auto-style29">
                    <asp:Label ID="lblTelefono" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style33">
                    &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label6" runat="server" Text="Adultos: "></asp:Label>
                    </td>
                <td class="auto-style29">
                    <asp:Label ID="lblAdultos" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style32">
                    &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label7" runat="server" Text="Niños: "></asp:Label>
                    </td>
                <td class="auto-style25">
                    <asp:Label ID="lblNinos" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style33">
                    &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label8" runat="server" Text="Fecha Inicio: "></asp:Label>
                    </td>
                <td class="auto-style29">
                    <asp:Label ID="lblFechaI" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style33">
                    &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label9" runat="server" Text="Fecha Salida: "></asp:Label>
                    </td>
                <td class="auto-style29">
                    <asp:Label ID="lblFechaS" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style34">
                    &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label14" runat="server" Text="Tipo Alimentacion: "></asp:Label>
                    </td>
                <td class="auto-style35">
                    <asp:Label ID="lblTipoA" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style33">
                    &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label10" runat="server" Text="Dias: "></asp:Label>
                    </td>
                <td class="auto-style29">
                    <asp:Label ID="lblDias" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style34">
                    &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label11" runat="server" Text="Hospedaje: "></asp:Label>
                    </td>
                <td class="auto-style35">
                    <asp:Label ID="lblHospedaje" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style34">
                    &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label15" runat="server" Text="Alimentación: "></asp:Label>
                    </td>
                <td class="auto-style35">
                    <asp:Label ID="lblAlimentacion" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style33">
                    &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label12" runat="server" Text="Impuestos: "></asp:Label>
                    </td>
                <td class="auto-style29">
                    <asp:Label ID="lblImpuestos" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style33">
                    &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label13" runat="server" Text="Total: "></asp:Label>
                    </td>
                <td class="auto-style29">
                    <asp:Label ID="lblTotal" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style7" colspan="2">
                    <strong>
                    <br />
                    <asp:Button ID="btnEnviar" runat="server" BackColor="#002848" CssClass="auto-style11" ForeColor="White" Height="36px" Text="Aceptar" Width="83px" OnClick="btnEnviar_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnVolver" runat="server" BackColor="#002848" CssClass="auto-style11" ForeColor="White" Height="36px" OnClick="btnVolver_Click" Text="Volver" Width="83px" />
                    <br />
                    <br />
                    </strong>
                    <asp:Label ID="lblMensaje" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        
    
  </asp:Panel>
    </form>
</body>
</html>
