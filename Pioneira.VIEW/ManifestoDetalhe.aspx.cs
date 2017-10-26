using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pioneira
{
    public partial class ManifestoDetalhe : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {

                Button1.Attributes.Add("onClick", "javascript:history.back(); return false;");

                string cod_manifesto = Request.QueryString["cod_manifesto"];

                Pioneira.BLL.ManifestacaoBLL ObjManifesto = new BLL.ManifestacaoBLL();
                Pioneira.BLL.Protheus.WSMANIFESTOCLIENTEDETALHEAMBIENTAL m = ObjManifesto.BuscarManifestoDetalhe(Session["UsuarioWS"].ToString(), Session["SenhaWS"].ToString(), Session["CodCliente"].ToString(), Session["Lojacliente"].ToString(), Session["CodAcesso"].ToString(), cod_manifesto);

                //Pioneira.BLL.Protheus.INFOMANIFESTOCLIENTEDETALHEAMBIENTAL resp = m.MANIFESTOCLIENTEDETALHEAMBIENTALLIST[0];

                DetailsView1.DataSource = m.MANIFESTOCLIENTEDETALHEAMBIENTALLIST;
                DetailsView1.DataBind();

            }
            catch (Exception ex)
            {
                lbl_msg.Text = ex.Message;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect(Request.UrlReferrer.ToString());
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {

        }

        
    }
}