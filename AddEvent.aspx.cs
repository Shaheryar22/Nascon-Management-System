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
    public partial class AddEvent : System.Web.UI.Page
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
                SqlCommand cmdToCheck = new SqlCommand("SELECT name,eventID FROM Events WHERE name=@name OR eventID=@eventID" , con);
                cmdToCheck.Parameters.AddWithValue("@name", name.Text);
                cmdToCheck.Parameters.AddWithValue("@eventID", eventID.Text);
                SqlDataReader reader = cmdToCheck.ExecuteReader();

                if (reader.HasRows)
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('EventID or name already exists Enter Carefully.');", true);
                }
                else
                {
                    reader.Close(); // Close the previous reader

                    // Insert the new student
                    SqlCommand cmd = new SqlCommand(@"INSERT INTO [dbo].[Events] ([name], [eventID], [date], [time], [mentor]) VALUES (@name, @eventID, @date, @time, @mentor)", con);
                    cmd.Parameters.AddWithValue("@name", name.Text);
                    cmd.Parameters.AddWithValue("@eventID", eventID.Text);
                    cmd.Parameters.AddWithValue("@date", date.Text);
                    cmd.Parameters.AddWithValue("@time", time.Text);
                    cmd.Parameters.AddWithValue("@mentor", mentor.Text);

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