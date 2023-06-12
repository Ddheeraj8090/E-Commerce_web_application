<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="textboxevent.aspx.cs" Inherits="essaybuing.com.testing.textboxevent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="jquery.js" type="text/javascript"></script>  
    <script type="text/javascript"  lang="js">
        $(function () {
            $("input[type=text]").keypress(function () {
                alert("Wow; Its Work!.")
            });
        });
    </script>  
</head>
<body>
    <form id="form1" runat="server">
   <div>  
        <asp:TextBox ID="TextBox1" runat="server" style="top: 158px; left: 414px; position: absolute; height: 22px; width: 128px"></asp:TextBox>  
    </div>  
        <p>  
            <asp:TextBox ID="TextBox2" runat="server" style="top: 275px; left: 415px; position: absolute; height: 22px; width: 128px"></asp:TextBox>  
        </p> 
    </form>
</body>
</html>
