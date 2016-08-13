<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
        }
        .auto-style2 {
            font-size: x-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="background-color: #99CCFF">
    
        <span class="auto-style1">
        <br />
        Informe um nome:&nbsp; </span>
        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style2" Width="320px"></asp:TextBox>
        <br />
        <br class="auto-style1" />
        <asp:Button ID="Button1" runat="server" CssClass="auto-style2" OnClick="Button1_Click" Text="Nova Página" />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
