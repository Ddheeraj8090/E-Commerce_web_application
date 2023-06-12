using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace essaybuing.com.user
{
    public partial class details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            fillproduct();
        }
        public void fillproduct()
        {
            string id = Request.QueryString["id"].ToString();
            string path = "";
            if (id == "p1")
            {
                imgtest.ImageUrl = "~/user/productimg/pexels-photo-205926.jpg";
            }
        }
    }
}