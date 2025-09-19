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
            if (!IsPostBack)
            {
                gvAuthors.DataBind();
            }
             
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (checkIfautherExists())
            {
                Response.Write("<script>alert('Auther Existss');</script>");

            }
            else
            {
                addNewAuthor();
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {

            if (checkIfautherExists())
            {
                updateAuthor();

            }
            else
            {
                Response.Write("<script>alert('Not Updatae menas Not Exists');</script>");
            }

        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {

            if (checkIfautherExists())
            {
                deleteAuther();

            }
            else
            {
                Response.Write("<script>alert('Not deleted menas Not Exists');</script>");
            }

        }

        protected void btnGo_Click(object sender, EventArgs e)
        {
            getAuthorById();

        }

        void getAuthorById()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();

                }
                SqlCommand cmd = new SqlCommand("Select * from author_master_tbl where Author_Id =  @Author_Id ;", con);
                cmd.Parameters.AddWithValue("@Author_Id", txtAuthorId.Text.Trim());

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    txtAuthorName.Text = dt.Rows[0][1].ToString();
                }
                else
                {
                    Response.Write("<script>alert('Invalid id');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }


        void deleteAuther()
        {

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();

                }
                SqlCommand cmd = new SqlCommand("Delete from author_master_tbl WHERE Author_Id = @Author_Id", con);

                cmd.Parameters.AddWithValue("@Author_Id", txtAuthorId.Text.Trim());


                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('Auther Deleted successfull');</script>");
                clear();
                gvAuthors.DataBind();

            }

            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        void updateAuthor()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();

                }
                SqlCommand cmd = new SqlCommand("update author_master_tbl Set author_name = @author_name WHERE Author_Id = @Author_Id", con);

                cmd.Parameters.AddWithValue("@author_name", txtAuthorName.Text.Trim());
                cmd.Parameters.AddWithValue("@Author_Id", txtAuthorId.Text.Trim());


                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('Auther Updated successfull');</script>");
                clear();
                gvAuthors.DataBind();


            }

            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }


        void addNewAuthor()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("insert into author_master_tbl(Author_Id ,author_name) VALUES (@Author_Id ,@author_name)", con);

                cmd.Parameters.AddWithValue("@Author_Id", txtAuthorId.Text.Trim());
                cmd.Parameters.AddWithValue("@author_name", txtAuthorName.Text.Trim());
               
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Sign Up addrd successfull');</script>");
                clear();

                gvAuthors.DataBind();



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
                SqlCommand cmd = new SqlCommand("Select * from author_master_tbl where Author_Id =  @Author_Id ;", con);
                cmd.Parameters.AddWithValue("@Author_Id", txtAuthorId.Text.Trim());

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
            return false;
        }

        void clear()
        {
            txtAuthorId.Text = "";
            txtAuthorName.Text = "";
        }
    }
}