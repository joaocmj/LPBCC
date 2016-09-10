<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Clientes.aspx.cs" Inherits="Clientes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            font-size: xx-large;
        }
        .auto-style3 {
            font-size: large;
            margin-right: 0px;
        }
        .auto-style4 {
            font-size: x-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <span class="auto-style2">Exemplo SQL Data Object - Tabela Clientes</span><br class="auto-style2" />
        <br />
        <asp:GridView ID="GridView1" runat="server" Width="1144px" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style3" DataKeyNames="id" DataSourceID="ObjectDataSource1" ForeColor="#333333" HorizontalAlign="Center">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="id" HeaderText="ID" SortExpression="id" />
                <asp:BoundField DataField="nome" HeaderText="Nome" SortExpression="nome">
                <ItemStyle Width="270px" />
                </asp:BoundField>
                <asp:BoundField DataField="endereco" HeaderText="Endereço" SortExpression="endereco">
                <ItemStyle Width="270px" />
                </asp:BoundField>
                <asp:BoundField DataField="cidade" HeaderText="Cidade" SortExpression="cidade" />
                <asp:BoundField DataField="estado" HeaderText="UF" SortExpression="estado" />
                <asp:BoundField DataField="aniversario" HeaderText="Aniversário" SortExpression="aniversario">
                <ItemStyle Width="170px" />
                </asp:BoundField>
                <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CssClass="auto-style4" DataKeyNames="id" DataSourceID="ObjectDataSource1" Height="50px" HorizontalAlign="Center" Width="125px">
            <Fields>
                <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" />
                <asp:BoundField DataField="nome" HeaderText="nome" SortExpression="nome" />
                <asp:BoundField DataField="endereco" HeaderText="endereco" SortExpression="endereco" />
                <asp:BoundField DataField="cidade" HeaderText="cidade" SortExpression="cidade" />
                <asp:BoundField DataField="estado" HeaderText="estado" SortExpression="estado" />
                <asp:BoundField DataField="aniversario" HeaderText="aniversario" SortExpression="aniversario" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <br />
        <br />
        <br />
        <br />
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DataObjectTypeName="Locadora.Camadas.MODEL.Cliente" DeleteMethod="Delete" InsertMethod="Insert" SelectMethod="Select" TypeName="Locadora.Camadas.BLL.Cliente" UpdateMethod="Update"></asp:ObjectDataSource>
        <br />
    
    </div>
    </form>
</body>
</html>
