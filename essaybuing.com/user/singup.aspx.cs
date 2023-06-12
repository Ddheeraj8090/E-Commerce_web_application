using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;
using System.Net.Mail;

namespace essaybuing.com.user
{
    public partial class singup : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void singupbtn_Click(object sender, EventArgs e)
        {

            string query = "insert into usersinglogin(name,mobile,email,password) values(@name,@mobile,@email,@password)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@name", username.Text);
            cmd.Parameters.AddWithValue("@mobile", usermobileno.Text);
            cmd.Parameters.AddWithValue("@email", useremail.Text);
            cmd.Parameters.AddWithValue("@password", userpassword.Text);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();




            MailMessage mail = new MailMessage();
            mail.To.Add(useremail.Text.ToString().Trim());
            mail.From = new MailAddress("essaybuing@gmail.com.com");
            mail.Subject = "Your Registration Successfully ";
            mail.Body = "<h3>Wellcome to essaybuing.com </h3> <br> <h5> Hello  Your Registration Successfully Done</h5> ";
            mail.IsBodyHtml = true;


            SmtpClient smtp = new SmtpClient();
            smtp.Port = 587;
            smtp.EnableSsl = true;
            smtp.UseDefaultCredentials = false;
            smtp.Host = "smtp.gmail.com";
            smtp.Credentials = new System.Net.NetworkCredential("essaybuing@gmail.com", "tfiacsawxnzchiwv");
            smtp.Send(mail);

            Response.Write("<script> alert('You Are Registerd Successfully')</script>");
            
        }

        protected void loginbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }
    }
}