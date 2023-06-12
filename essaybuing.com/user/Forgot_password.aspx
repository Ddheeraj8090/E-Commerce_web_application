<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Forgot_password.aspx.cs" Inherits="essaybuing.com.user.Forgot_password" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/forgotpassword.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
 
    <div class="row">
		<h1>Forgot Password</h1>
		<h6 class="information-text">Enter your registered email to reset your password.</h6>
		<div class="form-group">
			<%--<input type="email" name="user_email" id="user_email">--%>
            <asp:TextBox ID="user_email" runat="server"></asp:TextBox>
			<p><label for="username">Email</label></p>
            <asp:RequiredFieldValidator ID="rfvuseremail" runat="server" ControlToValidate="user_email" ErrorMessage="*" ForeColor="Red" ValidationGroup="btnfp"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="rfvemail" runat="server" ControlToValidate="user_email" ErrorMessage="Enter Valide E-mail" ForeColor="Red" ValidationGroup="btnfp" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
			<%--<button onclick="showSpinner()">Reset Password</button>--%>
            <asp:Button ID="rpassword" runat="server" Text="Send OTP"  ValidationGroup="btnfp" OnClick="rpassword_Click" /> 
            <asp:TextBox ID="summitotp" runat="server"></asp:TextBox>
            <p><label for="username">Enter OTP</label></p>
             <asp:RequiredFieldValidator ID="rfvotp" runat="server" ControlToValidate="summitotp" ErrorMessage="Enter OTP" ForeColor="Red" ValidationGroup="btnotp"></asp:RequiredFieldValidator>
            <asp:Button ID="Button1" runat="server" Text="Summit OTP" ValidationGroup="btnotp" OnClick="Button1_Click"  /> 
		</div>
		<div class="footer">
			<h5>New here? <a href="singup.aspx">Sign Up.</a></h5>
			<h5>Already have an account? <a href="login.aspx">Sign In.</a></h5>
			<p class="information-text"><span class="symbols" title="Lots of love from me to YOU!">&hearts; </span><a href="https://www.facebook.com/profile.php?id=100021950315650" target="_blank" title="Connect with me on Facebook">essayBuing.com Dheeraj Yadav</a></p>
		</div>
	</div>
    </form>
</body>
</html>
