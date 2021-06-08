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
    public partial class Emp_Registration : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\hp\source\repos\LeaveManagement\LeaveManagement\App_Data\LeaveManagement.mdf;Integrated Security=True");
        SqlCommand cmd;
       
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            int id = 100;
            id++;
            con.Open();
            cmd = new SqlCommand("insert into Emp_Registration values(@Emp_Name, @Emp_Id, @Department, @DOJ, @Address, @Mobile_No, @Email, @Password, @Salary, @Dob)", con);
            cmd.Parameters.AddWithValue("@Emp_Name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Emp_Id", id);
            cmd.Parameters.AddWithValue("@Department", TextBox2.Text);
            cmd.Parameters.AddWithValue("@DOJ", TextBox3.Text);
            cmd.Parameters.AddWithValue("@Address", TextBox4.Text);
            cmd.Parameters.AddWithValue("@Mobile_No", TextBox5.Text);
            cmd.Parameters.AddWithValue("@Email", TextBox6.Text);
            cmd.Parameters.AddWithValue("@Password", TextBox7.Text);
            cmd.Parameters.AddWithValue("@Salary", TextBox8.Text);
            cmd.Parameters.AddWithValue("@Dob", TextBox8.Text);
            cmd.ExecuteNonQuery();
            
            con.Close();
            
            Response.Redirect("~/Login.aspx");

        }
    }
}