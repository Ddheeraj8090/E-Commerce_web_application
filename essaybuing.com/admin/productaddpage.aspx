<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin_master.Master" AutoEventWireup="true" CodeBehind="productaddpage.aspx.cs" Inherits="essaybuing.com.admin.productaddpage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">

 <header>
        <link href="css/addproduct.css" rel="stylesheet" />
    </header>
    <div class="container">
        <div class="row">
            <div class="col-25">
                <label for="fname">Type of Product </label>
            </div>
            <div class="col-75">
                <asp:TextBox ID="ptype" runat="server" placeholder="Type of Product"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="reftypep" runat="server" ControlToValidate="ptype" ErrorMessage="*" ForeColor="Red" ValidationGroup="sumtbtn"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="row">
            <div class="col-25">
                <label for="lname">Product Name</label>
            </div>
            <div class="col-75">
                <asp:TextBox ID="pname" runat="server" placeholder="Product Name"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="refname" runat="server" ControlToValidate="pname" ErrorMessage="*" ForeColor="Red" ValidationGroup="sumtbtn"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="row">
            <div class="col-25">
                <label for="subject">Product Description</label>
            </div>
            <div class="col-75">
                <asp:TextBox ID="pdes" runat="server" Style="height: 200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="refpdes" runat="server" ControlToValidate="pdes" ErrorMessage="*" ForeColor="Red" ValidationGroup="sumtbtn"></asp:RequiredFieldValidator>

            </div>
        </div>
        <div class="row">
            <div class="col-25">
                <label for="lname">Product Pricr </label>
            </div>
            <div class="col-75">
                <asp:TextBox ID="pprice" runat="server" placeholder="Product Price"></asp:TextBox>
                <asp:RequiredFieldValidator ID="refp" runat="server" ControlToValidate="pprice" ErrorMessage="*" ForeColor="Red" ValidationGroup="sumtbtn"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="row">
            <div class="col-25">
                <label for="country">Add Produce Image </label>
            </div>
            <div class="col-75">
                <asp:FileUpload ID="pimg" runat="server" />
                <asp:RequiredFieldValidator ID="refphoto" runat="server" ControlToValidate="pimg" ErrorMessage="Uplode Image" ForeColor="Red" ValidationGroup="sumtbtn"></asp:RequiredFieldValidator>
            </div><br />
            <%--<asp:Label ID="lblmsm" runat="server"></asp:Label>--%>
        </div>
        <div class="row"> 
            <asp:Button ID="summitb" runat="server" Text="Summit" ValidationGroup="sumtbtn" OnClick="summitb_Click" />
        </div>
    </div>

</asp:Content>
