using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;

namespace essaybuing.com.testing
{
    public partial class testingemail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void summit_Click(object sender, EventArgs e)
        {
            MailMessage mail = new MailMessage();
            mail.To.Add(txtemail.Text.ToString().Trim());
            mail.From = new MailAddress("essaybuing@gmail.com.com");
            mail.Subject = "Hello Test Email";
            mail.Body = "<p> Hello User <br> How are You?</p>";
            mail.IsBodyHtml =true;


            SmtpClient smtp = new SmtpClient();
            smtp.Port=587;
            smtp.EnableSsl=true;
            smtp.UseDefaultCredentials=false;
            smtp.Host = "smtp.gmail.com";
            smtp.Credentials = new System.Net.NetworkCredential("essaybuing@gmail.com", "tfiacsawxnzchiwv");
            smtp.Send(mail);

        }
    }
}