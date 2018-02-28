using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source = (LocalDB)\\MSSQLLocalDB; AttachDbFilename = \"c:\\users\\ok\\documents\\visual studio 2017\\Projects\\Lab3_UserInformation\\Lab3_UserInformation\\UserInformation.mdf\"; Integrated Security = True");
        con.Open();
        string sql = "INSERT INTO [User] (Name, Gender, Email_address, University, Degree) VALUES (@name, @gender, @email, @university, @degree)";
        SqlCommand command = new SqlCommand(sql, con);
        command.Parameters.AddWithValue("@name", txtName.Text);
        command.Parameters.AddWithValue("@gender", ddlGender.SelectedValue.ToString());
        command.Parameters.AddWithValue("@email", txtEmail.Text);
        command.Parameters.AddWithValue("@university", txtUniversity.Text);
        command.Parameters.AddWithValue("@degree", txtDegree.Text);
        command.ExecuteNonQuery();
    }
}