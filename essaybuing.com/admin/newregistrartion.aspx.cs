using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace essaybuing.com.admin
{
    public partial class newregistrartion : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                if (Session["admin"] == null)
                {
                    Response.Redirect("admin_login.aspx");
                }
            }

            if (!IsPostBack)
            {
                GridView1.DataSource = SqlDataSource1;
                GridView1.DataBind();
            }
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
        }

        protected void btninsert_Click(object sender, EventArgs e)
        {
            TextBox username = GridView1.FooterRow.FindControl("username") as TextBox;
            TextBox usermobile = GridView1.FooterRow.FindControl("usermobile") as TextBox;
            TextBox useremail = GridView1.FooterRow.FindControl("useremail") as TextBox;
            TextBox userpassword = GridView1.FooterRow.FindControl("userpassword") as TextBox;

            string query = "insert into usersinglogin(name,mobile,email,password) values(@name,@mobile,@email,@password)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@name", username.Text);
            cmd.Parameters.AddWithValue("@mobile", usermobile.Text);
            cmd.Parameters.AddWithValue("@email", useremail.Text);
            cmd.Parameters.AddWithValue("@password", userpassword.Text);

            con.Open();
            cmd.ExecuteNonQuery();
            Response.Write("<script> alert('New User Registration Successfully')</script>");
            SqlDataSource1.DataBind();
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
            con.Close();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {


            Label id = GridView1.Rows[e.RowIndex].FindControl("Label1") as Label;
            String mycon = "Data Source=DHEERAJYADAV;Initial Catalog=essaybuing.com;Integrated Security=True";
            String updatedata = "delete from usersinglogin where id =" + id.Text;
            SqlConnection con = new SqlConnection(mycon);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = updatedata;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Response.Write("<script> alert('User Delete Successfully')</script>");
            GridView1.EditIndex = -1;
            SqlDataSource1.DataBind();
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
            con.Close();

        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
            GridView1.EditRowStyle.BackColor = System.Drawing.Color.Red;
         }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Label id = GridView1.Rows[e.RowIndex].FindControl("Label6") as Label;
            TextBox upname = GridView1.Rows[e.RowIndex].FindControl("upname") as TextBox;
            TextBox upmobile = GridView1.Rows[e.RowIndex].FindControl("upmobile") as TextBox;
            TextBox upemail = GridView1.Rows[e.RowIndex].FindControl("upemail") as TextBox;
            TextBox uppassword = GridView1.Rows[e.RowIndex].FindControl("uppassword") as TextBox;

            con.Open();
            string query = "update usersinglogin set name='" + upname.Text + "', mobile='" + upmobile.Text + "', email='" + upemail.Text + "', password ='" + uppassword.Text + "' WHERE id =" + id.Text;
            SqlCommand cmd = new SqlCommand(query, con);
            

            //cmd.CommandText = query;
            //cmd.Connection = con;

            cmd.ExecuteNonQuery();
            cmd.Dispose();
            Response.Write("<script> alert('Update Successfully')</script>");
            //GridView1.EditIndex = -1;
            //SqlDataSource1.DataBind();
            //GridView1.DataSource = SqlDataSource1;
            //GridView1.DataBind();
            //con.Close();

        }
    }
}