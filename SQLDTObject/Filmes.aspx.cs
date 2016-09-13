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
        if (!IsPostBack)
        {
            Locadora.Camadas.BLL.Filme bllFilme = new Locadora.Camadas.BLL.Filme();

            grvFilmes.DataSource = bllFilme.Select();
            grvFilmes.DataBind();

            Cache["OP"] = "X";
            habilitaCampos(false);
        }
    }

    protected void habilitaCampos(bool status)
    {
        if (Cache["OP"].ToString() != "E")
        {
            lblId.Text = "";
            txtTitulo.Text = "";
            txtGenero.Text = "";
            txtQuantidade.Text = "";
            txtValor.Text = "";
        }

        txtTitulo.Enabled = status;
        txtGenero.Enabled = status;
        txtQuantidade.Enabled = status;
        txtValor.Enabled = status;

        btnInserir.Enabled = !status;
        btnEditar.Enabled = !status;
        btnRemover.Enabled = !status;
        btnGravar.Enabled = status;
        btnCancelar.Enabled = status;

    }


    protected void btnInserir_Click(object sender, EventArgs e)
    {
        Cache["OP"] = "I";
        habilitaCampos(true);
        lblId.Text = "-1";
        txtTitulo.Focus();
    }

    protected void btnCancelar_Click(object sender, EventArgs e)
    {
        Cache["OP"] = "X";
        habilitaCampos(false);
    }

    protected void grvFilmes_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        Locadora.Camadas.BLL.Filme bllFilme = new Locadora.Camadas.BLL.Filme();
        grvFilmes.DataSource = bllFilme.Select();
        grvFilmes.PageIndex = e.NewPageIndex;
        grvFilmes.DataBind();
    }

    protected void btnGravar_Click(object sender, EventArgs e)
    {
        Locadora.Camadas.BLL.Filme bllFilme = new Locadora.Camadas.BLL.Filme();
        Locadora.Camadas.MODEL.Filme filme = new Locadora.Camadas.MODEL.Filme();

        filme.id = Convert.ToInt32(lblId.Text);
        filme.titulo = txtTitulo.Text;
        filme.genero = txtGenero.Text;
        filme.quantidade = Convert.ToInt32(txtQuantidade.Text);
        filme.valor = Convert.ToSingle(txtValor.Text);

        if (Cache["OP"].ToString() == "I")
            bllFilme.Insert(filme);
        else if (Cache["OP"].ToString() == "E")
            bllFilme.Update(filme);

        grvFilmes.DataSource = bllFilme.Select();
        grvFilmes.DataBind();

        if (Cache["OP"].ToString() == "I")
            grvFilmes.SetPageIndex(grvFilmes.PageCount);

        Cache["OP"] = "X";
        habilitaCampos(false);

    }

    protected void grvFilmes_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Select")
        {
            GridViewRow linha = grvFilmes.Rows[Convert.ToInt32(e.CommandArgument)];
            lblId.Text = linha.Cells[0].Text;
            txtTitulo.Text = linha.Cells[1].Text;
            txtGenero.Text = linha.Cells[2].Text;
            txtQuantidade.Text = linha.Cells[3].Text;
            txtValor.Text = linha.Cells[4].Text;
        }
    }

    protected void btnEditar_Click(object sender, EventArgs e)
    {
        if (lblId.Text != String.Empty)
            if (Convert.ToInt32(lblId.Text) > 0)
            {
                Cache["OP"] = "E";
                habilitaCampos(true);
                txtTitulo.Focus();
            }
    }

    protected void btnRemover_Click(object sender, EventArgs e)
    {
        if (lblId.Text != String.Empty)
            if (Convert.ToInt32(lblId.Text) > 0)
            {
                Locadora.Camadas.BLL.Filme bllFilme = new Locadora.Camadas.BLL.Filme();
                Locadora.Camadas.MODEL.Filme filme = new Locadora.Camadas.MODEL.Filme();
                filme.id = Convert.ToInt32(lblId.Text);
                bllFilme.Delete(filme);

                grvFilmes.DataSource = bllFilme.Select();
                grvFilmes.DataBind();

                Cache["OP"] = "X";
                habilitaCampos(false);
             
            }
    }
}




