<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reservations.aspx.cs" Inherits="ProyectoFinal.Reservations" %>

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
        .auto-style7 {
            width: 220px;
            color: #003300;
            height: 16px;
        }
        .auto-style8 {
            height: 16px;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style11 {
        text-align: center;
        height: 120px;
    }
        </style>
</head>
<body bgcolor="lightblue">
    <form id="form2" runat="server">
        <div>
            <div class="auto-style1">
                <span class="auto-style6">Reservaciones</span><hr />
            </div>
            <table style="width: 100%;" >
                <tr>
                    <td class="auto-style2">Habitación:</td>
                    <td>
                        <asp:DropDownList ID="cmbHabitacion" runat="server" AutoPostBack="True">
                        </asp:DropDownList>
                        <asp:Label ID="lblPrecio" runat="server" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">Nombre: </td>
                    <td class="auto-style10">
                        <asp:TextBox ID="txtNombre" runat="server" BackColor="#99FF99" Width="224px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtNombre" ErrorMessage="Debe digitar un nombre" ForeColor="#CC3300">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">Cédula: </td>
                    <td class="auto-style10">
                        <asp:TextBox ID="txtCedula" runat="server" BackColor="#99FF99" Width="224px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtCedula" ErrorMessage="Debe digitar un nombre" ForeColor="#CC3300">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtCedula" ErrorMessage="Formato erróneo (0-0000-0000)" ForeColor="Red" ValidationExpression="\d{1}-\d{4}-\d{4}">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">Email</td>
                    <td class="auto-style10">
                        <asp:TextBox ID="txtEmail" runat="server" BackColor="#99FF99" Width="223px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmail" ErrorMessage="Debe digitar un email" ForeColor="#CC3300">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtEmail" ErrorMessage="Formato de email erroneo " ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Telefono</td>
                    <td>
                        <asp:TextBox ID="txtTelefono" runat="server" BackColor="#99FF99" Width="222px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtTelefono" ErrorMessage="Debe digitar un telefono" ForeColor="#CC3300">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtTelefono" ErrorMessage="Formato de telefono erroneo (9999-9999)" ForeColor="#FF3300" ValidationExpression="\d{4}-\d{4}">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">Adultos: </td>
                    <td class="auto-style10">
                        <asp:TextBox ID="txtAdultos" runat="server" BackColor="#99FF99" Width="224px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtAdultos" ErrorMessage="Debe digitar un nombre" ForeColor="#CC3300">*</asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator4" runat="server" BorderStyle="None" ControlToValidate="txtAdultos" ForeColor="Red" MaximumValue="6" MinimumValue="1" Type="Integer">*</asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">Niños: </td>
                    <td class="auto-style10">
                        <asp:TextBox ID="txtNinos" runat="server" BackColor="#99FF99" Width="224px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtNinos" ErrorMessage="Debe digitar un nombre" ForeColor="#CC3300">*</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtAdultos" ControlToValidate="txtNinos" ErrorMessage="CompareValidator" ForeColor="Red" Operator="LessThan" Type="Integer">*</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">Fecha Entrada: </td>
                    <td class="auto-style10">
                        <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">Fecha Salida: </td>
                    <td class="auto-style10">
                        <asp:Calendar ID="Calendar2" runat="server"></asp:Calendar>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">Tipo de Alimentación</td>
                    <td class="auto-style8">
                        <asp:RadioButton ID="rb1" runat="server" CausesValidation="True" GroupName="x" Text="Tres Tiempos" Checked="True" ValidationGroup="x" />
                        <asp:RadioButton ID="rb2" runat="server" CausesValidation="True" GroupName="x" Text="Ejecutiva" ValidationGroup="x" />
                        <asp:RadioButton ID="rb3" runat="server" CausesValidation="True" GroupName="x" Text="Todo Incluido" ValidationGroup="x" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" colspan="2">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="#CC3300" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11" colspan="2">
                        <hr />
                        <br />
&nbsp;<asp:Button ID="btnCalcular" runat="server" OnClick="btnCalcular_Click" Text="Procesar" />
                        &nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnLimpiar" runat="server" Text="Limpiar" OnClick="btnLimpiar_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        <hr />
                        <asp:Label ID="lblMEnsaje" runat="server"></asp:Label>
                        <br />
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" PostBackUrl="~/Clientes/ClientsMenu.aspx">Regresar</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" colspan="2">
                        &nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
    <p>
&nbsp;&nbsp;
        </p>
    
</body>
</html>
