<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Filmes.aspx.cs" Inherits="Filmes" %>

<!DOCTYPE html>
<link href="Content/bootstrap.css" rel="stylesheet" />

<%--<link href="Content/bootstrap-theme.min.css" rel="stylesheet" />--%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 571px;
        }
        .auto-style4 {
            width: 173px;
        }
        .auto-style5 {
            width: 173px;
            text-align: right;
        }
        .auto-style6 {
            text-align: right;
        }
        .auto-style8 {
            text-align: center;
            width: 65px;
        }
        .auto-style10 {
            text-align: center;
            font-size: x-large;
            width: 139px;
        }
        .auto-style11 {
            text-align: center;
            width: 223px;
        }
        .auto-style12 {
            text-align: center;
            width: 237px;
        }
        .auto-style13 {
            text-align: center;
            width: 179px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <span class="auto-style1"><strong>Exemplo Filmes - Camada Tradicional<br />
        <table class="auto-style2">
            <tr>
                <td colspan="6"><span class="auto-style1">
                    <asp:GridView ID="grvFilmes" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" ForeColor="#333333" HorizontalAlign="Center" OnPageIndexChanging="grvFilmes_PageIndexChanging" OnRowCommand="grvFilmes_RowCommand" PageSize="5">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:BoundField DataField="id" HeaderText="ID" />
                            <asp:BoundField DataField="titulo" HeaderText="Titulo" />
                            <asp:BoundField DataField="genero" HeaderText="Genero" />
                            <asp:BoundField DataField="quantidade" DataFormatString="{0:N2}" HeaderText="Quantidade" />
                            <asp:BoundField DataField="valor" DataFormatString="{0:C2}" HeaderText="Valor" />
                            <asp:ButtonField ButtonType="Button" CommandName="Select" Text="Selecionar" />
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
                    </span></td>
            </tr>
            <tr>
                <td class="auto-style4" colspan="2">
                    <br />
                    <br />
                </td>
                <td class="auto-style3" colspan="2"></td>
                <td colspan="2"></td>
            </tr>
            <tr>
                <td class="auto-style5" colspan="2">ID:</td>
                <td class="auto-style3" colspan="2">
                    <asp:Label ID="lblId" runat="server"></asp:Label>
                </td>
                <td colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5" colspan="2">Título:</td>
                <td class="auto-style3" colspan="2">
                    <asp:TextBox ID="txtTitulo" runat="server"></asp:TextBox>
                </td>
                <td colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5" colspan="2">Gênero:</td>
                <td class="auto-style3" colspan="2">
                    <asp:TextBox ID="txtGenero" runat="server"></asp:TextBox>
                </td>
                <td colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5" colspan="2">Quantidade:</td>
                <td class="auto-style3" colspan="2">
                    <asp:TextBox ID="txtQuantidade" runat="server"></asp:TextBox>
                </td>
                <td colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5" colspan="2">Valor:</td>
                <td class="auto-style3" colspan="2">
                    <asp:TextBox ID="txtValor" runat="server"></asp:TextBox>
                </td>
                <td colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6" colspan="6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11">
                    <asp:Button ID="btnInserir" runat="server" CssClass="btn-primary" Text="Inserir" OnClick="btnInserir_Click" />
                </td>
                <td class="auto-style12">
                    <asp:Button ID="btnEditar" runat="server" CssClass="btn-primary" Text="Editar" OnClick="btnEditar_Click" />
                </td>
                <td class="auto-style8">
                    <asp:Button ID="btnRemover" runat="server" CssClass="btn-danger" Text="Remover" Width="155px" OnClick="btnRemover_Click" />
                </td>
                <td class="auto-style10"><strong>
                    <asp:Button ID="btnGravar" runat="server" CssClass="btn-success" Text="Gravar" OnClick="btnGravar_Click" />
                    </strong></td>
                <td class="auto-style13">
                    <asp:Button ID="btnCancelar" runat="server" CssClass="btn-danger" Text="Cancelar" OnClick="btnCancelar_Click" />
                </td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        </strong></span>
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
