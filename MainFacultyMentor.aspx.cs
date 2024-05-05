using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NASCON_MS
{
    public partial class MainFacultyMentor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnFeedback_Click(object sender, EventArgs e)
        {
            Response.Redirect("Feedback.aspx");
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {

        }

        protected void btnViewEventTeam_Click(object sender, EventArgs e)
        {
            

        }

        protected void btnViewEventDetails_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewEventDetails.aspx");
        }
    }
}