using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Police_Station : System.Web.UI.Page
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
        cmd.CommandText = "select count(*) from Police_Station";
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
            cmd.CommandText = "select max(P_ID) from Police_Station";
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
                id = "P000" + id;
            }
            else if (id.Length == 2)
            {
                id = "P00" + id;
            }
            else if (id.Length == 3)
            {
                id = "P0" + id;
            }
            else if (id.Length == 4)
            {
                id = "P" + id;
            }
            Textbox1.Text = id;
        }
        else
        {
            Textbox1.Text = "P0001";
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.Connection = cn;
        cmd.CommandText = "insert into Police_Station values ('"+Textbox1.Text+"','"+Textbox2.Text+"','"+Textbox3.Text+"','"+Textbox4.Text+"','"+Textbox5.Text+"','"+Textbox6.Text+"')";
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        cn.Close();

        cn.Open();
        cmd.Connection = cn;
        cmd.CommandText = "insert into Police_Login values ('" + Textbox5.Text + "','" + Textbox6.Text + "')";
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        cn.Close();

        SqlDataSource1.SelectCommand="select * from Police_Station";
        Auto_Gen();
        Label1.Text = "Successfull";

        Textbox2.Text = "";
        Textbox3.Text = "";
        Textbox4.Text = "";
        Textbox5.Text = "";
        Textbox6.Text = "";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.Connection = cn;
        cmd.CommandText = "Update Police_Station Set P_Name='" + Textbox2.Text + "',P_Area='" + Textbox3.Text + "',P_Inspector='" + Textbox4.Text + "',Username='" + Textbox5.Text + "',Password='" + Textbox6.Text + "' where P_Id='"+Textbox1.Text+"'";
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        cn.Close();


        SqlDataSource1.SelectCommand = "select * from Police_Station";
        Auto_Gen();
        Label1.Text = "Updated Successfully";
      
        Textbox2.Text = "";
        Textbox3.Text = "";
        Textbox4.Text = "";
        Textbox5.Text = "";
        Textbox6.Text = "";
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.Connection = cn;
        cmd.CommandText = "delete from Police_Station where P_Id='"+Textbox1.Text+"'";
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        cn.Close();


        SqlDataSource1.SelectCommand = "select * from Police_Station";
        Auto_Gen();
        Label1.Text = "Deleted Successfully";

        Textbox2.Text = "";
        Textbox3.Text = "";
        Textbox4.Text = "";
        Textbox5.Text = "";
        Textbox6.Text = "";
 

    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Textbox1.Text = "";
        Textbox2.Text = "";
        Textbox3.Text = "";
        Textbox4.Text = "";
        Textbox5.Text = "";
        Textbox6.Text = "";
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Textbox1.Text = GridView1.SelectedRow.Cells[1].Text;
        Textbox2.Text = GridView1.SelectedRow.Cells[2].Text;
        Textbox3.Text = GridView1.SelectedRow.Cells[3].Text;
        Textbox4.Text = GridView1.SelectedRow.Cells[4].Text;
        Textbox5.Text = GridView1.SelectedRow.Cells[5].Text;
        Textbox6.Text = GridView1.SelectedRow.Cells[6].Text;
    }
}