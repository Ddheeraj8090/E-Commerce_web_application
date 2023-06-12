<%@ Page Title="" Language="C#" MasterPageFile="~/user/usermain.Master" AutoEventWireup="true" CodeBehind="indes.aspx.cs" Inherits="essaybuing.com.user.indes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="c1" runat="server">

    <section>
        <div class="section">
            <div class="section1">
                <div class="img-slider">
                    <img src="productimg/laptopimg.png" alt="" class="img">
                    <img src="productimg/194-1945575_transparent-laptop-png-latest-dell-laptop-2018-png.png" alt="" class="img">
                    <img src="productimg/How_to_Sell_Photos_Online_For_Both_Amateur_and_Pro_Photographers.png" alt="" class="img">
                    <img src="productimg/509-5092096_offering-high-quality-mobile-repair-service-main-image.png" alt="" class="img">
                    <img src="productimg/workplace-2303851__340.jpg" alt="" class="img">
                </div>
            </div>
        </div>
    </section>

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
