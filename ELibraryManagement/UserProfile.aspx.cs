using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Configuration;
using System.Data;
using System.Data.SqlClient;


namespace ELibraryManagement
{
    public partial class UserProfile : System.Web.UI.Page
    {


        String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnUpdateProfile_Click(object sender, EventArgs e)
        {

        }



        //user defined 


        void getUserData()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();

                }

                SqlCommand cmd = new SqlCommand("    Select * from member_master_tbl where member_id = '" + Session["username"].ToString() + "' ; ", con);
                //SqlDataReader dr = cmd.ExecuteReader();

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                gvIssuedBooks.DataSource = dt;
                gvIssuedBooks.DataBind();

                  //Response.Redirect("homepage.aspx");
                


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        }
    
    }
}