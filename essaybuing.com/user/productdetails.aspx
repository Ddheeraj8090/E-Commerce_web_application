<%@ Page Title="" Language="C#" MasterPageFile="~/user/usermain.Master" AutoEventWireup="true" CodeBehind="productdetails.aspx.cs" Inherits="essaybuing.com.user.productdetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="c1" runat="server">


    <br /> <br />
    <main class="container">
 
  
           <div class="left-column">
      

             <asp:Image ID="imgp" runat="server" class="active" style="height: 100%; width:60%;" alt="" />  
          </div>
 
 
 
  <div class="right-column">
 
    
          <div class="product-description">
          <span> <h2> <asp:Label ID="lbltop" runat="server" Text=""></asp:Label> </h2></span>
          <asp:Label ID="lblpn" runat="server" Text=""></asp:Label></h1> <br> <br>
          <p> <asp:Label ID="lblpd" runat="server" Text=""></asp:Label></p> <br> <br>
          </div> <br>
 
    
       <div class="product-price">
       <span>₹<asp:Label ID="lblp" runat="server" Text=""></asp:Label></span>
           <asp:Button ID="addtoc" runat="server" Text="Add to cart"   CssClass="cart-btn"/><br /> <br />
        
       
    </div><br />
      <asp:Button ID="buybtn" runat="server" Text="easy to buy"   CssClass="by-btn" OnClick="buybtn_Click"/><br /> 
  </div>
           
</main>
   <br />
     <br />
     <br />
         <asp:Repeater ID="d1" runat="server">

        <ItemTemplate>

            <div style="display: inline-block;">
                <div class="section2">
                    <div class="container">
                        <div class="items">
                            <div class="img img1">
                                <a href="productdetails.aspx?id=<%#Eval("id") %>">
                                    <img src="../productimg/<%#Eval("productimg") %>" alt="" />
                                </a>
                            </div>
                            <div class="name"><%#Eval("productname") %> </div>
                            <div class="price">₹ <%#Eval("productprice") %></div>
                            <div class="info"><%#Eval("productdes") %></div>
                        </div>
                    </div>
                </div>
            </div>

        </ItemTemplate>

    </asp:Repeater>
</asp:Content>
