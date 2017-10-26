using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pioneira
{
    public partial class Default2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {

                Pioneira.BLL.Login objLogin = new BLL.Login();

                string UsuarioWS = "portaldocliente";
                string SenhaWS = "5d7fwp";

                string resp = objLogin.Logar(UsuarioWS, SenhaWS, txt_documento.Text, txt_cod_acesso.Text);

                //acesso teste
                if (txt_documento.Text == "123456" && txt_cod_acesso.Text == "123456")
                {
                    Session["Pioneira"] = "1";

                    Session["DocCliente"] = "123456";
                    Session["CodCliente"] = "123456";
                    Session["LojaCliente"] = "123456";
                    Session["NomeCliente"] = "CLIENTE TESTE";
                    Session["CodAcesso"] = "123456";
                    Session["UsuarioWS"] = UsuarioWS;
                    Session["SenhaWS"] = SenhaWS;

                    Response.Redirect("http://portalteste.pioneira.com.br/Home.htm");
                }
                //acesso teste


                if (resp == "[T] Acesso Restrito Permitido" || resp == "[T] Acesso Administrativo Permitido")
                {
                    Session["Pioneira"] = "1";

                    Session["DocCliente"] = objLogin.DocCliente;
                    Session["CodCliente"] = objLogin.CodCliente;
                    Session["LojaCliente"] = objLogin.LojaCliente;
                    Session["NomeCliente"] = objLogin.NomeCliente;                    
                    Session["CodAcesso"] = txt_cod_acesso.Text;                    
                    Session["UsuarioWS"] = UsuarioWS;
                    Session["SenhaWS"] = SenhaWS;

                    Response.Redirect("Home.aspx");
                }
                else
                {
                    lbl_msg.Text = resp.Replace("[F]","");
                }

            }catch(Exception ex)
            {
                lbl_msg.Text = ex.Message;
            }

        }
    }
}