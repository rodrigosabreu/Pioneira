using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pioneira
{
    public partial class Notas : System.Web.UI.Page
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

                Pioneira.BLL.NotasBLL objNotas = new BLL.NotasBLL();
                Pioneira.BLL.Protheus.WSNOTAFISCALAMBIENTAL list = objNotas.BuscarNotas(Session["UsuarioWS"].ToString(), Session["SenhaWS"].ToString(), Session["CodCliente"].ToString(), Session["Lojacliente"].ToString(), Session["CodAcesso"].ToString(), data_inicial, data_final);

                GridView1.DataSource = list.NOTAFISCALAMBIENTALLIST;
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
    }
}