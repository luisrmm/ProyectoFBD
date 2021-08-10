using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoFDB
{
    public partial class Home : System.Web.UI.Page
    {

        public DataTable cargar()
        {
            DataTable tabla = new DataTable();

            string cadenaConexion = "Server = DESKTOP-PA9L64L; Database = ProyectoFBD; Integrated Security = True";
            string sqlconsulta = "SP_SelectAspirantes";
            SqlConnection conexion = new SqlConnection(cadenaConexion);


            conexion.Open();
            SqlCommand comando = new SqlCommand(sqlconsulta, conexion);
            comando.CommandType = CommandType.StoredProcedure;
            comando.ExecuteNonQuery();
            SqlDataAdapter adaptar = new SqlDataAdapter(comando);
            adaptar.Fill(tabla);
            return tabla;

        }

        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataSource = cargar();
            GridView1.DataBind();
        }
    }
}