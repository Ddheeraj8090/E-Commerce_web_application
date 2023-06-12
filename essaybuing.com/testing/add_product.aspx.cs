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
    public partial class add_product : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-455V1R5;Initial Catalog=essaybuing.com;Integrated Security=True");
        string c;
        string d;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void b1_Click(object sender, EventArgs e)
        {
            //c = Class1.GetRandomPassword(50).ToString();
            f1.SaveAs(Request.PhysicalApplicationPath + "./images/" + f1.FileName.ToString());
            d = "images/" + f1.FileName.ToString();

            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into  product values('" + t1.Text + "','" + t2.Text + "'," + t3.Text + "," + t4.Text + ",'" + d.ToString() + "') ";
            cmd.ExecuteNonQuery();

            Response.Write("<script> alert('Your Product added successfully! ')</script>");

            con.Close();


        }
    }
}