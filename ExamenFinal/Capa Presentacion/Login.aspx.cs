using System;
using System.Web.UI;
using System.Data.SqlClient;
using System.Configuration;
using System.Security.Cryptography;
using System.Text;

namespace ExamenFinal.Presentacion
{
    public partial class Login : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string username = Request.Form["username"];
            string password = Request.Form["password"];

            if (AuthenticateUser(username, password))
            {
                // Usuario autenticado correctamente, redirigir a la página de inicio.
                Response.Redirect("Menuprincipal.aspx");
            }
            else
            {
                // Autenticación fallida, mostrar algún mensaje de error.
                lblErrorMessage.Text = "Usuario o contraseña incorrectos";
            }
        }

        
        protected void Button1_Click(object sender, EventArgs e)
        {
            string username = Request.Form["username"];
            string password = Request.Form["password"];
            
            if (AuthenticateUser(username, password))
            {
                // Usuario autenticado correctamente, redirigir a la página de inicio.
                Response.Redirect("Menuprincipal.aspx");
            }
            else
            {
                // Autenticación fallida, mostrar algún mensaje de error.
                lblErrorMessage.Text = "Usuario o contraseña incorrectos";
            }
        }

        private bool AuthenticateUser(string username, string password)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                try
                {
                    con.Open();
                    string query = "SELECT PasswordHash FROM usuarios WHERE Username=@username";
                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@username", username);

                        object result = cmd.ExecuteScalar();
                        if (result != null)
                        {
                            byte[] storedHash = (byte[])result;
                            byte[] hashOfInput = HashPassword(password);
                            return CompareHashes(storedHash, hashOfInput);
                        }
                    }
                }
                catch (Exception ex)
                {
                    // Log the exception details
                    Console.WriteLine(ex.Message);
                }
            }
            return false;
        }

        private byte[] HashPassword(string password)
        {
            using (SHA256 sha256Hash = SHA256.Create())
            {
                return sha256Hash.ComputeHash(Encoding.UTF8.GetBytes(password));
            }
        }

        private bool CompareHashes(byte[] storedHash, byte[] inputHash)
        {
            for (int i = 0; i < storedHash.Length; i++)
            {
                if (storedHash[i] != inputHash[i])
                    return false;
            }
            return true;
        }
    }
}
