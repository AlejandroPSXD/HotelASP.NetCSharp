<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="intro.aspx.cs" Inherits="ProyectoFinal.intro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
     <link href="styles.css" rel="stylesheet" type="text/css"/>
    <style type="text/css">
        .auto-style1 {
            height: 58px;
            color:forestgreen;
        }
        .auto-style2{
            text-align:center;
        }
        .auto-style3 {
            width: 778px;
        }
    </style>
</head>
<body bgcolor="skyblue">&nbsp;<form id="form1" runat="server">
    <br />
    <br />
    <hr />
        <div>
            <marquee style="font-size: 35px"; style="padding: 10px" class="auto-style1"> Hotel Arenal</marquee>
        </div>
    <hr />
        <div class ="auto-style2">
            <br />
            <asp:Image ID="Image1" runat="server" Height="105px" ImageUrl="~/Imagenes/ArenalHotel.png" Width="124px" />

            <br />
            <br />

            <br />

        </div>
        <div class ="auto-style2">
            <iframe height="315" src="https://www.youtube.com/embed/t4SOnlNu5IU" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen class="auto-style3"></iframe>
            <br />
            <br />
            <br />
        </div>

        <div style="text-align:center">
        </div>

    </form>
</body>
</html>
