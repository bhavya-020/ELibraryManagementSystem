using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ELibraryManagement
{
    public partial class UserSignUp : System.Web.UI.Page
    {

        String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;


        protected void Page_Load(object sender, EventArgs e)
        {

        }


        //signup button 
        protected void btnSignup_Click(object sender, EventArgs e)
        {
            //Response.Write("<script>alert('testing');</script>");

            if (checkMemberExists())
            {
                Response.Write("<script>alert('Member already exists, , Login In Or Try with other');</script>");

            }
            else
            {
                UserSignUpNewMember();
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
                SqlCommand cmd = new SqlCommand("Select * from member_master_tbl where member_id =  '"+ member_id.Text.Trim()+"' ;", con);

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else{
                    return false;
                }

                //cmd.ExecuteNonQuery();
                //con.Close();

                //Response.Write("<script>alert('Sign Up successfull');</script>");

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
            return true;
        }

        void UserSignUpNewMember (){

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();

                }
                    SqlCommand cmd = new SqlCommand("insert into member_master_tbl(member_id ,full_name,dob ,contact_no ,email,state ,city,pincode ,full_address ,password,account_status ) " +
                                        "VALUES (@member_id ,@full_name,@dob ,@contact_no ,@email,@state ,@city,@pincode ,@full_address ,@password,@account_status)", con);

                    cmd.Parameters.AddWithValue("@full_name", txtFullName.Text.Trim());
                    cmd.Parameters.AddWithValue("@dob", txtDOB.Text.Trim());
                    cmd.Parameters.AddWithValue("@contact_no", txtContact.Text.Trim());
                    cmd.Parameters.AddWithValue("@email", txtEmail.Text.Trim());
                    cmd.Parameters.AddWithValue("@state", txtState.Text.Trim());
                    cmd.Parameters.AddWithValue("@city", txtCity.Text.Trim());
                    cmd.Parameters.AddWithValue("@pincode", txtPincode.Text.Trim());
                    cmd.Parameters.AddWithValue("@full_address", txtAddress.Text.Trim());
                    cmd.Parameters.AddWithValue("@password", txtPassword.Text.Trim());
                    cmd.Parameters.AddWithValue("@member_id", member_id.Text.Trim());
                    cmd.Parameters.AddWithValue("@account_status", "Pending");

                    cmd.ExecuteNonQuery();
                    con.Close();

                    Response.Write("<script>alert('Sign Up successfull');</script>");

                
            }
            catch (Exception ex)
            {


                Response.Write("<script>alert('" + ex.Message + "');</script>");


            }

        }
    }
}






