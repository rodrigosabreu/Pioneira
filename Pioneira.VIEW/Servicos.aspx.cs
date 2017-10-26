using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pioneira
{
    public partial class Servicos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {

            Pioneira.BLL.ServicoBLL ObjServicos = new BLL.ServicoBLL();
            Pioneira.BLL.Protheus.WSSERVICOAMBIENTAL list = ObjServicos.BuscarServicos(Session["UsuarioWS"].ToString(), Session["SenhaWS"].ToString(), Session["CodCliente"].ToString(), Session["Lojacliente"].ToString(), Session["CodAcesso"].ToString());
            
            GridView1.DataSource = list.SERVICOAMBIENTALLIST;
            GridView1.DataBind();
            lbl_msg.Text = "";
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
                string url = "ServicoDetalhe.aspx?cod_servico=" + e.Row.Cells[0].Text.Trim();
                e.Row.Cells[2].Text = "<a href=\"" + url + "\">Detalhe</a>";

                string url2 = "SolicitarServico.aspx?cod_servico=" + e.Row.Cells[0].Text.Trim() + "&residuo=" + e.Row.Cells[1].Text.Trim();
                e.Row.Cells[3].Text = "<a href=\"" + url2 + "\">Solicitar</a>";
            }
        }
        
    }
}