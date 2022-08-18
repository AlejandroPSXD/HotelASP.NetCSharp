<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmpleadosMenu.aspx.cs" Inherits="ProyectoFinal.Empleados.EmpleadosMenu" %>

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
        }
    </style>
</head>
<body bgcolor="skyblue">
    <form id="form2" runat="server">
        <div class="auto-style3">
            <a>Menú Empleados</a>
            <hr />
        </div>
        <div>
        </div>
        <asp:TreeView ID="TreeView1" runat="server" ImageSet="XPFileExplorer" Font-Bold="True" Font-Size="XX-Large" Font-Strikeout="False" NodeIndent="15">
            <HoverNodeStyle Font-Underline="True" ForeColor="#6666AA" />
            <Nodes>
                <asp:TreeNode Text="Habitaciones" Value="Habitaciones" NavigateUrl="~/Empleados/Habitaciones.aspx" Target="contenido"></asp:TreeNode>
                <asp:TreeNode Text="Reservas" Value="Reservas" NavigateUrl="~/Empleados/Reservas.aspx" Target="contenido"></asp:TreeNode>
                <asp:TreeNode Text="Consultas" Value="Consultas" NavigateUrl="~/Empleados/Consultas.aspx" Target="contenido">
                    <asp:TreeNode Text="Reservas" Value="Reservas" NavigateUrl="~/Empleados/ReservasCons.aspx" Target="contenido"></asp:TreeNode>
                    <asp:TreeNode Text="Habitaciones" Value="Habitaciones" NavigateUrl="~/Empleados/HabitacionesCons.aspx" Target="contenido"></asp:TreeNode>
                </asp:TreeNode>
            </Nodes>
            <NodeStyle Font-Names="Tahoma" Font-Size="8pt" ForeColor="Black" HorizontalPadding="2px" NodeSpacing="0px" VerticalPadding="2px" />
            <ParentNodeStyle Font-Bold="False" />
            <SelectedNodeStyle BackColor="#B5B5B5" Font-Underline="False" HorizontalPadding="0px" VerticalPadding="0px" />
        </asp:TreeView>
    <hr />
        <p>
            <asp:ImageButton ID="ImageButton1" runat="server" Height="36px" ImageUrl="~/Imagenes/pngtree-previous-vector-icon-png-image_963232.jpg" PostBackUrl="~/MainMenu.aspx" Width="40px" />
        </p>
    </form>
    </body>
</html>