using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ProyectoFDB
{
    public class RegistroPrcoce
    {
        string cadenaConexion = "Server = DESKTOP-PA9L64L; Database = ProyectoFBD; Integrated Security = True";

        public void InsertRegistro(int cedula, string nombre, string apellido, DateTime fechaNacimiento, int telefono, string correo, int estadoID, int residenciaID, string nombreEmpresa, string puesto, int añosLaborados, string nombreCarrera, string nombreInsti, DateTime fechGra, int idiomaID)
        {

           
            // Se utiliza la instrucción using para asegurarnos la desctrucción de los objetos y liberar recursos
            using (SqlConnection con = new SqlConnection(cadenaConexion))
            {
                try
                {
                    // Se abre la conexión
                    con.Open();

                    // Se prepara una transacción por si acaso falla la ejecución haya una vuelta atrás
                    using (var trans = con.BeginTransaction())
                    {
                        try
                        {
                            using (SqlCommand com = new SqlCommand())
                            {
                                // Al comando se le asigna una conexión y la transacción
                                com.Connection = con;
                                com.Transaction = trans;

                                // Se le indica el tipo de comando y el nombre
                                com.CommandType = CommandType.StoredProcedure;
                                com.CommandText = "spInsertAspirante";

                                // Se añaden los parámetros de entrada
                                com.Parameters.AddWithValue("@cedula", cedula);
                                com.Parameters.AddWithValue("@Nombre", nombre);
                                com.Parameters.AddWithValue("@Apellido", apellido);
                                com.Parameters.AddWithValue("@FechaNacimiento", fechaNacimiento);
                                com.Parameters.AddWithValue("@Telefono", telefono);
                                com.Parameters.AddWithValue("@Correo", correo);
                                com.Parameters.AddWithValue("@EstadoID", estadoID);
                                com.Parameters.AddWithValue("@ResidenciaID", residenciaID);
                                com.Parameters.AddWithValue("@NombreEmpresa", nombreEmpresa);
                                com.Parameters.AddWithValue("@Puesto", puesto);
                                com.Parameters.AddWithValue("@AñosLaborados", añosLaborados);

                                // Se ejecuta el procedimiento y se comprueba la salida
                                var registrosAfectados = com.ExecuteNonQuery();
                            }
                            using (SqlCommand com = new SqlCommand())
                            {
                                // Al comando se le asigna una conexión y la transacción
                                com.Connection = con;
                                com.Transaction = trans;

                                // Se le indica el tipo de comando y el nombre
                                com.CommandType = CommandType.StoredProcedure;
                                com.CommandText = "spInsertAcademico";

                                // Se añaden los parámetros de entrada
                                com.Parameters.AddWithValue("@NombreCarrera", nombreCarrera);
                                com.Parameters.AddWithValue("@NombreInstitucion", nombreInsti);
                                com.Parameters.AddWithValue("@FechaGraduacion", fechGra);
                                com.Parameters.AddWithValue("@IdiomaID", idiomaID);
                                com.Parameters.AddWithValue("@cedula", cedula);

                                // Se ejecuta el procedimiento y se comprueba la salida
                                var registrosAfectados = com.ExecuteNonQuery();
                            }

                            trans.Commit();
                        }
                        catch (Exception ex)
                        {
                            trans.Rollback();
                            Console.WriteLine("ERROR : " + ex.Message);
                        }
                    }
                }
                catch (Exception ex)
                {
                    Console.WriteLine("ERROR : " + ex.Message);
                }
                finally
                {
                    // Nos aseguramos de cerrar la conexión en caso de error
                    con.Close();
                }
            }

        }

        public int validarID(int cedula)
        {
            
            // Se utiliza la instrucción using para asegurarnos la desctrucción de los objetos y liberar recursos
            using (SqlConnection con = new SqlConnection(cadenaConexion))
            {
                try
                {
                    // Se abre la conexión
                    con.Open();

                    // Se prepara una transacción por si acaso falla la ejecución haya una vuelta atrás
                    using (var trans = con.BeginTransaction())
                    {
                        try
                        {
                            using (SqlCommand cmd = con.CreateCommand())
                            {
                                cmd.CommandText =  .getQuery();
                                cmd.CommandType = CommandType.StoredProcedure;
                                cmd.Parameters.AddWithValue("@cedula", cedula);

                                var returnParameter = cmd.Parameters.Add("@cedula", SqlDbType.Int);
                                returnParameter.Direction = ParameterDirection.ReturnValue;

                             
                                cmd.ExecuteNonQuery();
                                cedula = (int)cmd.Parameters["@cedula"].Value;
                            }
                            trans.Commit();
                        }
                        catch (Exception ex)
                        {
                            trans.Rollback();
                            Console.WriteLine("ERROR : " + ex.Message);
                        }
                    }
                }
                catch (Exception ex)
                {
                    Console.WriteLine("ERROR : " + ex.Message);
                }
                finally
                {
                    // Nos aseguramos de cerrar la conexión en caso de error
                    con.Close();
                }
            }
            return 0;
        }

    }
}