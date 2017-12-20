using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class NavBar : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

        WelcomeRight.InnerText = "Welcome, "+ Session["Name"];
    }
    protected void SignOut(object sender, EventArgs e)
    {
        Session.Abandon();
    }
}
