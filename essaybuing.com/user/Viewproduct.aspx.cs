using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace essaybuing.com.user
{
    public partial class Viewproduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("login.aspx");
            }

        }

        protected void btnshoe_Click(object sender, EventArgs e)
        {
            Response.Redirect("details.aspx?id=" + btnshoe.CommandArgument);
        }
    }
}