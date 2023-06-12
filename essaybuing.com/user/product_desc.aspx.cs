using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace essaybuing.com.user
{
    public partial class product_desc : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DHEERAJYADAV;Initial Catalog=essaybuing.com;Integrated Security=True");
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("login.aspx");
            }

            if(Request.QueryString["id"] == null)
            {
                Response.Redirect("display_item.aspx");
            }
            else
            {

            }


            id = Convert.ToInt32(Request.QueryString["id"].ToString());
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = (CommandType.Text);
            cmd.CommandText = "select * from product";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            d1.DataSource = dt;
            d1.DataBind();


            con.Close();
        }
    }
}