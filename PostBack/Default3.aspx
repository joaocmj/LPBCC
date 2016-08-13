<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="Default3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="background-color: #99CCFF">
    
        <span class="auto-style1"><strong>Exemplo Não PostBack</strong></span><br class="auto-style1" />
        <br class="auto-style1" />
        <span class="auto-style1">Dias</span><br class="auto-style1" />
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" CssClass="auto-style1" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="340px">
        </asp:DropDownList>
        <br class="auto-style1" />
        <br class="auto-style1" />
        <span class="auto-style1">O dia escolhido foi </span>
        <asp:Label ID="Label1" runat="server" CssClass="auto-style1" Text="Label"></asp:Label>
        <br class="auto-style1" />
    
    </div>
    </form>
</body>
</html>
