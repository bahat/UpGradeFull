using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LoginAccount(object sender, EventArgs e)
    {
        //    string connectionstr = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Users.mdf;Integrated Security=True";
        //    SqlConnection c = new SqlConnection(connectionstr);
        //    SqlCommand cmd;
        //    cmd = new SqlCommand("SELECT Password FROM [@SelectedTable] WHERE Username = @Username AND School = @School", c);
        //    string password;
        //    //try
        //    //{
        //        c.Open();
        //        cmd.Parameters.AddWithValue("SelectedTable", TeacherOrStudent.SelectedValue);
        //        cmd.Parameters.AddWithValue("Username", UserName.Text);
        //        cmd.Parameters.AddWithValue("School", SchoolName.Text);
        //        password = cmd.ExecuteReader().GetString(0);
        //        if (password.Equals(Password.Text))
        //            Response.Redirect("http://www.google.com");

        //    //}
        //    //catch
        //    //{
        //    //    Response.Redirect("http://www.bing.com");
        //    //}
        Session["Name"] = UserName.Text;
        Response.Redirect("Home.aspx");
        
    }



    protected void testbutton_Click(object sender, EventArgs e)
    {
        PassReset.DepartmentOfEducation client = new PassReset.DepartmentOfEducation();
        if (!CheckForInternetConnection())
        {
            Response.Write("<script>alert('No internet connection for sending mail, connect and try again');</script>");
        }
        else
        {
            try
            {
                string str = client.SendIt(int.Parse(UserName.Text));
                Response.Write("<script>alert('" + str + "');</script>");
            }
            catch
            {
                Response.Write("<script>alert('Error with ID, Check your ID');</script>");
            }
        
        }

        

    }
    public static bool CheckForInternetConnection()
    {
        try
        {
            using (var client = new WebClient())
            {
                using (client.OpenRead("http://clients3.google.com/generate_204"))
                {
                    return true;
                }
            }
        }
        catch
        {
            return false;
        }
    }
}