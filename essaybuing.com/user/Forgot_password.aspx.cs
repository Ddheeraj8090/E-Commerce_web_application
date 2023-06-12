using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace essaybuing.com.user
{
    public partial class Forgot_password : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());
        DataTable dt = new DataTable();
        SqlDataAdapter adpt = new SqlDataAdapter();
        public int checkmail(string mail)
        {
            int res = 0;
            con.Open();
            adpt = new SqlDataAdapter("select email from usersinglogin", con);
            adpt.Fill(dt);
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                if (dt.Rows[i]["email"].ToString()==mail)
                {
                    res = 1;
                    break;
                }
            }
            return res;
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void rpassword_Click(object sender, EventArgs e)
        {
            if (checkmail(user_email.Text) == 1)
            {

                Random r = new Random();
                String otp = r.Next(10001, 99999).ToString();
                Session["otp"] = otp;

                using (MailMessage eb = new MailMessage("essaybuing@gmail.com", user_email.Text))
                {
                    eb.Subject = "Forgot Password:";
                    String msg = "Your One Time Password is: " + otp + " <br> Do Note Share OTP in Anyone";
                    eb.Body = msg.ToString();
                    eb.IsBodyHtml = true;
                    SmtpClient smtp = new SmtpClient();
                    smtp.Host = "smtp.gmail.com";
                    smtp.EnableSsl = true;
                    NetworkCredential networdCred = new NetworkCredential("essaybuing@gmail.com", "tfiacsawxnzchiwv");
                    smtp.UseDefaultCredentials = true;
                    smtp.Credentials = networdCred;
                    smtp.Port = 587;
                    smtp.Send(eb);
                    ClientScript.RegisterStartupScript(GetType(), "alert", "alert('OTP Send Successfully,');", true);
                }
            }
            else { Response.Write("<script>alert('Your E-mail is Invalid')</script>"); }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (summitotp.Text == Session["otp"].ToString())
            {
                Response.Write("<script>alert('Your OTP Verifyed Successfully')</script>");
            }
            else
            {
                Response.Write("<script>alert('Your OTP is Invalid')</script>");
            }

        }
    }
}