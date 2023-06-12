<%@ Page Title="" Language="C#" MasterPageFile="~/user/usermaster.Master" AutoEventWireup="true" CodeBehind="details.aspx.cs" Inherits="essaybuing.com.user.details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <link href="viewp.css" rel="stylesheet" />
        <title>Product </title>
    </head>
    <body>
        <main class="container">
 

  <div class="left-column">

      <asp:Image ID="imgtest" runat="server" class="active" style="height: 95%; width:90%;" alt=""  />
  </div>
 
 
  <!-- Right Column -->
  <div class="right-column">
 
    <!-- Product Description -->
    <div class="product-description">
      <span> <h2>Headphones</h2></span>
      <h1>K24D</h1> <br> <br>
      <p>The preferred choice of a vast range of acclaimed DJs. Punchy, bass-focused sound and high isolation. Sturdy headband and on-ear cushions suitable for live performance</p> <br> <br>
    </div> <br>
 
    
    <div class="product-price">
      <span>₹499</span>
      <a href="#" class="cart-btn">essay to Buy</a> <br> <br> <br> <br> <br>
    </div>
  </div>
</main>
        <br>
        <br>
        <br>
        <br>
        <br>
    </body>
</asp:Content>
