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
    public partial class AdminBookIssue : System.Web.UI.Page
    {

        String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            gvIssuedBooks.DataBind();
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            getNames();
        }

        protected void btnIssue_Click(object sender, EventArgs e)
        {
            if (checkIfBookExist() && checkIfMemberExist())
            {
                if (checkIfIssueEntryExist())
                {
                    Response.Write("<script>alert('Book already borrowed')</script>");
                }
                else { issueBooks(); }
            }
            else
            {
                Response.Write("<script>alert('Wrong Book or Member ID')</script>");
            }

        }

        protected void btnReturn_Click(object sender, EventArgs e)
        {

            if (checkIfBookExist() && checkIfMemberExist())
            {
                if (checkIfIssueEntryExist())
                {
                    returnBook();
                }
                else
                {
                    Response.Write("<script>alert('This entry does not exist')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Wrong Book or Member ID')</script>");
            }

        }



        //Rowdatabound
        protected void gvIssuedBooks_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                try
                {
                    // Example: assuming 6th column has the date
                    if (DateTime.TryParse(e.Row.Cells[5].Text, out DateTime dt))
                    {
                        if (DateTime.Today > dt)
                        {
                            e.Row.BackColor = System.Drawing.Color.PaleVioletRed;
                        }
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
            }
        }





        //User defined
        void returnBook()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("DELETE from book_issue_tbl where member_id='" + txtMemberId.Text.Trim() + "' and book_id='" + txtBookId1.Text.Trim() + "'; ;", con);
                int result = cmd.ExecuteNonQuery();
                if (result > 0)
                {
                    cmd = new SqlCommand("UPDATE book_master_tbl set current_stock=current_stock+1 where book_id='" + txtBookId1.Text.Trim() + "';", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Book Returned Successfully')</script>");
                    gvIssuedBooks.DataBind();
                }
                else
                {

                    Response.Write("<script>alert('No Entry Exist')</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");

            }
        }



        bool checkIfIssueEntryExist()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("Select * from book_issue_tbl where member_id='" + txtMemberId.Text.Trim() + "' and book_id='" + txtBookId1.Text.Trim() + "'; ;", con);
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
                Response.Write("<script>alert('" + ex.Message + "')</script>");
                return false;
            }


        }


        void issueBooks()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO book_issue_tbl (member_id,member_name,book_id,book_name,issue_date,due_date) VALUES (@member_id,@member_name,@book_id,@book_name,@issue_date,@due_date)", con);


                cmd.Parameters.AddWithValue("@member_id", txtMemberId.Text.Trim());
                cmd.Parameters.AddWithValue("@member_name", txtMemberName.Text.Trim());
                cmd.Parameters.AddWithValue("@book_id", txtBookId1.Text.Trim());
                cmd.Parameters.AddWithValue("@book_name", txtBookName.Text.Trim());
                cmd.Parameters.AddWithValue("@issue_date", txtStartDate.Text.Trim());
                cmd.Parameters.AddWithValue("@due_date", txtEndDate.Text.Trim());
                cmd.ExecuteNonQuery();
                cmd = new SqlCommand("UPDATE book_master_tbl set current_stock=current_stock-1 where book_id='" + txtBookId1.Text.Trim() + "';", con);
                cmd.ExecuteNonQuery();

                con.Close();
                Response.Write("<script>alert('Book Issued Successfully')</script>");
                gvIssuedBooks.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");

            }
        }



        bool checkIfMemberExist()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("Select full_name from member_master_tbl where member_id='" + txtMemberId.Text.Trim() + "' ;", con);
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
                Response.Write("<script>alert('" + ex.Message + "')</script>");
                return false;
            }


        }




        bool checkIfBookExist()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("Select * from book_master_tbl where book_id='" + txtBookId1.Text.Trim() + "' and current_stock>0;", con);
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
                Response.Write("<script>alert('" + ex.Message + "')</script>");
                return false;
            }


        }



        void getNames()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("Select full_name from member_master_tbl where member_id='" + txtMemberId.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    txtMemberName.Text = dt.Rows[0]["full_name"].ToString();
                }
                else
                {
                    Response.Write("<script>alert('Member does not exist')</script>");
                }
                cmd = new SqlCommand("Select book_name from book_master_tbl where book_id='" + txtBookId1.Text.Trim() + "';", con);
                da = new SqlDataAdapter(cmd);
                dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    txtBookName.Text = dt.Rows[0]["book_name"].ToString();
                }
                else
                {
                    Response.Write("<script>alert('Book does not exist')</script>");
                }
                cmd.ExecuteNonQuery();
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }




    }
}