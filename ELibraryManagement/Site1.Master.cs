using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ELibraryManagement
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lnkAdminLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminLogin.aspx");
        }

        protected void lnkPublisherMgmt_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminpublisherManagement.aspx");

        }

        protected void lnkAuthorMgmt_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminAutherManagement.aspx");

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminBookIssue.aspx");


        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminBookInventory.aspx");

        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminMemberManagement.aspx");

        }
    }
}