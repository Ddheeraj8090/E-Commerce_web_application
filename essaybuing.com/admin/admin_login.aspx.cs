using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace essaybuing.com.admin
{
    public partial class admin_login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DHEERAJYADAV;Initial Catalog=essaybuing.com;Integrated Security=True");
        int i;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["admin"] == null)
                {
                    //  Response.Redirect("admin_login.aspx");
                }
            }
        }

        protected void adbtn_Click(object sender, EventArgs e)
        {
            
                i = 0;
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "select * from adminlogin where username='" + adusername.Text + "'and password='" + adpassword.Text + "'";
                cmd.ExecuteNonQuery();
                DataTable dt = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                i = Convert.ToInt32(dt.Rows.Count.ToString());

                if (i == 1)
                {
                    Session["admin"] = "1";
                    Response.Redirect("dashboard.aspx");
                }
                else
                {
                    Response.Write("<script> alert('Invalid Account! Contect to Admin')</script>");
                }


                con.Close();
            
        }
    }
}