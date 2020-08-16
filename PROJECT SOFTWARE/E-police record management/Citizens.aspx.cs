using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Citizens : System.Web.UI.Page
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
            SqlDataSource1.SelectCommand = "Select * from Citizen where C_Username= '"+Session["Police_Username"]+"'";
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
        cmd.CommandText = "select count(*) from Citizen";
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
            cmd.CommandText = "select max(C_ID) from Citizen";
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
        cmd.CommandText = "insert into Citizen values ('"+Textbox1.Text+"','"+Textbox2.Text+"','"+DropdownList1.Text+"','"+Textbox4.Text+"','"+Textbox5.Text+"','"+Textbox6.Text+"','"+ Session["Police_Username"].ToString()+"')";
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        cn.Close();

        SqlDataSource1.SelectCommand = "Select * from Citizen where C_Username= '" + Session["Police_Username"] + "'";
        Label1.Text="successfull";

       
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        cn.Open();
        cmd.Connection = cn;
        cmd.CommandText = "insert into Citizen values ('" + Textbox1.Text + "','" + Textbox2.Text + "','" + DropdownList1.Text + "','"+Textbox3.Text+"','" + Textbox4.Text + "','" + Textbox5.Text + "','" + Textbox6.Text + "','" + Session["Police_Username"].ToString() + "')";
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        cn.Close();

        SqlDataSource1.SelectCommand = "Select * from Citizen where C_Username= '" + Session["Police_Username"] + "'";
        Auto_Gen();
        Label1.Text = "successfull";
        Textbox2.Text = "";
        Textbox3.Text="";
        DropdownList1.SelectedIndex=0;
        Textbox4.Text = "";
        Textbox5.Text = "";
        Textbox6.Text = "";

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.Connection = cn;
        cmd.CommandText = "Update Citizen Set C_Name='" + Textbox2.Text + "',C_Gender='" + DropdownList1.Text + "',C_Contact='" + Textbox3.Text + "',C_address='" + Textbox4.Text + "',C_Email='" + Textbox5.Text + "',C_Adhar='"+Textbox6.Text+"' where C_Id='" + Textbox1.Text + "'";
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        cn.Close();


        SqlDataSource1.SelectCommand = "select * from Citizen where C_Username= '" + Session["Police_Username"] + "'";
        Auto_Gen();
        Label1.Text = "Updated Successfully";

        Textbox2.Text = "";
        Textbox3.Text = "";
        Textbox4.Text = "";
        Textbox5.Text = "";
        Textbox6.Text = "";
        DropdownList1.SelectedIndex = 0;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.Connection = cn;
        cmd.CommandText = "delete from Citizen where C_Id='" + Textbox1.Text + "'";
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        cn.Close();


        SqlDataSource1.SelectCommand = "select * from Citizen where C_Username= '" + Session["Police_Username"] + "'";
        Auto_Gen();
        Label1.Text = "Deleted Successfully";

        Textbox2.Text = "";
        Textbox3.Text = "";
        Textbox4.Text = "";
        Textbox5.Text = "";
        Textbox6.Text = "";
        DropdownList1.SelectedIndex = 0;
 
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Textbox1.Text = "";
        Textbox2.Text = "";
        Textbox3.Text = "";
        Textbox4.Text = "";
        Textbox5.Text = "";
        Textbox6.Text = "";
        DropdownList1.SelectedIndex = 0;
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Textbox1.Text = GridView1.SelectedRow.Cells[1].Text;
        Textbox2.Text = GridView1.SelectedRow.Cells[2].Text;
        DropdownList1.Text = GridView1.SelectedRow.Cells[3].Text;
        Textbox3.Text = GridView1.SelectedRow.Cells[4].Text;
        Textbox4.Text = GridView1.SelectedRow.Cells[5].Text;
        Textbox5.Text = GridView1.SelectedRow.Cells[6].Text;
        Textbox6.Text = GridView1.SelectedRow.Cells[7].Text;
    }
}