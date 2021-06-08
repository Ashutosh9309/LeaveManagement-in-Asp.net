using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace LeaveManagement
{
    public partial class Home2 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\hp\source\repos\LeaveManagement\LeaveManagement\App_Data\LeaveManagement.mdf;Integrated Security=True");
        string url;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Email"] == null)
            {
                Response.Redirect("~/PlzLogin.aspx");
            }
            string email2 = Session["Email"].ToString();
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from Emp_Registration where Email=@Email", con);
            cmd.Parameters.AddWithValue("@Email", email2);
            SqlDataReader myReader = cmd.ExecuteReader();
            while (myReader.Read())
            {
                url = myReader["Emp_Name"].ToString();
            }
            Label1.Text = url;


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Session.Clear();
            Response.Redirect("~/Home.aspx");

        }
    }
}