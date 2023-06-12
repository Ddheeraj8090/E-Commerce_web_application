<%@ Page Title="" Language="C#" MasterPageFile="~/user/usermaster.Master" AutoEventWireup="true" CodeBehind="display_item.aspx.cs" Inherits="essaybuing.com.user.display_item" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">
    <asp:Repeater ID="d1" runat="server">
        <HeaderTemplate>
            
             <ul>
        </HeaderTemplate>
        <ItemTemplate>
            

            

                    <li class="section2"> 
                    <div class="container">
                        <div class="items">
                            <div class="img img1">
                                <a href="product_desc.aspx?id=<%#Eval("id")%>">
                                    <img src="../<%#Eval("product_images") %>" alt="" />
                                </a>


                            </div>
                            <div class="name"><%#Eval("product_name") %></div>
                            <div class="price">₹ <%#Eval("product_price") %></div>
                            <div class="info" "><%#Eval("product_desc") %></div>
                        </div>
                    </div>
               </li>


               
        
             
        </ItemTemplate>

        
        <FooterTemplate>
         
            </ul>
        </FooterTemplate>



    </asp:Repeater>

</asp:Content>
