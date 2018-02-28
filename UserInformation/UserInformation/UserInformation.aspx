<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserInformation.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Registration</title>
    <webopt:bundlereference runat="server" path="~/Content/css" />
</head>
<body class="container-fluid" style="background-color:antiquewhite">
    <form id="form1" runat="server">
        <div class="col-lg-offset-3 col-lg-4" style="background-color:white">
            <h1 style="color:maroon;font-family:Georgia, 'Times New Roman', Times, serif">User Information Form</h1>
            <br />
            <asp:Label ID="Label1" runat="server" Text="Name *"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <br />
            <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Gender *"></asp:Label>
&nbsp;&nbsp;
            <br />
            <asp:DropDownList ID="ddlGender" runat="server" CssClass="form-control">
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddlGender" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Email address *"></asp:Label>
            <br />
            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmail" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
            &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Incorrect format" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" Text="University *"></asp:Label>
            <br />
            <asp:TextBox ID="txtUniversity" runat="server" CssClass="form-control"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtUniversity" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Degree *"></asp:Label>
            <br />
            <asp:TextBox ID="txtDegree" runat="server" CssClass="form-control"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtDegree" ErrorMessage="Required Field" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" CssClass="btn btn-primary btn-md"/>
        </div>
    </form>
</body>
</html>
