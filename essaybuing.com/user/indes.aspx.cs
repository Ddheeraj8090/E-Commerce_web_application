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
    public partial class indes : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DHEERAJYADAV;Initial Catalog=essaybuing.com;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                if (Session["user"] == null)
                {
                    Response.Redirect("login.aspx");
                }
            }

            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = (CommandType.Text);
            cmd.CommandText = "select * from productadd";
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