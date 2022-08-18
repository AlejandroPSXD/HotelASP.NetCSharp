<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HabitacionesCons.aspx.cs" Inherits="ProyectoFinal.Empleados.HabitacionesCons" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Consulta de Habitaciones</title>
    <style type="text/css">
        .auto-style3 {
            font-weight: bold;
            text-align: center;
            color:darkblue;
        }
         </style>
</head>
<body bgcolor="skyblue">
    <form id="form2" runat="server">

        <div class="auto-style3">
            <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Italic="False" Font-Size="XX-Large" Text= "Consulta de Habitaciones" ></asp:Label>
            <hr />
            <br />
        </div>

        <div class="auto-style3">
            <asp:GridView ID="grdHabitaciones" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="946px" Height="178px">
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
            <br />
            <hr />
        </div>
        <p>
            <asp:ImageButton ID="ImageButton1" runat="server" Height="36px" ImageUrl="~/Imagenes/pngtree-previous-vector-icon-png-image_963232.jpg" PostBackUrl="~/Empleados/Consultas.aspx" Width="40px" />
        </p>

    </form>
</body>
</html>
