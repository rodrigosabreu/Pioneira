using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Configuration;
using System.Web.Configuration;
using System.Net.Configuration;
using System.Net;
using System.Text;

namespace Pioneira
{
    public partial class SolicitarServico : System.Web.UI.Page
    {
                
        
        protected void Page_Load(object sender, EventArgs e)
        {
            Button2.Attributes.Add("onClick", "javascript:history.back(); return false;");

            string cod_servico = Request.QueryString["cod_servico"];            

            Pioneira.BLL.ServicoBLL ObjServico = new BLL.ServicoBLL();
            Pioneira.BLL.Protheus.WSSERVICODETALHEAMBIENTAL m = ObjServico.BuscarServicoDetalhe(Session["UsuarioWS"].ToString(), Session["SenhaWS"].ToString(), Session["CodCliente"].ToString(), Session["Lojacliente"].ToString(), Session["CodAcesso"].ToString(), cod_servico);
            
            Pioneira.BLL.Protheus.INFOSERVICODETALHEAMBIENTAL resp = m.SERVICODETALHEAMBIENTALLIST[0];

            lbl_cod_servico.Text = resp.CODIGOSERVICO;
            lbl_residuo.Text = resp.RESIDUO;
            lbl_email.Text = resp.EMAILCONTATO;
            lbl_email2.Text = resp.EMAILRESPONSAVEL;
            
            hidden_cod_servico.Value = resp.CODIGOSERVICO;
            hidden_residuo.Value = resp.RESIDUO;
            hidden_email.Value = resp.EMAILCONTATO;
            hidden_email2.Value = resp.EMAILRESPONSAVEL;
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            try
            {
                if (String.IsNullOrEmpty(txt_data.Text))
                {
                    throw new Exception("O campo Data Coleta está em branco!");
                }                            

                DateTime data = Convert.ToDateTime(txt_data.Text);
                string cod = hidden_cod_servico.Value;
                
                Pioneira.BLL.ServicoBLL ObjServico = new BLL.ServicoBLL();
                Pioneira.BLL.Protheus.WSUPDMANIFESTOAMBIENTAL m = ObjServico.SolicitaServico(Session["UsuarioWS"].ToString(), Session["SenhaWS"].ToString(), Session["CodCliente"].ToString(), Session["Lojacliente"].ToString(), Session["CodAcesso"].ToString(), cod, data,txt_obs.Text);
                
                Configuration c = WebConfigurationManager.OpenWebConfiguration(HttpContext.Current.Request.ApplicationPath);
                MailSettingsSectionGroup mailSettings = (MailSettingsSectionGroup)c.GetSectionGroup("system.net/mailSettings");
                MailMessage mail = new MailMessage();

                string host = mailSettings.Smtp.Network.Host;
                int port = mailSettings.Smtp.Network.Port;
                string username = mailSettings.Smtp.Network.UserName;
                string password = mailSettings.Smtp.Network.Password;
                bool defaultCredentials = mailSettings.Smtp.Network.DefaultCredentials;                
                string from = "envio.servicos@pioneira.com.br";
                
                StringBuilder body = new StringBuilder();

                body.Append("<b>Cliente: </b>" + Session["NomeCliente"] + "<br>");
                body.Append("<b>E-mail do Cliente: </b>" + from + "<br>");
                body.Append("<b>Código do Serviço: </b>" + hidden_cod_servico.Value + "<br>");
                body.Append("<b>Resíduo: </b>" + hidden_residuo.Value + "<br>");
                body.Append("<b>Data Coleta: </b>" + txt_data.Text + "<br>");
                body.Append("<b>Observação: </b>" + txt_obs.Text + "<br>");                     

                mail.From = new MailAddress(from);
                
                mail.To.Add("solicitacao.servicos@pioneira.com.br");

                if (!String.IsNullOrEmpty(hidden_email.Value))
                {
                    mail.To.Add("rodrigo.abreu@pioneira.com.br");
                }

                if (!String.IsNullOrEmpty(hidden_email2.Value))
                {
                    mail.To.Add("rodrigo.abreu@pioneira.com.br");
                }

                mail.Subject = "Solicitação de Serviços - " + Session["NomeCliente"];
                mail.Body = body.ToString();
                mail.IsBodyHtml = true;

                SmtpClient client = new SmtpClient(host, port);
                NetworkCredential cred = new NetworkCredential(username, password);

                client.EnableSsl = false;
                client.UseDefaultCredentials = defaultCredentials;
                client.Credentials = cred;
                client.Send(mail);

                lbl_msg.Text = "Serviço solicitado, aguarde a aprovação ou entre em contato (11)4748-2922!";

                txt_data.Text = "";
                txt_obs.Text = "";

            }
            catch (FormatException ex)
            {
                lbl_msg.Text = "Data inválida";
            }
            catch (Exception ex)
            {
                lbl_msg.Text = ex.Message;
            }

        }
    }
}