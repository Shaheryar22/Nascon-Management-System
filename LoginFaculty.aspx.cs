using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NASCON_MS
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_LoadF(object sender, EventArgs e)
        {
            // This method is intentionally left blank
        }

        protected void btnLogin_ClickF(object sender, EventArgs e)
        {
            // Initialize the connection string
            string connectionString = "Data Source=DESKTOP-T9E2MAB\\SQLEXPRESS01;Initial Catalog=NMS;Integrated Security=True;";
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                try
                {
                    // Open the connection
                    con.Open();

                    // Create the SQL command with parameter placeholders
                    SqlCommand cmd = new SqlCommand("SELECT * FROM Register WHERE username=@username AND password=@password", con);

                    // Add parameters to avoid SQL injection
                    cmd.Parameters.AddWithValue("@username", username.Text);
                    cmd.Parameters.AddWithValue("@password", password.Text);

                    // Execute the command using a DataAdapter
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataSet ds = new DataSet();
                    da.Fill(ds, "Register");

                    // Check if user exists
                    if (ds.Tables["Register"].Rows.Count == 0)
                    {
                        Response.Write("Invalid Username or Password");
                    }
                    else
                    {
                        Response.Write("<script>alert('Login successful');</script>");
                        // Optionally redirect the user
                        Response.Redirect("MainFacultyMentor.aspx");
                    }
                }
                catch (Exception ex)
                {
                    // Handle any errors that might have occurred
                    Response.Write("Error: " + ex.Message);
                }
                finally
                {
                    // Ensure the connection is closed
                    if (con != null)
                    {
                        con.Close();
                    }
                }
            }
        }

        protected void btnCancel_ClickF(object sender, EventArgs e)
        {
            // Optionally handle cancel click, maybe redirect or clear fields
            // Response.Redirect("HomePage.aspx");
        }
    }
}
