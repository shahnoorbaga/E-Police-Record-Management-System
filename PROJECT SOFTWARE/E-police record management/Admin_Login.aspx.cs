using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Admin_Login : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection();
    SqlCommand cmd = new SqlCommand();
    SqlDataReader rs;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.ConnectionString = "Data Source=SHAHNOOR;Initial Catalog= E_Police_Record_Management;Integrated Security=true";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int login = 0;
        cn.Open();
        cmd.Connection = cn;
        cmd.CommandText = "select count(*) from Admin_Login where  Username='" + Textbox1.Text + "' and Password='" + Textbox2.Text + "' ";
        rs = cmd.ExecuteReader();
        while (rs.Read())
        {
            login = int.Parse(rs.GetValue(0).ToString());
        }
        rs.Close();
        cmd.Dispose();
        cn.Close();

        if (login > 0)
        {
            Session["Admin_Username"] = Textbox1.Text;
            Response.Redirect("Homepage(Admin).aspx");
        }
        else
        {
            Label1.Text = "Incorrect Username or Password";
        }

    }
}