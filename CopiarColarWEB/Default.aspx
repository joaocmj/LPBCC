<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
        }
        .auto-style2 {
            font-size: xx-large;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="font-size: x-large">
    
        <span class="auto-style1"><b>Exemplo Copiar Colar<br />
        <br />
        Copiar </b> </span>
        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style2"></asp:TextBox>
        <b>
        <br class="auto-style1" />
        </b>
        <span class="auto-style2">Colar </span>
        <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style2"></asp:TextBox>
        <span class="auto-style1">
        <b>
        <br />
        <br />
        </b>
        </span>
        <asp:Button ID="Button1" runat="server" CssClass="auto-style2" OnClick="Button1_Click" Text="Copiar" />
        <span class="auto-style2">&nbsp; </span>
        <asp:Button ID="Button2" runat="server" CssClass="auto-style2" OnClick="Button2_Click" Text="Colar" />
    
    </div>
    </form>
</body>
</html>
