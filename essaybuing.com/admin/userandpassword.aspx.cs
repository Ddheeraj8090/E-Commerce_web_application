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
    public partial class userandpassword : System.Web.UI.Page
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

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName=="rm")
            {
                String updatedata = "delete from usersinglogin where id ="+ e.CommandArgument.ToString();
                con.Open();
                SqlCommand cmd = new SqlCommand(updatedata,con);
                cmd.CommandText = updatedata;
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                Response.Write("<script> alert('User Delete Successfully')</script>");
                GridView1.DataBind();
                con.Close();
            }
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}