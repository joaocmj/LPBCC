<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
        }
        .auto-style2 {
            font-size: x-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="background-color: #CCFFCC">
        <span class="auto-style2">Exemplo PostBack preencher DropDownList</span><br class="auto-style2" />
        <br class="auto-style2" />
        <span class="auto-style2">Informe um animal</span><br class="auto-style2" />
        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style2" Width="288px"></asp:TextBox>
        <br class="auto-style2" />
        <br class="auto-style2" />
        <asp:Button ID="Button1" runat="server" CssClass="auto-style2" OnClick="Button1_Click1" Text="Adicionar" />
        <br class="auto-style2" />
        <br class="auto-style2" />
        <br class="auto-style2" />
        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style2" Height="42px" Width="452px">
        </asp:DropDownList>
        <br class="auto-style2" />
        <br class="auto-style1" />
    </form>
</body>
</html>
