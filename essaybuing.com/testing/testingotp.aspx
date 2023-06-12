<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="testingotp.aspx.cs" Inherits="essaybuing.com.testing.testingotp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <center>
            <h1>  Email OTP </h1>
            <h5>Enter Your Email</h5>
            <asp:TextBox runat="server" ID="txtemail" ></asp:TextBox> <br />
           <asp:Button ID="Button1" runat="server" Text="Send OTP" OnClick="Button1_Click"></asp:Button>
            <h5> Enter Your OTP </h5>
                        <asp:TextBox runat="server" ID="TextBox1" ></asp:TextBox>
            <br />
             <asp:Button ID="Button2" runat="server" Text="Summit"></asp:Button>
        </center>
    </form>
</body>
</html>
