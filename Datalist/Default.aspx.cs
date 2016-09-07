using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected string Total (object quantidade, object valor)
    {
        float qtde = Convert.ToSingle(quantidade);
        float val = Convert.ToSingle(valor);
        float total = qtde * val;
        return string.Format("{0:C2}", total);
    }

    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        Label1.Text = DataList1.DataKeys[e.Item.ItemIndex].ToString();
        Response.Redirect("DetalheProduto.aspx?ProdID=" + Label1.Text); 
    }
}