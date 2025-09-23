using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ELibraryManagement
{
    public partial class AdminMemberManagement : System.Web.UI.Page
    {

        String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        //SqlConnection con = new SqlConnection("data source=DESKTOP-0LAEM6G\\SQLEXPRESS; initial catalog=elibraryDB; integrated security=true");
        protected void Page_Load(object sender, EventArgs e)
        {
            
            gvMembers.DataBind();
        }

      

        //active 
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            updateStatusByMemberID("active");

        }
        //pending
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            updateStatusByMemberID("pending");

        }
        //deactivate
        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            updateStatusByMemberID("deactive");

        }


        //permently delete button
        protected void btnDelete_Click(object sender, EventArgs e)
        {
            deleteMemberByID();
        }



        //goButton
        protected void Button4_Click1(object sender, EventArgs e)
        {

            if (checkMemberExists())
            {
                getMemberById();
            }
            else
            {
                Response.Write("<script>alert('Invalid ID');</script>");
            }

        }



        bool checkMemberExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * FROM member_master_tbl where member_id='" + txtMemberId.Text.Trim() + "';", con);
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
                return false;
            }

        }




        void deleteMemberByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("DELETE FROM member_master_tbl WHERE member_id='" + txtMemberId.Text.Trim() + "'", con);
                //cmd.Parameters.AddWithValue("@author_id", txtMemberId.Text.Trim());
                //cmd.Parameters.AddWithValue("@author_name", TextBox2.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Data Deleted');</script>");
                clearForm();
                gvMembers.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        
        void clearForm()
        {
            txtFullName.Text = "";
            txtMemberId.Text = ("");
            txtDOB.Text = ("");
            txtContact.Text = ("");
            txtEmail.Text = ("");
            txtState.Text = ("");
            txtCity.Text = ("");
            txtPincode.Text = ("");
            txtAddress.Text = ("");
            lblAccountStatus.Text = ("");
        }




        void updateStatusByMemberID(string status)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("UPDATE member_master_tbl SET account_status='" + status + "' WHERE member_id='" + txtMemberId.Text.Trim() + "';", con);
                cmd.ExecuteNonQuery();
                con.Close();
                gvMembers.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }



        void getMemberById()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();

                }

                SqlCommand cmd = new SqlCommand("    Select * from member_master_tbl where member_id = '" + txtMemberId.Text.Trim() +"' ; ", con);
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        //Response.Write("<script>alert('" + dr.GetValue(0).ToString() + "');</script>");

                        txtFullName.Text = dr.GetValue(1).ToString();
                        txtMemberId.Text = dr.GetValue(0).ToString();
                        txtDOB.Text = dr.GetValue(2).ToString();
                        txtContact.Text = dr.GetValue(3).ToString();
                        txtEmail.Text = dr.GetValue(4).ToString();
                        txtState.Text = dr.GetValue(5).ToString();
                        txtCity.Text = dr.GetValue(6).ToString();
                        txtPincode.Text = dr.GetValue(7).ToString();
                        txtAddress.Text = dr.GetValue(8).ToString();
                        lblAccountStatus.Text = dr.GetValue(10).ToString();



                        //Session["username"] = dr.GetValue(0).ToString();
                        //Session["fullname"] = dr.GetValue(2).ToString();
                        //Session["role"] = "admin";
                        //Session["status"] = dr.GetValue(10).ToString();
                    }
                    //Response.Redirect("homepage.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalud user ');</script>");

                }


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        }
    }
}