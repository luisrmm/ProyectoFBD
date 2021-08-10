using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace ProyectoFDB
{
    public partial class Registro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnRegistrar_Click(object sender, EventArgs e)
        {
            int cedula;
            string nombre;
            string apellido;
            DateTime fechaNacimiento;
            int telefono;
            string correo;
            int estadoID;
            int residenciaID;
            string nombreEmpresa;
            string puesto;
            int añosLaborados;
            string nombreCarrera;
            string nombreInsti;
            DateTime fechaGrad;
            int idiomaID;

            nombre = TxtNombre.Text;
            apellido = TxtApellidos.Text;
            fechaNacimiento = DateTime.Parse(TxtFechaNa.Text);
            cedula = int.Parse(TxtCedula.Text);
            residenciaID = int.Parse(DDLResidencia.SelectedItem.Value);
            estadoID = int.Parse(DDLEstadoCvicil.SelectedItem.Value);
            telefono = int.Parse(TxtTelofno.Text);
            correo = TxtCorreo.Text;
            nombreEmpresa = TxtNombre.Text;
            puesto = TxtPuesto.Text;
            añosLaborados = int.Parse(TxtAñosLabor.Text);
            nombreCarrera = TxtNombreCarrera.Text;
            nombreInsti = TxtInstitucion.Text;
            fechaGrad = DateTime.Parse(TxtGraduacion.Text);
            idiomaID = int.Parse(DDLIdioma.SelectedItem.Value);
            RegistroPrcoce c = new RegistroPrcoce();
            c.InsertRegistro(cedula, nombre, apellido, fechaNacimiento, telefono, correo, estadoID, residenciaID, nombreEmpresa, puesto, añosLaborados, nombreCarrera, nombreInsti, fechaGrad, idiomaID);
        }
    }
}