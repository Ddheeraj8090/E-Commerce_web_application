<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="paymentd.aspx.cs" Inherits="essaybuing.com.user.paymentd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Payment 
    </title>
    <link href="css/paymentd.css" rel="stylesheet" />
    <link href="css/home.css" rel="stylesheet" />
</head>
<body>
    <form id="form10" runat="server">
        <div>
            <header>
                <div class="logo"><a href="home.aspx">easybuy</a></div>
                <div class="search">
                    <a href="#">
                        <asp:TextBox placeholder="search products" runat="server" ID="input"> </asp:TextBox>
                        <ion-icon class="s" name="search"></ion-icon>
                    </a>
                </div>
                <div class="heading">
                    <ul>
                        <li><a href="indes.aspx" class="under">HOME</a></li>
                        <li><a href="about_us.aspx" class="under">ABOUT US</a></li>
                        <li><a href="#" class="under">SERVICE</a></li>
                        <li><a href="#" class="under">YOUR PRODUCT</a></li>
                        <li><a href="#" class="under">SHOP </a></li>
                    </ul>
                </div>
                <div class="heading1">
                    <ion-icon name="menu" class="ham"></ion-icon>

                </div>
            </header>
            <br />
        </div>


        <div class="row">
            <div class="col-75">
                <div class="container">


                    <div class="row">
                        <div class="col-50">
                            <center>                           
                             <h3>Fill Your Address</h3>
                                </center>

                            <label for="fname"><i class="fa fa-user"></i>Full Name</label>
                            <asp:TextBox ID="phname" runat="server" placeholder="Enter Your Name"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="payname" runat="server" ControlToValidate="phname" ErrorMessage="*" ForeColor="Red" ValidationGroup="paymentvld"></asp:RequiredFieldValidator>

                            <label for="email"><i class="fa fa-enelope"></i>mobile</label>
                            <asp:TextBox ID="phmobile" runat="server" placeholder="Enter Your Mobile No."></asp:TextBox>
                            <asp:RequiredFieldValidator ID="paymobile" runat="server" ControlToValidate="phmobile" ErrorMessage="*" ForeColor="Red" ValidationGroup="paymentvld"></asp:RequiredFieldValidator>

                            <label for="adr"><i class="fa fa-address-card-o"></i>E-mail</label>
                            <asp:TextBox ID="phemail" runat="server" placeholder="Enter Your Email"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="payemail" runat="server" ControlToValidate="phemail" ErrorMessage="*" ForeColor="Red" ValidationGroup="paymentvld"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="rfvemail" runat="server" ControlToValidate="phemail" ErrorMessage="Enter Valide E-mail" ForeColor="Red" ValidationGroup="paymentvld" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

                            <label for="city"><i class="fa fa-institution"></i>Address</label>
                            <asp:TextBox ID="payaddress" TextMode="MultiLine" Rows="5" Columns="100" runat="server" placeholder="Enter Your Full Address"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="payaddresss" runat="server" ControlToValidate="payaddress" ErrorMessage="*" ForeColor="Red" ValidationGroup="paymentvld"></asp:RequiredFieldValidator>

                            <label for="city"><i class="fa fa-institution"></i>State</label>
                            <asp:TextBox ID="paystate" runat="server" placeholder="Enter Your State"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="refpaystate" runat="server" ControlToValidate="paystate" ErrorMessage="*" ForeColor="Red" ValidationGroup="paymentvld"></asp:RequiredFieldValidator>

                            <label for="city"><i class="fa fa-institution"></i>City</label>
                            <asp:TextBox ID="phcity" runat="server" placeholder="Enter Your Citey"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rafpaycity" runat="server" ControlToValidate="phcity" ErrorMessage="*" ForeColor="Red" ValidationGroup="paymentvld"></asp:RequiredFieldValidator>
                            
                            <label for="city"><i class="fa fa-institution"></i>Pin Code</label>
                            <asp:TextBox ID="phpin" runat="server" placeholder="Enter Your Pin Code"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="refpin" runat="server" ControlToValidate="phpin" ErrorMessage="*" ForeColor="Red" ValidationGroup="paymentvld"></asp:RequiredFieldValidator>

                            <label for="city"><i class="fa fa-institution"></i>Procuct Name </label>
                            <asp:TextBox ID="pname" runat="server" ReadOnly="true" ></asp:TextBox>
                           

                            <label for="city"><i class="fa fa-institution"></i>Your Product Payment </label>
                            <asp:TextBox ID="payprrice" ReadOnly="true" runat="server" ></asp:TextBox>
                        </div>
                    </div>

                    <asp:Button ID="btnmackp" runat="server" Text="Make Payment" CssClass="btn" ValidationGroup="paymentvld" OnClick="btnmackp_Click" />

                </div>
            </div>
            <br />

            <footer>
                <div class="footer0">
                    <h1>easybuy.com</h1>
                </div>
                <div class="footer1 ">
                    Connect with us at
            <div class="social-media">
                <a href="https://www.facebook.com/profile.php?id=100021950315650" target="_blank">
                    <ion-icon name="logo-facebook"></ion-icon>
                </a>
                <a href="https://www.linkedin.com/in/yadavdheerajgama07072002" target="_blank">
                    <ion-icon name="logo-linkedin"></ion-icon>
                </a>
                <a href="https://www.youtube.com/channel/UC6KrtTq3wmW8473S8nTkUrg" target="_blank">
                    <ion-icon name="logo-youtube"></ion-icon>
                </a>
                <a href="https://www.instagram.com/part_of_investing/" target="_blank">
                    <ion-icon name="logo-instagram"></ion-icon>
                </a>
                <a href="#">
                    <ion-icon name="logo-twitter"></ion-icon>
                </a>
            </div>
                </div>
                <div class="footer2">
                    <div class="product">
                        <div class="heading">Products</div>
                        <div class="div">Sell your Products</div>
                        <div class="div">Advertise</div>
                        <div class="div">Pricing</div>
                        <div class="div">Product Buisness</div>
                    </div>
                    <div class="services">
                        <div class="heading">Services</div>
                        <div class="div">Return</div>
                        <div class="div">Cash Back</div>
                        <div class="div">Affiliate Marketing</div>
                        <div class="div">Others</div>
                    </div>
                    <div class="Company">
                        <div class="heading">Company</div>
                        <div class="div">Complaint</div>
                        <div class="div">Careers</div>
                        <div class="div">Affiliate Marketing</div>
                        <div class="div">Support</div>
                    </div>
                    <div class="Get Help">
                        <div class="heading">Get Help</div>
                        <div class="div">Help Center</div>
                        <div class="div">Privacy Policy</div>
                        <div class="div">Terms</div>
                        <div class="div">Login</div>
                    </div>
                </div>
                <div class="footer3">
                    Copyright ©
            <h4>easybuy.com</h4>
                    2021-2028
                </div>
            </footer>
            <script src="https://unpkg.com/ionicons@4.5.10-0/dist/ionicons.js"></script>
            <script src="./ecommerce.js"></script>
        </div>
    </form>
</body>
</html>
