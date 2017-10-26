using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pioneira
{
    public partial class SenhaUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                if (txt_senha_nova.Text != txt_confirma_senha.Text)
                {
                    throw new Exception("Senhas não conferem, tente novamente!");
                }
                if (String.IsNullOrEmpty(txt_senha_atual.Text))
                {
                    throw new Exception("Campo Senha atual em branco!");
                }
                if (String.IsNullOrEmpty(txt_senha_nova.Text))
                {
                    throw new Exception("Campo Senha nova em branco!");
                }
                if (String.IsNullOrEmpty(txt_confirma_senha.Text))
                {
                    throw new Exception("Campo Confirma nova em branco!");
                }
                string senha = txt_senha_nova.Text.Trim();
                if (senha.Length < 6)
                {
                    throw new Exception("A quantidade mínima é 6 caracteres para senha");
                }

                Pioneira.BLL.Login ObjLogin = new BLL.Login();
                string resp = ObjLogin.UdateSenhaUser(Session["UsuarioWS"].ToString(), Session["SenhaWS"].ToString(), Session["CodCliente"].ToString(), Session["Lojacliente"].ToString(), txt_senha_atual.Text, txt_senha_nova.Text);

                txt_confirma_senha.Text = "";
                txt_senha_atual.Text = "";
                txt_senha_nova.Text = "";

                lbl_msg.Text = resp.Replace("[T]", "");

            }
            catch (Exception ex)
            {
                lbl_msg.Text = ex.Message;
            }
        }
    }
}