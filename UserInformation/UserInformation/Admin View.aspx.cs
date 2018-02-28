using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_View : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source = (LocalDB)\\MSSQLLocalDB; AttachDbFilename = \"c:\\users\\ok\\documents\\visual studio 2017\\Projects\\Lab3_UserInformation\\Lab3_UserInformation\\UserInformation.mdf\"; Integrated Security = True");
        SqlDataAdapter adapter = new SqlDataAdapter();
        SqlCommand command = new SqlCommand("Select * FROM [User]", con);
        DataSet dset = new DataSet();

        con.Open();
        adapter.SelectCommand = command;
        adapter.Fill(dset);
        con.Close();

        gvAccountView.DataSource = dset.Tables[0];
        gvAccountView.DataBind();
    }
}