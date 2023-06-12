using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace essaybuing.com.user
{
    public partial class paymentd : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());
        DataTable dt = new DataTable();

        public void getdata()
        {
            string id = Request.QueryString["id"].ToString();
            String qr = "select * from productadd where id=" + id;
            SqlDataAdapter adpt = new SqlDataAdapter(qr, con);
            adpt.Fill(dt);
            payprrice.Text = dt.Rows[0]["productprice"].ToString();
            pname.Text = dt.Rows[0]["productname"].ToString();

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("login.aspx");
            }
            getdata();
        }

        protected void btnmackp_Click(object sender, EventArgs e)
        {
            string query = "insert into orderdetails(name,mobile,email,address,state,city,pincode,productprice,productname) values(@name,@mobile,@email,@address,@state,@city,@pincode,@productprice,@productname)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@name", phname.Text);
            cmd.Parameters.AddWithValue("@mobile", phmobile.Text);
            cmd.Parameters.AddWithValue("@email", phemail.Text);
            cmd.Parameters.AddWithValue("@address", payaddress.Text);
            cmd.Parameters.AddWithValue("@state", paystate.Text);
            cmd.Parameters.AddWithValue("@city", phcity.Text);
            cmd.Parameters.AddWithValue("@pincode", phpin.Text);
            cmd.Parameters.AddWithValue("@productprice", payprrice.Text);
            cmd.Parameters.AddWithValue("@productname", pname.Text);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            Response.Redirect("https://pmny.in/2Jk8vwzQHoC1");
        }
    }
}