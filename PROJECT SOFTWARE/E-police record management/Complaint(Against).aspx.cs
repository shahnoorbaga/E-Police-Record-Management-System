using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Complaint_Against_ : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection();
    SqlCommand cmd = new SqlCommand();
    SqlDataReader rs;
    protected void Page_Load(object sender, EventArgs e)
    {
        //cn.ConnectionString = "Data Source=SHAHNOOR;Initial Catalog= E_Police_Record_Management;Integrated Security=true";
        //cn.Open();
        //cmd.Connection = cn;
SqlDataSource1.SelectCommand = "Select * from Complaints where C_Against='"+Session["AdharNumber"].ToString()+"'";
        //cmd.ExecuteNonQuery();
        //cmd.Dispose();
        //cn.Close();
    }
}