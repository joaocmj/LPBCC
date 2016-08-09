using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    //private string var1; 

    protected void Page_Load(object sender, EventArgs e)
    {
        Application["Contador"] = Convert.ToInt32(Application["Contador"]) + 1;
        Label1.Text = Application["Contador"].ToString(); 
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        // var1 = TextBox1.Text;
        //Session["var1"] = TextBox1.Text; 
        //Cache["var1"] = TextBox1.Text; 
        //ViewState["var1"] = TextBox1.Text; 
        Response.Cookies["var1"].Value = TextBox1.Text;
        //Response.Cookies["var1"].Expires = DateTime.Now.AddDays(30); 
        TextBox1.Text = ""; 
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        //TextBox2.Text = var1; 
        //TextBox2.Text = Session["var1"].ToString(); 
        //TextBox2.Text = Cache["var1"].ToString(); 
        //TextBox2.Text = ViewState["var1"].ToString(); 
        TextBox2.Text = Request.Cookies["var1"].Value.ToString(); 
    }
}