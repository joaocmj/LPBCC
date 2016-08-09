<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="font-size: x-large">
    
        <span class="auto-style1"><strong>Exemplo Copiar Colar<br />
        <br />
        Copiar </strong> </span>
        <strong>
        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style1"></asp:TextBox>
        <br class="auto-style1" />
        </strong>
        <span class="auto-style1"><strong>Colar </strong> </span>
        <strong>
        <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style1"></asp:TextBox>
        </strong>
        <span class="auto-style1">
        <strong>
        <br />
        <br />
        </strong>
        </span>
        <strong>
        <asp:Button ID="Button1" runat="server" CssClass="auto-style1" OnClick="Button1_Click" Text="Copiar" />
        </strong>
        <span class="auto-style1"><strong>&nbsp; </strong> </span>
        <strong>
        <asp:Button ID="Button2" runat="server" CssClass="auto-style1" OnClick="Button2_Click" Text="Colar" />
    
        </strong>
    
    </div>
    </form>
</body>
</html>
