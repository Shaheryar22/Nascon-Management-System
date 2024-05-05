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
    public partial class RemoveEvent : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRemove_Click(object sender, EventArgs e)
        {
            string connectionString = "Data Source=DESKTOP-T9E2MAB\\SQLEXPRESS01;Initial Catalog=NMS;Integrated Security=True;";

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                con.Open();

                // Check if the event already exists
                SqlCommand cmdToCheck = new SqlCommand("SELECT name FROM Events WHERE name=@name OR eventID=@eventID", con);
                cmdToCheck.Parameters.AddWithValue("@name", name.Text);
                cmdToCheck.Parameters.AddWithValue("@eventID", eventID.Text);
                SqlDataReader reader = cmdToCheck.ExecuteReader();

                if (reader.HasRows)
                {
                    reader.Close(); // Close the previous reader

                    // Delete the existing event
                    SqlCommand cmdDelete = new SqlCommand("DELETE FROM Events WHERE name=@name OR eventID=@eventID", con);
                    cmdDelete.Parameters.AddWithValue("@name", name.Text);
                    cmdDelete.Parameters.AddWithValue("@eventID", eventID.Text);
                    cmdDelete.ExecuteNonQuery();

                    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Event with the same name or ID already exists. The existing event has been removed.');", true);
                }
                else
                {
                    reader.Close(); // Close the previous reader

                    // Inform the user that the event does not exist and needs to be added
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Event does not exist. Please add the event.');", true);
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