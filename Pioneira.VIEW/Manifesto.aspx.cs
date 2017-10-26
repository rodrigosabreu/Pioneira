using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pioneira
{
    public partial class Manifesto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {        

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                DateTime data_inicial = Convert.ToDateTime(txt_data_incial.Text);
                DateTime data_final = Convert.ToDateTime(txt_data_final.Text);

                Pioneira.BLL.ManifestacaoBLL ObjManifestos = new BLL.ManifestacaoBLL();
                Pioneira.BLL.Protheus.WSMANIFESTOCLIENTEAMBIENTAL list = ObjManifestos.BuscarManifestos(Session["UsuarioWS"].ToString(), Session["SenhaWS"].ToString(), Session["CodCliente"].ToString(), Session["Lojacliente"].ToString(), Session["CodAcesso"].ToString(), data_inicial, data_final);

                GridView1.DataSource = list.MANIFESTOCLIENTEAMBIENTALLIST;
                GridView1.DataBind();
                lbl_msg.Text = "";

            }
            catch (FormatException ex)
            {
                lbl_msg.Text = "Data inválida";
            }
            catch (Exception ex)
            {

                GridView1.DataBind(); 
                lbl_msg.Text = ex.Message.Replace("[F]","");
            }

        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                string url = "ManifestoDetalhe.aspx?cod_manifesto=" + e.Row.Cells[0].Text.Trim();
                e.Row.Cells[3].Text = "<a href=\"" + url + "\">Detalhe</a>";
            }
        }
    }
}