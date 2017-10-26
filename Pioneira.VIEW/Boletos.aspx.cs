using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pioneira
{
    public partial class Boletos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                Pioneira.BLL.BoletoBLL objNotas = new BLL.BoletoBLL();
                Pioneira.BLL.Protheus.WSBOLETOAMBIENTAL list = objNotas.BuscarBoletos(Session["UsuarioWS"].ToString(), Session["SenhaWS"].ToString(), Session["CodCliente"].ToString(), Session["Lojacliente"].ToString(), Session["CodAcesso"].ToString());


                GridView1.DataSource = list.BOLETOAMBIENTALLIST;
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                lbl_msg.Text = ex.Message.Replace("[F]","");
            }
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                if (e.Row.Cells[4].Text == "0")
                {
                    string url = "BoletoDetalhe.aspx?num_boleto=" + e.Row.Cells[0].Text.Trim() + "&num_prefixo=" + e.Row.Cells[1].Text.Trim();

                    e.Row.Cells[4].Text = "Aberto";

                    e.Row.Cells[5].Text = "<a href=\""+url+"\" target=\"popupwindow\" onclick='window.open(\""+url+"\", \"popupwindow\", \"scrollbars=yes,width=750,height=600\");return true'>Imprimir</a>";
                }
                else 
                {
                    e.Row.Cells[4].Text = "Vencido";
                    e.Row.Cells[5].Text = "";
                }
            }
        }
    }
}