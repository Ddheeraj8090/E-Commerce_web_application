using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

namespace essaybuing.com.admin
{
    public partial class productadd : System.Web.UI.Page
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

        }

        protected void summitb_Click(object sender, EventArgs e)
        {

            //string folderPath = Server.MapPath("~/productimg/");
            //if (!Directory.Exists(folderPath))
            //{
            //    Directory.CreateDirectory(folderPath);
            //}
            //pimg.SaveAs(folderPath + Path.GetFileName(pimg.FileName));
            //lblmsm.Text = Path.GetFileName(pimg.FileName) + " has been uploaded.";
            //lblmsm.Text = Path.GetFileName(pimg.FileName) + " has been uploaded.";

            if(pimg.HasFile)
            {
                pimg.SaveAs(Server.MapPath("//productimg//" + pimg.FileName));
            }
            string query = "insert into productadd(typeofproduct,productname,productdes,productprice,productimg) values(@typeofproduct,@productname,@productdes,@productprice,@productimg)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@typeofproduct", ptype.Text);
            cmd.Parameters.AddWithValue("@productname", pname.Text);
            cmd.Parameters.AddWithValue("@productdes", pdes.Text);
            cmd.Parameters.AddWithValue("@productprice", pprice.Text);
            cmd.Parameters.AddWithValue("@productimg", pimg.FileName);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script> alert('Product Add Successfully')</script>");

        }
    }
}