using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class AddComplaints : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection();
    SqlCommand cmd = new SqlCommand();
    SqlDataReader rs;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.ConnectionString = "Data Source=SHAHNOOR;Initial Catalog= E_Police_Record_Management;Integrated Security=true";
        if (!IsPostBack)
        {
            Auto_Gen();
            Textbox4.Text = Session["AdharNumber"].ToString();
            cn.Open();
            cmd.Connection = cn;
            cmd.CommandText = "select C_Adhar from citizen";
            rs = cmd.ExecuteReader();
            while (rs.Read())
            {
                ListItem item = new ListItem();
                item.Value = rs.GetValue(0).ToString();
                DropdownList1.Items.Add(item);
            }
            rs.Close();
            cmd.Dispose();
            cn.Close();
       
        }
    }
    private void Auto_Gen()
    {
        int cnt;
        string id;
        int temp;
        temp = 0;
        cnt = 0;
        id = "";
        cn.Open();
        cmd.Connection = cn;
        cmd.CommandText = "select count(*) from Complaints";
        rs = cmd.ExecuteReader();
        while (rs.Read())
        {
            cnt = int.Parse(rs.GetValue(0).ToString());
        }
        rs.Close();
        cmd.Dispose();
        cn.Close();
        if (cnt > 0)
        {
            cn.Open();
            cmd.Connection = cn;
            cmd.CommandText = "select max(C_ID) from Complaints";
            rs = cmd.ExecuteReader();
            while (rs.Read())
            {
                id = rs.GetValue(0).ToString();
            }
            rs.Close();
            cmd.Dispose();
            cn.Close();
            temp = int.Parse(id.Substring(1, 4));
            temp++;
            id = "";
            id = temp.ToString();
            if (id.Length == 1)
            {
                id = "C000" + id;
            }
            else if (id.Length == 2)
            {
                id = "C00" + id;
            }
            else if (id.Length == 3)
            {
                id = "C0" + id;
            }
            else if (id.Length == 4)
            {
                id = "C" + id;
            }
            Textbox1.Text = id;
        }
        else
        {
            Textbox1.Text = "C0001";
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.Connection = cn;
        cmd.CommandText = "insert into Complaints values ('" + Textbox1.Text + "','" + Textbox2.Text + "','" + Textbox3.Text + "','" + DropdownList1.Text + "','" +Textbox4.Text+ "','" + Session["Police_Username"].ToString() + "')";
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        cn.Close();

        SqlDataSource1.SelectCommand = "Select * from Complaints ";
        Auto_Gen();
        Label1.Text = "successfull";
        Textbox2.Text = "";
        Textbox3.Text = "";
        Textbox4.Text = "";
        DropdownList1.SelectedIndex = 0;
            
    }
}