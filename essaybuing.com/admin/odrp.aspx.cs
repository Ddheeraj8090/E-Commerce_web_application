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
    public partial class odrp : System.Web.UI.Page
    {
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

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            // edit 


        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            // don  delete odear done 

           
        }

        protected void LinkButton2_Click1(object sender, EventArgs e)
        {
            string id = ((Label)GridView1.FindControl("Label1")).Text;
            String mycon = "Data Source=DHEERAJYADAV;Initial Catalog=essaybuing.com;Integrated Security=True";
            String updatedata = "delete from orderdetails where id =" + id.ToString();
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
    }
}