﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Repeater : System.Web.UI.Page
{
    protected string FormataPreco(object valor)
    {
        return string.Format("{0:C2}", valor); 
    }

    protected string  Total(object qtde, object valor)
    {
        float total = Convert.ToSingle(qtde) * Convert.ToSingle(valor);
        return string.Format("{0:C2}", total); 
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {

    }
}