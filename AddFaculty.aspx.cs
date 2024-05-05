using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Drawing.Drawing2D;

namespace NASCON_MS
{
    public partial class AddFaculty : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            string connectionString = "Data Source=DESKTOP-T9E2MAB\\SQLEXPRESS01;Initial Catalog=NMS;Integrated Security=True;";

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                con.Open();

                // Check if the username already exists
                SqlCommand cmdToCheck = new SqlCommand("SELECT username FROM Team WHERE username=@Username", con);
                cmdToCheck.Parameters.AddWithValue("@Username", username.Text);
                SqlDataReader reader = cmdToCheck.ExecuteReader();

                if (reader.HasRows)
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Username already exists.');", true);
                }
                else
                {
                    reader.Close(); // Close the previous reader

                    // Insert the new student
                    SqlCommand cmd = new SqlCommand(@"INSERT INTO [dbo].[Team] ([fullname], [email], [phone], [username], [password]) VALUES (@Name, @Email, @Phone, @Username, @Password)", con);
                    cmd.Parameters.AddWithValue("@Name", fullname.Text);
                    cmd.Parameters.AddWithValue("@Email", email.Text);
                    cmd.Parameters.AddWithValue("@Phone", phone.Text);
                    cmd.Parameters.AddWithValue("@Username", username.Text);
                    cmd.Parameters.AddWithValue("@Password", password.Text);

        cmd.ExecuteNonQuery();

            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Student added successfully.');", true);
        }
    }

    Response.Redirect("MainAdmin.aspx");
}



protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("MainAdmin.aspx");
        }

        protected void gender_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}