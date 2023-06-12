<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="testingemail.aspx.cs" Inherits="essaybuing.com.testing.testingemail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
            <h1> Testing Email Page</h1>
        <asp:TextBox ID="txtemail" runat="server" ></asp:TextBox><br />
            <asp:Button ID="summit" runat="server" Text="Send E-mail" OnClick="summit_Click" />
    </div>
    </form>
</body>
</html>
