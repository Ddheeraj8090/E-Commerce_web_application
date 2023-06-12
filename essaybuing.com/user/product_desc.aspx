<%@ Page Title="" Language="C#" MasterPageFile="~/user/usermaster.Master" AutoEventWireup="true" CodeBehind="product_desc.aspx.cs" Inherits="essaybuing.com.user.product_desc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">
   
    <asp:Repeater ID="d1" runat="server">
        <HeaderTemplate>
        </HeaderTemplate>
        <ItemTemplate>
           <center>
               <div style="height:300px; width:600px; border-style:solid; border-width:1px">
         

    <div style="height:300px; width:203px; float:left; border-style:solid; border-width:1px">
        <img src="../<%#Eval("product_images") %>" height="300" width="203" />


    </div>
                  
    <div style="height:300px; width:395px; float:left; border-style:solid; border-width:1px">
               Item Name= <%#Eval("product_name") %><br />
               Product Desc.= <%#Eval("product_desc") %><br />
               Product Desc.= <%#Eval("product_price") %><br />

     </div>

</div>
           </center>

        </ItemTemplate>

        <FooterTemplate>
        </FooterTemplate>

    </asp:Repeater>
   

</asp:Content>
