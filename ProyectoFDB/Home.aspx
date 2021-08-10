<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ProyectoFDB.Home" %>

<!DOCTYPE html>
<html>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        body {margin:0;}

        .icon-bar {
            width: 100%;
            background-color: #555;
            overflow: auto;
        }

        .icon-bar a {
            float: left;
            width: 20%;
            text-align: center;
            padding: 12px 0;
            transition: all 0.3s ease;
            color: white;
            font-size: 36px;
        }

        .icon-bar a:hover {
            background-color: #000;
        }

        .active {
            background-color: #5497A7;
        }
         .ff {
            background-color: #50858b;
        }
    </style>
    <body>

        <form id="form1" runat="server">

        <div class="icon-bar">
            <a class="active" href="Registro.aspx"><i class="fa fa-desktop"></i></a> 
            <a class="ff" href="Academico.aspx"><i class="fa fa-university"></i></a>
            <a class="ff" href="Consultar.aspx"><i class="fa fa-users"></i></a> 
            <a class="ff" href="Modificar.aspx"><i class="fa fa-edit"></i></a>
             <a class="ff" href="Eliminar.aspx"><i class="fa fa-trash"></i></a> 

        </div>

            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="462px" Width="1218px">
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
        </form>

    </body>
</html> 

