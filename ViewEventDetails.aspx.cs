using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NASCON_MS
{
    public partial class ViewEventDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Populate the event table or display "No Events Assigned" if there are no events
            DataTable eventsTable = GetEventsTable(); // Implement this method to fetch events data from your database
            if (eventsTable.Rows.Count > 0)
            {
                ltlEventTable.Text = GenerateEventTable(eventsTable);
            }
            else
            {
                ltlEventTable.Text = "<p>No Events Assigned</p>";
            }
        }

        private DataTable GetEventsTable()
        {
            string connectionString = "Data Source=DESKTOP-T9E2MAB\\SQLEXPRESS01;Initial Catalog=NMS;Integrated Security=True;";
            string query = "SELECT name AS EventName, eventID AS EventID, date AS Date, time AS Time FROM Events";

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    DataTable eventsTable = new DataTable();
                    con.Open();
                    SqlDataReader reader = cmd.ExecuteReader();
                    eventsTable.Load(reader);
                    return eventsTable;
                }
            }
        }

        private string GenerateEventTable(DataTable eventsTable)
        {
            string tableHtml = "<table><tr><th>Event Name</th><th>Event ID</th><th>Date</th><th>Time</th></tr>";
            foreach (DataRow row in eventsTable.Rows)
            {
                tableHtml += "<tr>";
                tableHtml += $"<td>{row["EventName"]}</td>";
                tableHtml += $"<td>{row["EventID"]}</td>";
                tableHtml += $"<td>{row["Date"]}</td>";
                tableHtml += $"<td>{row["Time"]}</td>";
                tableHtml += "</tr>";
            }
            tableHtml += "</table>";
            return tableHtml;
        }

    }
}