<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin_master.Master" AutoEventWireup="true" CodeBehind="add_product.aspx.cs" Inherits="essaybuing.com.admin.add_product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">
    <h3> Add Product Page</h3>

    <table>
        <tr>
            <td> Product Name</td>
            <td> <asp:TextBox ID="t1" runat="server" ></asp:TextBox></td>
        </tr>

         <tr>
            <td> Product Description</td>
            <td> <asp:TextBox ID="t2" runat="server" ></asp:TextBox></td>
        </tr>

         <tr>
            <td> Product Price</td>
            <td> <asp:TextBox ID="t3" runat="server" ></asp:TextBox></td>
        </tr>

         <tr>
            <td> Product qty*</td>
            <td> <asp:TextBox ID="t4" runat="server" ></asp:TextBox></td>
        </tr>

         <tr>
            <td> Product Images</td>
            <td> <asp:FileUpload ID="f1" runat="server" ></asp:FileUpload></td>
        </tr>

        <tr>
            <td colspan="2" aling="center">
            <asp:Button ID="b1" runat="server" Text="Upload" OnClick="b1_Click" />
            </td>


        </tr>
    </table>
</asp:Content>
