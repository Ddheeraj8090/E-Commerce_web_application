using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace essaybuing.com.user
{
    public partial class productdetails : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());
        DataTable dt = new DataTable();

        public void getdata()
        {
            string id = Request.QueryString["id"].ToString();
            String qr = "select * from productadd where id=" + id;
            SqlDataAdapter adpt = new SqlDataAdapter(qr, con);
            adpt.Fill(dt);
            lbltop.Text = dt.Rows[0]["typeofproduct"].ToString();
            lblpn.Text = dt.Rows[0]["productname"].ToString();
            lblpd.Text = dt.Rows[0]["productdes"].ToString();
            lblp.Text = dt.Rows[0]["productprice"].ToString();
            imgp.ImageUrl = "../productimg/" + dt.Rows[0]["productimg"].ToString();

         

        }
       
      

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("login.aspx");
            }
            getdata();

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

        protected void buybtn_Click(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"].ToString();
            Response.Redirect("paymentd.aspx?id=" + id);
        }
    }
}