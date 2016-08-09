using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace CopiarColarWFA
{
    public partial class Form1 : Form
    {
        private string var1;

        public Form1()
        {
            InitializeComponent();
        }

        private void btnCopiar_Click(object sender, EventArgs e)
        {
           
            var1 = textBox1.Text;
            textBox1.Text = ""; 
        }

        private void btnColar_Click(object sender, EventArgs e)
        {
            
            textBox2.Text = var1; 
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }
    }
}
