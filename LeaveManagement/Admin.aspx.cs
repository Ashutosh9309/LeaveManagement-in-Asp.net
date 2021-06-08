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
    public partial class Admin : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\hp\source\repos\LeaveManagement\LeaveManagement\App_Data\LeaveManagement.mdf;Integrated Security=True");
        string url;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Email"] == null)
            {
                Response.Redirect("~/plzLogin.aspx");
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
            Label4.Text = url;


            if (!IsPostBack)
            {
                GridView1.DataSource = SqlDataSource1;
                GridView1.DataBind();
            }


        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {
           

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow row in GridView1.Rows)
            {
                CheckBox status = (row.Cells[3].FindControl("CheckBox1") as CheckBox);
                int applicationid = Convert.ToInt32(row.Cells[1].Text);
                if (status.Checked)
                {
                    updaterow(applicationid, "A");
                }
                else
                {
                    updaterow(applicationid, "N");

                }



            }
            Label3.Text = "Applications Has Been Approved Successfully";
            SqlDataSource1.DataBind();
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();

        }
        private void updaterow(int Emp_Id, String Approval)
        {
            String mycon =(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\hp\source\repos\LeaveManagement\LeaveManagement\App_Data\LeaveManagement.mdf;Integrated Security=True");
            String updatedata = "Update Admin_table set Approval='" + Approval + "' where Emp_Id=" + Emp_Id;
            SqlConnection con = new SqlConnection(mycon);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = updatedata;
            cmd.Connection = con;
             cmd.ExecuteNonQuery();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Session.Clear();
            Response.Redirect("~/Home.aspx");
        }
    }
}