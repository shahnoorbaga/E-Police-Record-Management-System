using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Search_Citizens_ : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection();
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.ConnectionString = "Data Source=SHAHNOOR;Initial Catalog= E_Police_Record_Management;Integrated Security=true";
        GridView1.Visible = false;
        Button2.Visible = false;
        Button3.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        SqlDataSource1.SelectCommand = "select * from Citizen where "+DropdownList1.SelectedItem.ToString()+" like '%"+Textbox1.Text+"%'";
        GridView1.Visible = true;
      
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Textbox2.Text = GridView1.SelectedRow.Cells[7].Text;
        Button2.Visible = true;
        Button3.Visible = true;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session["AdharNumber"] = Textbox2.Text;
        Response.Redirect("AddComplaints.aspx");
        
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Session["AdharNumber"] = Textbox2.Text;
        Response.Redirect("Complaint(Against).aspx");
    }
}