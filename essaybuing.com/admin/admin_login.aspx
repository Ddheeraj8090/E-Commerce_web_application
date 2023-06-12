<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_login.aspx.cs" Inherits="essaybuing.com.admin.admin_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Login</title>
    <link href="css/admin_login.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div aria-required="True">
            <center>
            <header>Login</header>
            <label>Username <span>*</span></label>
            <asp:TextBox ID="adusername" runat="server" required></asp:TextBox>
            <%--<div class="help">At least 6 character</div>--%>
            <label>Password <span>*</span></label>
            <asp:TextBox ID="adpassword" runat="server"  TextMode="Password" ></asp:TextBox>
            <%--<div class="help">Use upper and lowercase lettes as well</div>--%>
                
            <br />
            <br />
            <asp:Button ID="adbtn" runat="server" Text="Login" BackColor="#CC0000" ForeColor="Black" Width="440px" OnClick="adbtn_Click" />
                </center>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
