using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;



namespace essaybuing.com.testing
{
    public partial class testingotp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Random r = new Random();
            String otp = r.Next(10001, 99999).ToString();

            using (MailMessage eb = new MailMessage("essaybuing@gmail.com", txtemail.Text))
            {
                eb.Subject = "Your Message is:";
                String msg = "Your One Time Password is: " + otp;
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
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Email Sent,');", true);           
            }
        }
    }
}