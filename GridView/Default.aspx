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
            font-size: large;
            margin-left: 0px;
        }
        .auto-style3 {
            font-size: x-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <span class="auto-style1">Exemplo GridView</span><br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" Caption="Produtos" CellPadding="4" CssClass="auto-style2" DataKeyNames="ProductID" DataSourceID="SqlDataSource1" ForeColor="#333333" HorizontalAlign="Center" OnRowCommand="GridView1_RowCommand" Width="1053px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="ProductID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ProductID" />
                <asp:BoundField DataField="ProductName" HeaderText="Descrição" SortExpression="ProductName">
                <ItemStyle Width="350px" />
                </asp:BoundField>
                <asp:BoundField DataField="UnitsInStock" HeaderText="Quantidade" SortExpression="UnitsInStock">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="UnitPrice" DataFormatString="{0:C2}" HeaderText="Preço" SortExpression="UnitPrice" />
                <asp:TemplateField HeaderText="Total" SortExpression="ProductName">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("UnitPrice") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Total(Eval("UnitsInStock"),Eval("UnitPrice")) %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ButtonType="Image" DeleteImageUrl="~/Imagens/remover.jpg" EditImageUrl="~/Imagens/editar.jpg" InsertImageUrl="~/Imagens/inserir.jpg" SelectImageUrl="~/Imagens/selecionar.jpg" ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FF9900" BorderColor="#FF3300" BorderStyle="Solid" BorderWidth="2px" ForeColor="#0066FF" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>" DeleteCommand="DELETE FROM [Products] WHERE [ProductID] = @ProductID" InsertCommand="INSERT INTO [Products] ([ProductName], [UnitsInStock], [UnitPrice]) VALUES (@ProductName, @UnitsInStock, @UnitPrice)" SelectCommand="SELECT [ProductID], [ProductName], [UnitsInStock], [UnitPrice] FROM [Products]" UpdateCommand="UPDATE [Products] SET [ProductName] = @ProductName, [UnitsInStock] = @UnitsInStock, [UnitPrice] = @UnitPrice WHERE [ProductID] = @ProductID">
            <DeleteParameters>
                <asp:Parameter Name="ProductID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ProductName" Type="String" />
                <asp:Parameter Name="UnitsInStock" Type="Int16" />
                <asp:Parameter Name="UnitPrice" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ProductName" Type="String" />
                <asp:Parameter Name="UnitsInStock" Type="Int16" />
                <asp:Parameter Name="UnitPrice" Type="Decimal" />
                <asp:Parameter Name="ProductID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br class="auto-style3" />
        <span class="auto-style3">ID: </span>
        <asp:Label ID="lblId" runat="server" CssClass="auto-style3"></asp:Label>
        <br class="auto-style3" />
        <span class="auto-style3">Descrição: </span>
        <asp:Label ID="lblDesc" runat="server" CssClass="auto-style3"></asp:Label>
        <br class="auto-style3" />
        <span class="auto-style3">Quantidade: </span>
        <asp:Label ID="lblQuantidade" runat="server" CssClass="auto-style3"></asp:Label>
        <br class="auto-style3" />
        <span class="auto-style3">Valor: </span>
        <asp:Label ID="lblValor" runat="server" CssClass="auto-style3"></asp:Label>
        <br class="auto-style3" />
        <span class="auto-style3">Total:</span><asp:Label ID="lblTotal" runat="server" CssClass="auto-style3"></asp:Label>
        <br />
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" CssClass="auto-style3" DataKeyNames="ProductID" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None" Height="50px" Width="125px">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <Fields>
                <asp:BoundField DataField="ProductID" HeaderText="ProductID" InsertVisible="False" ReadOnly="True" SortExpression="ProductID" />
                <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                <asp:BoundField DataField="UnitsInStock" HeaderText="UnitsInStock" SortExpression="UnitsInStock" />
                <asp:BoundField DataField="UnitPrice" HeaderText="UnitPrice" SortExpression="UnitPrice" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
        </asp:DetailsView>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
