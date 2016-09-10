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

    protected string Total(object quantidade, object valor)
    {
        float qtde = Convert.ToSingle(quantidade);
        float val = Convert.ToSingle(valor);
        float total = qtde * val;
        return string.Format("{0:C2}",total);
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        GridViewRow row = GridView1.Rows[Convert.ToInt32(e.CommandArgument)];
        lblId.Text = row.Cells[0].Text;
        lblDesc.Text = row.Cells[1].Text;
        lblQuantidade.Text = row.Cells[2].Text;
        lblValor.Text = row.Cells[3].Text;
       // lblTotal.Text = Total(lblQuantidade.Text, lblValor.Text); 
    }
}







