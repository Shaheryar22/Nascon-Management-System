using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace NASCON_MS
{
    public partial class Registeration : System.Web.UI.Page
    {
        string gender;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-T9E2MAB\\SQLEXPRESS01;Initial Catalog=NMS;Integrated Security=True;");
            SqlCommand cmdToCheck = new SqlCommand("select username from Register where username='" + username.Text + "'", con);
            SqlDataAdapter adapter = new SqlDataAdapter(cmdToCheck);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            if (dt.Rows.Count > 0) {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('username Already Exists');", true);


            }
            else {


                SqlCommand cmd = new SqlCommand(@"INSERT INTO [dbo].[Register]
           ([name]
           ,[email]
           ,[phone]
           ,[username]
           ,[password]
           ,[gender])
     VALUES
           ('" + fullname.Text + "','" + email.Text + "','" + phone.Text + "','" + username.Text + "','" + password.Text + "','" + gender + "')", con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('User is registered successfully')</script>");
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {

        }

        protected void gender_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }
    }
}