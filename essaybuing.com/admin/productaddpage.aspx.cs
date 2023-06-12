using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace essaybuing.com.admin
{
    public partial class productaddpage : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void summitb_Click(object sender, EventArgs e)
        {
            if (pimg.HasFile)
            {
                pimg.SaveAs(Server.MapPath("//productimg//" + pimg.FileName));
            }
            string query = "insert into productaddpage(typeproduct,productname,productdes,productprice,img) values(@typeproduct,@productname,@productdes,@productprice,@img)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@typeproduct", ptype.Text);
            cmd.Parameters.AddWithValue("@productname", pname.Text);
            cmd.Parameters.AddWithValue("@productdes", pdes.Text);
            cmd.Parameters.AddWithValue("@productprice", pprice.Text);
            cmd.Parameters.AddWithValue("@img", pimg.FileName);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script> alert('Product Add Successfully')</script>");
        }
    }
}