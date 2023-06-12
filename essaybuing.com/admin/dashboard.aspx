<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin_master.Master" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="essaybuing.com.admin.dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">
    <header>
        <link href="css/das.css" rel="stylesheet" />
        
    </header>

   <Section Id="Content">

        <Div Class="Content">
            <Div Class="Content-Header">
               
                <H1>easybuy Dashboard</H1>
               
                
            </Div>
            <Div Class="Widget-Box Sample-Widget">
                <Div Class="Widget-Header">
                    <H2>easybuy.com</H2>
                    <I Class="Fa Fa-Cog"></I>
                </Div>
                <Div Class="Widget-Content">
                    <Img
                        Src="img/first.gif"
                    />
                </Div>
            </Div>
            <Div Class="Widget-Box Sample-Widget">
                <Div Class="Widget-Header">
                    <H2>easybuy Productions</H2>
                    <I Class="Fa Fa-Cog"></I>
                </Div>
                <Div Class="Widget-Content">
                    <Img
                        Src="img/White & Blue Modern Line Chart Graph (2).gif"
                    />
                </Div>
            </Div>
            <Div Class="Widget-Box Sample-Widget">
                <Div Class="Widget-Header">
                    <H2>Treding Products</H2>
                    <I Class="Fa Fa-Cog"></I>
                </Div>
                <Div Class="Widget-Content">
                    <Img
                        Src="img/White & Blue Modern Line Chart Graph (3).gif"
                    />
                </Div>
            </Div>
            <Div Class="Widget-Box Sample-Widget">
                <Div Class="Widget-Header">
                    <H2>Product Distribution</H2>
                    <I Class="Fa Fa-Cog"></I>
                </Div>
                <Div Class="Widget-Content">
                    <Img
                        Src="img/last.gif" />
                    
                </Div>
            </Div>
        </Div>
    </Section>
</asp:Content>
