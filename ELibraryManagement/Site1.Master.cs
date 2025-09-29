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
            try
            {
                if (Session["role"].Equals(""))
                {

                    lnkUserLogin.Visible = true; //USERLOGIN
                    lnkSignUp.Visible = true;      //SignUP
                    lnkLogout.Visible = false;      //LOGOUT
                    lblHelloUser.Visible = false;     //HElloUser


                    lnkAdminLogin.Visible = true;     //ADMIN LOGIN

                    lnkPublisherMgmt.Visible = false;     //PublisherMgm
                    lnkAuthorMgmt.Visible = false;     //lnkAuthorMgmt
                    LinkButton1.Visible = false;     //Book Issue
                    LinkButton2.Visible = false;     //Book Inventory
                    LinkButton3.Visible = false;     //Member Management


                }
                else if(Session["role"].Equals("user"))
                {

                    lnkUserLogin.Visible = false; //USERLOGIN
                    lnkSignUp.Visible = false;      //SignUP

                    lnkLogout.Visible = true;      //LOGOUT
                    lblHelloUser.Visible = true;     //HElloUser
                    lblHelloUser.Text = "Hello  " + Session["username"].ToString();



                    lnkAdminLogin.Visible = true;     //ADMIN LOGIN

                    lnkPublisherMgmt.Visible = false;     //PublisherMgm
                    lnkAuthorMgmt.Visible = false;     //lnkAuthorMgmt
                    LinkButton1.Visible = false;     //Book Issue
                    LinkButton2.Visible = false;     //Book Inventory
                    LinkButton3.Visible = false;     //Member Management
                }
                else if (Session["role"].Equals("admin"))
                {
                    lnkUserLogin.Visible = false; //USERLOGIN
                    lnkSignUp.Visible = false;      //SignUP

                    lnkLogout.Visible = true;      //LOGOUT
                    lblHelloUser.Visible = true;     //HElloUser
                    lblHelloUser.Text = "Hello  ADMIN" ;



                    lnkAdminLogin.Visible = false;     //ADMIN LOGIN

                    lnkPublisherMgmt.Visible = true;     //PublisherMgm
                    lnkAuthorMgmt.Visible = true;     //lnkAuthorMgmt
                    LinkButton1.Visible = true;     //Book Issue
                    LinkButton2.Visible = true;     //Book Inventory
                    LinkButton3.Visible = true;     //Member Management
                }
            }
            catch (Exception ex)
            {
            }
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

        protected void lnkLogout_Click(object sender, EventArgs e)
        {

            Session["username"] = "";
            Session["fullname"] = "";
            Session["role"] = "";
            Session["status"] ="";

            lnkUserLogin.Visible = true; //USERLOGIN
            lnkSignUp.Visible = true;      //SignUP
            lnkLogout.Visible = false;      //LOGOUT
            lblHelloUser.Visible = false;     //HElloUser


            lnkAdminLogin.Visible = true;     //ADMIN LOGIN

            lnkPublisherMgmt.Visible = false;     //PublisherMgm
            lnkAuthorMgmt.Visible = false;     //lnkAuthorMgmt
            LinkButton1.Visible = false;     //Book Issue
            LinkButton2.Visible = false;     //Book Inventory
            LinkButton3.Visible = false;     //Member Management

            Response.Redirect("homepage.aspx");
        }


protected void lblHelloUser_Click(object sender, EventArgs e)
        {
            Response.Redirect("userprofile.aspx");

        }
    }
}