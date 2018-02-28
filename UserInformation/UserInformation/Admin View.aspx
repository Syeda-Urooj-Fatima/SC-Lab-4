<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin View.aspx.cs" Inherits="Admin_View" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin View</title>
    <webopt:bundlereference runat="server" path="~/Content/css" />
</head>
<body class="container-fluid" style="background-color:antiquewhite">
    <form id="form1" runat="server">
        <div class="col-lg-offset-2 col-lg-8" style="background-color:white">
            <h1 style="color:maroon;font-family:Georgia, 'Times New Roman', Times, serif">User Information Database</h1>
            <br />
            <asp:GridView ID="gvAccountView" runat="server" CssClass="table table-striped table-bordered">
            </asp:GridView>
        </div>
    </form>
</body>
</html>