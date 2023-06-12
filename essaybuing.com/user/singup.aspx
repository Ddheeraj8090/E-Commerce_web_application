<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="singup.aspx.cs" Inherits="essaybuing.com.user.singup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Singup</title>
    
    <link href="css/singup.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div id="login-box">
            <div class="left">
                <h1>Sign up</h1>

                <asp:TextBox ID="username" runat="server" placeholder="Enter Name"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvusername" runat="server" ControlToValidate="username" ErrorMessage="*" ForeColor="Red" ValidationGroup="btnsingup"></asp:RequiredFieldValidator>

                <asp:TextBox ID="usermobileno" runat="server" placeholder="Mobile No"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvusermobileno" runat="server" ControlToValidate="usermobileno" ErrorMessage="*" ForeColor="Red" ValidationGroup="btnsingup"></asp:RequiredFieldValidator>

                <asp:TextBox ID="useremail" runat="server" placeholder="E-mail"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvuserrmail" runat="server" ControlToValidate="useremail" ErrorMessage="*" ForeColor="Red" ValidationGroup="btnsingup"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="rfvemail" runat="server" ControlToValidate="useremail" ErrorMessage="Enter Valide E-mail" ForeColor="Red" ValidationGroup="btnsingup" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>


                <asp:TextBox ID="userpassword" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvuserpassword" runat="server" ControlToValidate="userpassword" ErrorMessage="*" ForeColor="Red" ValidationGroup="btnsingup"></asp:RequiredFieldValidator>

                <asp:TextBox ID="userreypassword" runat="server" placeholder="Retype password" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rvfrepassword" runat="server" ControlToValidate="userreypassword" ErrorMessage="*" ForeColor="Red" ValidationGroup="btnsingup"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="rfvrepassword" runat="server" ControlToValidate="userreypassword" ControlToCompare="userpassword" ErrorMessage=" Your Password Not Same" ForeColor="Red" ValidationGroup="btnsingup"></asp:CompareValidator>

                <asp:Button ID="singupbtn" runat="server" Text="SIGN UP" OnClick="singupbtn_Click" ValidationGroup="btnsingup" />


            </div>

            <div class="right">
                <span class="loginwith">Sign in with<br />
                    social network</span>

                <button class="social-signin facebook">Log in with facebook</button>
                <button class="social-signin twitter">Log in with Twitter</button>
                <button class="social-signin google">Log in with Google+</button>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <asp:Button ID="loginbtn" runat="server" Text="Login" OnClick="loginbtn_Click"/>

            </div>
            <div class="or">OR</div>
        </div>
    </form>
</body>
</html>
