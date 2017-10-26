using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pioneira
{
    public partial class MP : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Pioneira"] == null)
            {
                Response.Redirect("Default.aspx");
            }
            else
            {
                lbl_nomeCliente.Text = Session["NomeCliente"].ToString();
            }
        }
    }
}