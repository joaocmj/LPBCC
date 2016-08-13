<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

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
    <div style="background-color: #66CCFF">
    
        <span class="auto-style1">Exemplo Recuperar Valor DropDownList<br />
        <br />
        <br />
        Lista de Frutas<br />
        </span>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" CssClass="auto-style1" Height="49px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="261px">
            <asp:ListItem>Manga</asp:ListItem>
            <asp:ListItem>Pera</asp:ListItem>
            <asp:ListItem>Maçã</asp:ListItem>
            <asp:ListItem>Kiwi</asp:ListItem>
            <asp:ListItem>Banana</asp:ListItem>
        </asp:DropDownList>
        <br class="auto-style1" />
        <br class="auto-style1" />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="font-size: x-large; height: 53px" Text="Escolher" />
        <br />
        <br class="auto-style1" />
        <span class="auto-style1">A fruta escolhida foi </span>
        <asp:Label ID="Label1" runat="server" CssClass="auto-style1"></asp:Label>
        <br class="auto-style1" />
        <br />
    
    </div>
    </form>
</body>
</html>
