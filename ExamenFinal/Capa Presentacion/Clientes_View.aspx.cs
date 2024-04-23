using System;
using System.Web.UI;
using System.Data.SqlClient;
using System.Configuration;

namespace ExamenFinal.Capa_Presentacion
{
    public partial class Clientes_View : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Código de inicialización
        }

        protected void AgregarCliente_Click(object sender, EventArgs e)
        {
            string connString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connString))
            {
                conn.Open();
                string sql = "INSERT INTO Clientes (Nombre, Email, Telefono) VALUES (@Nombre, @Email, @Telefono)";
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    cmd.Parameters.AddWithValue("@Nombre", nombre.Value);
                    cmd.Parameters.AddWithValue("@Email", email.Value);
                    cmd.Parameters.AddWithValue("@Telefono", telefono.Value);
                    cmd.ExecuteNonQuery();
                }
            }
        }

        protected void BorrarCliente_Click(object sender, EventArgs e)
        {
            // Implementa la lógica para borrar un cliente
        }

        protected void ModificarCliente_Click(object sender, EventArgs e)
        {
            // Implementa la lógica para modificar un cliente
        }
    }
}
