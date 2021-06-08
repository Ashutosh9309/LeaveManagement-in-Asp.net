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
    public partial class Take_Leave : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\hp\source\repos\LeaveManagement\LeaveManagement\App_Data\LeaveManagement.mdf;Integrated Security=True");
        string Emp_Name, Emp_Id,Approve="N";
        protected void Page_Load(object sender, EventArgs e)
        {
            string Email2 = Session["Email"].ToString();
            con.Open();
            SqlCommand cmd1 = new SqlCommand("Select * from Emp_Registration where Email= @Email", con);
            cmd1.Parameters.AddWithValue("@Email", Email2);
            SqlDataReader myReader;
            myReader = cmd1.ExecuteReader();

            while(myReader.Read())
            {
                Emp_Name = myReader["Emp_Name"].ToString();
                Emp_Id = myReader["Emp_Id"].ToString();
               
               

            }
            TextBox1.Text = Emp_Name;
            TextBox2.Text = Emp_Id;
           
            con.Close();
              

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd2 = new SqlCommand("insert into Admin_table values(@Emp_Name, @Emp_Id, @Leave_Date, @No_Of_Days, @Leave_Detail,@Email,@Approval)", con);
            cmd2.Parameters.AddWithValue("@Emp_Name", TextBox1.Text);
            cmd2.Parameters.AddWithValue("@Emp_Id", TextBox2.Text);
            cmd2.Parameters.AddWithValue("@Leave_Date", TextBox3.Text);
            
            cmd2.Parameters.AddWithValue("@No_Of_Days", TextBox4.Text);
            cmd2.Parameters.AddWithValue("@Leave_Detail", TextBox5.Text);
            cmd2.Parameters.AddWithValue("@Email", TextBox6.Text);
            cmd2.Parameters.AddWithValue("@Approval", Approve);

            cmd2.ExecuteNonQuery();
            con.Close();
            Response.Redirect("~/Home2.aspx");
           


        }
    }
}