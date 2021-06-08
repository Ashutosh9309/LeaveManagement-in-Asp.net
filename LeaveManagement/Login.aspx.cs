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
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\hp\source\repos\LeaveManagement\LeaveManagement\App_Data\LeaveManagement.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                Session["Email"] = LtextBox1.Text;
                string uid = LtextBox1.Text;
                string pass = LtextBox2.Text;
                con.Open();
                string qry = "select * from Emp_Registration where Email = '" + uid + " ' and Password = '" + pass + " ' ";
                SqlCommand cmd = new SqlCommand(qry, con);
                SqlDataReader sdr = cmd.ExecuteReader();

                if (sdr.Read())
                {
                    if (uid == "Vaishnavi123@gmail.com")
                    {
                       
                        
                            Response.Redirect("~/Admin.aspx");
                      
                    }
                    else
                    {


                        Response.Redirect("~/Home2.aspx");
                    }
                }
                else
                {
                    Label1.Text = "Invalid User name or Password";
                }
                con.Close();

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }

        }
    }
}