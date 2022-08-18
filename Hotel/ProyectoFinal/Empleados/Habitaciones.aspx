<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Habitaciones.aspx.cs" Inherits="ProyectoFinal.Empleados.Habitaciones" %>

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
        .auto-style9 {
            width: 220px;
            color: #003300;
            height: 26px;
        }
        .auto-style10 {
            height: 26px;
        }
        .auto-style11 {
        text-align: center;
        height: 120px;
    }
        </style>
</head>
<body bgcolor="lightblue">
    <form id="form2" runat="server">
            <div class="auto-style1">
                <span class="auto-style6">Habitaciones</span><hr />
            </div>
            <table style="width: 100%;" >
                <tr>
                    <td class="auto-style9">Descripcion</td>
                    <td class="auto-style10">
                        <asp:TextBox ID="txtDescripcion" runat="server" BackColor="#99FF99" Width="224px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">Precio</td>
                    <td class="auto-style10">
                        <asp:TextBox ID="txtPrecio" runat="server" BackColor="#99FF99" Width="224px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11" colspan="2">
                        <asp:Label ID="lblMensaje" runat="server"></asp:Label>
                        <hr />
                        <hr />
                        <div>
                            <asp:Button ID="btnAnterior" runat="server" OnClick="btnAnterior_Click" Text="Anterior" />
                            &nbsp;
                            <asp:Button ID="btnInsertar" runat="server" OnClick="btnInsertar_Click" Text="Insertar" />
                            &nbsp;
                            <asp:Button ID="btnModificar" runat="server" OnClick="btnModificar_Click" Text="Modificar" />
                            &nbsp;
                            <asp:Button ID="btnEliminar" runat="server" OnClick="btnEliminar_Click" Text="Eliminar" />
                            &nbsp;
                            <asp:Button ID="btnSiguiente" runat="server" OnClick="btnSiguiente_Click" Text="Siguiente" />

                        </div>
                    </td>
                </tr>
            </table>
            <p>
            <asp:ImageButton ID="ImageButton1" runat="server" Height="36px" ImageUrl="~/Imagenes/pngtree-previous-vector-icon-png-image_963232.jpg" PostBackUrl="~/Empleados/EmpleadosMenu.aspx" Width="40px" />
            </p>
    </form> 
</body>
</html>
