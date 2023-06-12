<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="essaybuing.com.user.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link href="css/login.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
<center>
        <fieldset class="f1">
            <div>
                <h1> Login User </h1><br>
                <label for="Mobile"><b>Mobile No</b></label><br>
                <asp:TextBox ID="mobile" runat="server" placeholder="mobile/E-mail"> </asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvmobile" runat="server" ControlToValidate="mobile" ErrorMessage="*" ForeColor="Red" ValidationGroup="btnlogin"></asp:RequiredFieldValidator>
            </div>
            <div>
                <label for="Password"><b>Password</b></label><br>
                <asp:TextBox ID="password" runat="server" placeholder="password" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvpassword" runat="server" ControlToValidate="password" ErrorMessage="*" ForeColor="Red" ValidationGroup="btnlogin"></asp:RequiredFieldValidator>
                <p class="condition"><input type="checkbox" id="terms" required aria-required="True">I Accept The All terms & condition</p>
                <h3>Forgot Password? <a href="Forgot_password.aspx">Reset Password.</a></h3>
            </div>
            <div>
               
                <asp:Button ID="btnlogin" runat="server" Text="Login" CssClass="button" OnClick="btnlogin_Click" ValidationGroup="btnlogin"/>
                
              
            </div>

        </fieldset>
    </center>
    </form>
</body>
</html>
