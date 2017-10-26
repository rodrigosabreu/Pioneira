using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pioneira
{
    public partial class ServicoDetalhe : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                Button1.Attributes.Add("onClick", "javascript:history.back(); return false;");

                string cod_servico = Request.QueryString["cod_servico"];

                Pioneira.BLL.ServicoBLL ObjServico = new BLL.ServicoBLL();
                Pioneira.BLL.Protheus.WSSERVICODETALHEAMBIENTAL m = ObjServico.BuscarServicoDetalhe(Session["UsuarioWS"].ToString(), Session["SenhaWS"].ToString(), Session["CodCliente"].ToString(), Session["Lojacliente"].ToString(), Session["CodAcesso"].ToString(), cod_servico);

                //Pioneira.BLL.Protheus.INFOMANIFESTOCLIENTEDETALHEAMBIENTAL resp = m.MANIFESTOCLIENTEDETALHEAMBIENTALLIST[0];

                DetailsView1.DataSource = m.SERVICODETALHEAMBIENTALLIST;
                DetailsView1.DataBind();

            }
            catch (Exception ex)
            {
                lbl_msg.Text = ex.Message;
            }

        }
    }
}