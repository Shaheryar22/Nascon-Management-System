using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NASCON_MS
{
    public partial class MainAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddStudentTeam_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddStudent.aspx");
        }

        protected void btnAddFacultyMentor_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddFaculty.aspx");
        }

        protected void btnRemoveEvent_Click(object sender, EventArgs e)
        {
            Response.Redirect("RemoveEvent.aspx");
        }

        protected void btnAddEvent_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddEvent.aspx");
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Response.RedirectPermanent("Login.aspx");
        }

    }
}