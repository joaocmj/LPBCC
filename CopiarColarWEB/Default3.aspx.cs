using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //lblNome.Text = Session["nome"].ToString(); 
        //lblNome.Text = Cache["nome"].ToString(); 
        ///lblNome.Text = ViewState["nome"].ToString();

        //lblNome.Text = Request.Cookies["nome"].Value.ToString(); 

        lblNome.Text = Request.QueryString["nome"].ToString();  
        
    }
}