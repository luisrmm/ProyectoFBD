<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Consultar.aspx.cs" Inherits="ProyectoFDB.Consultar" %>

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

        input[type=text], select {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        input[type=number], select {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        input[type=tel], select {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        input[type=email], select {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }


        input[type=submit] {
            width: 100%;
            background-color: #50858b;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        input[type=submit]:hover {
            background-color: #5497A7;
        }

        .cuerpo {
            border-radius: 5px;
            background-color: #f2f2f2;
            padding: 20px;
        }
    </style>
    <body>

        <div class="icon-bar">
            <a class="active" href="Home.aspx"><i class="fa fa-home"></i></a> 
        </div>

        <h3>Consultar</h3>

  
    <div class="cuerpo">
        <form id="form1" runat="server">
            <asp:CheckBox ID="Idioma" runat="server" Text="Idioma" />
            <asp:CheckBox ID="Carrera" runat="server" Text="Carrera" />
            <asp:CheckBox ID="Idioma_Carrera" runat="server" Text="Idioma y Carrera" />
              <br>
            <asp:DropDownList ID="DDLIdioma" runat="server">
            </asp:DropDownList>
            <asp:DropDownList ID="DDLCarrera" runat="server">
            </asp:DropDownList>
            <br />
             <asp:Button ID="BtnConsultar" runat="server" Text="Consultar."/>
             
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
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
    </div>

    </body>
</html> 
