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
    public partial class Salary : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\hp\source\repos\LeaveManagement\LeaveManagement\App_Data\LeaveManagement.mdf;Integrated Security=True");
        string Emp_Id, No_Of_Days, App, Emp_Name;


        protected void Page_Load(object sender, EventArgs e)
        {
            string Email2 = Session["Email"].ToString();
            con.Open();
            SqlCommand cmd1 = new SqlCommand("Select * from Admin_table where Email= @Email", con);
            cmd1.Parameters.AddWithValue("@Email", Email2);
            SqlDataReader myReader;
            myReader = cmd1.ExecuteReader();

            while (myReader.Read())
            {
                Emp_Id = myReader["Emp_Id"].ToString();
                No_Of_Days = myReader["No_Of_Days"].ToString();
                Emp_Name = myReader["Emp_Name"].ToString();
                App = myReader["Approval"].ToString();

            }
            TextBox1.Text = Emp_Id;
            if (App == "A")
            {
                TextBox2.Text = No_Of_Days;
            }
          
          
            TextBox3.Text = Emp_Name;
            con.Close();

            
          
        }

        

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (App == "A")
            {
                float actual_sal = float.Parse(TextBox4.Text);
                float Sal_per_Day = actual_sal / 30;
                float Composite_sal = Sal_per_Day * float.Parse(No_Of_Days);
                float Tax = (actual_sal * 5) / 100;
                float Total_sal = actual_sal - Composite_sal - Tax;
                Label6.Text = Total_sal.ToString();
            }
            else
            {
                float actual_sal = float.Parse(TextBox4.Text);
                float Sal_per_Day = actual_sal / 30;
                
                float Tax = (actual_sal * 5) / 100;
                float Total_sal = actual_sal-Tax;
                Label6.Text = Total_sal.ToString();

            }

        }
    }
}