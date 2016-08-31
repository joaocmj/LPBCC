<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Repeater.aspx.cs" Inherits="Repeater" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
            color: black;
        }

        .Linha-Azul {
            font-size: x-large;
            background-color: burlywood;
            color: blue;
        }

        .Linha-Vermelha {
            font-size: x-large;
            background-color: gainsboro;
            color: red;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <span class="auto-style1"><strong>Exemplo Repeater</strong></span><strong><br class="auto-style1" />
                <br />
                <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" OnItemCommand="Repeater1_ItemCommand">
                    <HeaderTemplate>
                        ID - Descricão - Quantidade - Valor
                        <br />
                    </HeaderTemplate>
                    <SeparatorTemplate>
                        <hr />
                    </SeparatorTemplate>
                    <ItemTemplate>
                        <span class="Linha-Azul">
                            <%#Eval("ProductId")%> -
                            <%#Eval("ProductName")%>  -
                            <%#Eval("UnitsinStock")%> - 
                            <%#FormataPreco(Eval("UnitPrice"))%>
                            <%#Total(Eval("UnitsinStock"),Eval("UnitPrice"))%>
                            <br />
                        </span>
                    </ItemTemplate>

                    <AlternatingItemTemplate>
                        <span class="Linha-Vermelha">
                            <%#Eval("ProductId")%> -
                            <%#Eval("ProductName")%>  -
                            <%#Eval("UnitsinStock")%> - 
                            <%#FormataPreco(Eval("UnitPrice"))%>
                            <%#Total(Eval("UnitsinStock"),Eval("UnitPrice"))%>
                            <br />
                        </span>

                    </AlternatingItemTemplate>
                </asp:Repeater>
                <br class="auto-style1" />
            </strong>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>" SelectCommand="SELECT [ProductID], [ProductName], [UnitPrice], [UnitsInStock] FROM [Products]"></asp:SqlDataSource>
            <br />
            <br />
            <br />

        </div>
    </form>
</body>
</html>
