<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="ProyectoFDB.Registro" %>

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
         input[type=Date], select {
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
        #TxtFecha {
            width: 1360px;
        }
    </style>
    <body>

        <div class="icon-bar">
            <a class="active" href="Home.aspx"><i class="fa fa-home"></i></a> 
        </div>

        <h3>Registrar</h3>

  
    <div class="cuerpo">
        <form id="form1" runat="server">
             <label for="Nombre">Nombre.</label>
              <asp:TextBox ID="TxtNombre" runat="server"></asp:TextBox>
            <label for="Apellidos">Apellidos. </label>
             <asp:TextBox ID="TxtApellidos" runat="server"></asp:TextBox>
              <label for="Cedula">Cedula. </label>
             <asp:TextBox ID="TxtCedula" runat="server" TextMode="Number"></asp:TextBox>
            <label for="FechaNacimiento">Fecha Nacimiento</label>
            <br><br />
            <asp:TextBox ID="TxtFechaNa" runat="server" TextMode="Date"></asp:TextBox>
            <br><br />
            <label for="Residencia">Residencia. </label>
            <asp:DropDownList ID="DDLResidencia" runat="server">
                   <asp:ListItem Selected="True" Value="1"> San Jose.</asp:ListItem>
                  <asp:ListItem Value="2"> Alajuela. </asp:ListItem>
                  <asp:ListItem Value="3"> Cartago. </asp:ListItem>
                  <asp:ListItem Value="4"> Heredia. </asp:ListItem>
                  <asp:ListItem Value="5"> Guanacaste. </asp:ListItem>
                   <asp:ListItem Value="6"> Puntarenas. </asp:ListItem>
                  <asp:ListItem Value="7"> Limon. </asp:ListItem>
             </asp:DropDownList>
            <label for="IDEstadoCivicl">Estado Civil.</label>
            ;<asp:DropDownList ID="DDLEstadoCvicil" runat="server">
                   <asp:ListItem Selected="True" Value="1"> Casado.</asp:ListItem>
                  <asp:ListItem Value="2"> Divorciado. </asp:ListItem>
                  <asp:ListItem Value="3"> Soltero. </asp:ListItem>
                  <asp:ListItem Value="4"> Union Libre. </asp:ListItem>
                  <asp:ListItem Value="5"> Viudo. </asp:ListItem>

             </asp:DropDownList>
         
              <label for="Telefono">Telefono.</label>
            <asp:TextBox ID="TxtTelofno" runat="server" TextMode="Number"></asp:TextBox>
              <label for="Correo">Correo.</label>
              <asp:TextBox ID="TxtCorreo" runat="server" TextMode="Email"></asp:TextBox>
            <label for="Correo">Nombre Empresa.</label>
             <asp:TextBox ID="TxtNombrEmpresa" runat="server"></asp:TextBox>
              <label for="Correo">Puesto.</label>
              <asp:TextBox ID="TxtPuesto" runat="server"></asp:TextBox>
            <label for="Correo">Años Laborados.</label>
             <asp:TextBox ID="TxtAñosLabor" runat="server" TextMode="Number"></asp:TextBox>
           
             <label for="Carrera">Carrera. </label>
              <asp:TextBox ID="TxtNombreCarrera" runat="server"></asp:TextBox>
     
             <label for="Institucion">Institucion. </label>
             <asp:TextBox ID="TxtInstitucion" runat="server"></asp:TextBox>
            <label for="FechaNacimiento">Fecha Graduacion.</label>
             <br><br />
            <asp:TextBox ID="TxtGraduacion" runat="server" TextMode="Date"></asp:TextBox>
             <br><br />
            <label for="IDEstadoCivicl">Idioma.</label>
              <asp:DropDownList ID="DDLIdioma" runat="server">
                   <asp:ListItem Selected="True" Value="1"> Ingles.</asp:ListItem>
                  <asp:ListItem Value="2"> Italiano. </asp:ListItem>
                  <asp:ListItem Value="3"> Frances. </asp:ListItem>
                   <asp:ListItem Value="4"> Aleman. </asp:ListItem>
                  <asp:ListItem Value="5"> Mandarin. </asp:ListItem>
                   <asp:ListItem Value="6"> Español. </asp:ListItem>
             </asp:DropDownList>
              <asp:Button ID="BtnRegistrar" runat="server" Text="Registrar." OnClick="BtnRegistrar_Click"/>
             
        </form>
    </div>

    </body>
</html> 

