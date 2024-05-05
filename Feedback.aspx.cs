using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace NASCON_MS
{
    public partial class Feedback : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Nothing needs to be done here
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // Get the feedback data from the form
            string name = txtName.Text;
            string phone = txtPhone.Text;
            
            string feedbackText = txtFeedback.Text;

            // Save the feedback into the database
            SaveFeedback(name, phone, feedbackText);
        }

        // Method to get the selected rating from the RadioButton controls
        

        // Method to save feedback data into the database
        private void SaveFeedback(string name, string phone, string feedbackText)
        {
            // Connection string to your SQL Server database
            string connectionString = "Data Source=DESKTOP-T9E2MAB\\SQLEXPRESS01;Initial Catalog=NMS;Integrated Security=True;";

            // SQL query to insert feedback into the database
            string query = "INSERT INTO Feedback_ (Name, Phone, Feedback) VALUES (@Name, @Phone, @Feedback)";

            // Create a SqlConnection object
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                // Create a SqlCommand object with the query and connection
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    // Add parameters to the SqlCommand to prevent SQL injection
                    command.Parameters.AddWithValue("@Name", name);
                    command.Parameters.AddWithValue("@Phone", phone);
                    
                    command.Parameters.AddWithValue("@Feedback", feedbackText);

                    // Open the connection
                    connection.Open();

                    // Execute the query
                    command.ExecuteNonQuery();
                    connection.Close();
                }
            }
        }

    }
}
