<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" MaintainScrollPositionOnPostback="true" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
        }
        .auto-style2 {
            font-size: medium;
        }
        .auto-style3 {
            text-align: left;
        }
        .auto-style4 {
            font-size: large;
        }
        .auto-style5 {
            font-size: x-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <span class="auto-style1">Exemplo Datalist<br />
        <br />
        </span>
        <div class="auto-style3">
            <asp:DataList ID="DataList1" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" CellPadding="2" CssClass="auto-style2" DataKeyField="ProductID" DataSourceID="SqlDataSource1" ForeColor="Black" HorizontalAlign="Center" OnItemCommand="DataList1_ItemCommand" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" RepeatColumns="5" RepeatDirection="Horizontal" Width="933px" GridLines="Both">
                <AlternatingItemStyle BackColor="PaleGoldenrod" />
                <FooterStyle BackColor="Tan" />
                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                <ItemTemplate>
                    <span class="auto-style4">ID:
                    <asp:Label ID="ProductIDLabel" runat="server" Text='<%# Eval("ProductID") %>' />
                    <br />
                    Descrição:
                    <asp:Label ID="ProductNameLabel" runat="server" Text='<%# Eval("ProductName") %>' />
                    <br />
                    Preço:
                    <asp:Label ID="UnitPriceLabel" runat="server" Text='<%# Eval("UnitPrice", "{0:C}") %>' />
                    <br />
                    Quantidade:
                    <asp:Label ID="UnitsInStockLabel" runat="server" Text='<%# Eval("UnitsInStock", "{0:N}") %>' />
                    <br />
                    Total: </span>
                    <asp:Label ID="lblTotal" runat="server" Text='<%# Total (Eval("UnitsInStock"), Eval("UnitPrice")) %>' />
                    <br />
                    <asp:Button ID="Button1" runat="server" CommandName="Selecionar" CssClass="auto-style5" Text="Selecionar" />
<br />
                </ItemTemplate>
                <SelectedItemStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            </asp:DataList>
        </div>
        <br class="auto-style1" />
        <span class="auto-style1">O produto selecionado foi </span>
        <asp:Label ID="Label1" runat="server" CssClass="auto-style1"></asp:Label>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>" SelectCommand="SELECT [ProductID], [ProductName], [UnitPrice], [UnitsInStock] FROM [Products]"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
