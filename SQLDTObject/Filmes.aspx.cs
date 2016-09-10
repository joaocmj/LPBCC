using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class Filmes : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Locadora.Camadas.BLL.Filme bllFilme = new Locadora.Camadas.BLL.Filme();
        
        grvFilmes.DataSource = bllFilme.Select();
        grvFilmes.DataBind(); 

    }
}