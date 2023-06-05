using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ABMArticulos_NetFramework_API.AccesoDatos
{
    public class AccesoDB
    {
        public SqlConnection ConnectionBD = new SqlConnection();
        public string strConDatos;

        public AccesoDB() {
            strConDatos = @"Data Source = LAPTOP-GH9CQHCN\SQLEXPRESS;
                Initial Catalog = ABMArticulos;
                Persist Security Info=False;
                User ID=modula;
                Password=Timesol1";
        }

        public void DesConectar()
        {
            try
            {
                ConnectionBD.Close();
            }
            catch (Exception e)
            {

                throw e;
            }
        }

        public void Conectar()
        {
            try
            {
                if (this.ConnectionBD.State == 0)
                {
                    ConnectionBD.ConnectionString = strConDatos;
                    ConnectionBD.Open();
                }
            }
            catch (Exception e)
            {

                throw e;
            }
        }

        public DataTable execDT2(SqlCommand command)
        {
            try
            {
                command.Connection = this.ConnectionBD;
                Conectar();
                SqlDataAdapter da = new SqlDataAdapter(command);

                DataTable dt = new DataTable();
                da.Fill(dt);
                return dt;
            }
            catch (Exception e)
            {

                throw e;
            }
            finally
            {
                DesConectar();
            }
        }

        public DataTable execDT(SqlCommand Command)
        {
            try
            {
                Command.Connection = this.ConnectionBD;
                Conectar();
                SqlDataAdapter da = new SqlDataAdapter(Command);

                DataTable dt = new DataTable();
                da.Fill(dt);

                return dt;
            }
            catch (Exception e)
            {
                DesConectar();
                throw e;
            }
            finally
            {
                DesConectar();
            }
        }
    }
}
