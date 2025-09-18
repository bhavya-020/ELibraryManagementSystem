using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net.NetworkInformation;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ELibraryManagement
{
    public partial class AdminAutherManagement : System.Web.UI.Page
    {

        String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {

        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {

        }

        protected void btnGo_Click(object sender, EventArgs e)
        {
            if (checkIfautherExists())
            {
                Response.Write("<script>alert('Auther Exists');</script>");

            }
            else
            {
                addNewAuther();
            }

        }


        void addNewAuther()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();

                }
                SqlCommand cmd = new SqlCommand("insert into author_master_tbl(Author_Id ,author_name)" +
                                    "VALUES (@Author_Id ,@author_name)", con);

                cmd.Parameters.AddWithValue("@Author_Id", txtAuthorId.Text.Trim());
                cmd.Parameters.AddWithValue("@author_name", txtAuthorName.Text.Trim());
               
                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('Sign Up successfull');</script>");


            }
            catch (Exception ex)
            {


                Response.Write("<script>alert('" + ex.Message + "');</script>");


            }
        }

        bool checkIfautherExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();

                }
                SqlCommand cmd = new SqlCommand("Select * from author_master_tbl where AuthorId =  '" + txtAuthorId.Text.Trim() + "' ;", con);

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
            return true;
        }
    }
}