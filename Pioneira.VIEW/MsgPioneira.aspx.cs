using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Web.Configuration;
using System.Net.Configuration;
using System.Net.Mail;
using System.Text;
using System.Net;

namespace Pioneira
{
    public partial class MsgPioneira : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbl_cliente.Text = Session["NomeCliente"].ToString();
            hidden_cliente.Value = Session["NomeCliente"].ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                if (String.IsNullOrEmpty(txt_contato.Text))
                {
                    throw new Exception("O campo Contato está em branco!");
                }
                if (String.IsNullOrEmpty(txt_email.Text))
                {
                    throw new Exception("O campo E-mail está em branco!");
                }
                if (String.IsNullOrEmpty(txt_tel.Text))
                {
                    throw new Exception("O campo Tel está em branco!");
                }
                if (String.IsNullOrEmpty(txt_obs.Text))
                {
                    throw new Exception("O campo Obs está em branco!");
                }

                Configuration c = WebConfigurationManager.OpenWebConfiguration(HttpContext.Current.Request.ApplicationPath);
                MailSettingsSectionGroup mailSettings = (MailSettingsSectionGroup)c.GetSectionGroup("system.net/mailSettings");
                MailMessage mail = new MailMessage();

                string host = mailSettings.Smtp.Network.Host;
                int port = mailSettings.Smtp.Network.Port;
                string username = mailSettings.Smtp.Network.UserName;
                string password = mailSettings.Smtp.Network.Password;
                bool defaultCredentials = mailSettings.Smtp.Network.DefaultCredentials;
                string from = "portaldocliente@pioneira.com.br";

                StringBuilder body = new StringBuilder();

                body.Append("<b>Cliente: </b>" + Session["NomeCliente"] + "<br>");
                body.Append("<b>Contato: </b>" + txt_contato.Text + "<br>");
                body.Append("<b>E-mail do Cliente: </b>" + txt_email.Text + "<br>");
                body.Append("<b>Telefone: </b>" + txt_tel.Text + "<br>");
                body.Append("<b>Observação: </b>" + txt_obs.Text + "<br>");

                mail.From = new MailAddress(from);
                
                mail.To.Add("portaldocliente@pioneira.com.br");

                mail.Subject = "Contato - Portal do Cliente - " + Session["NomeCliente"];
                mail.Body = body.ToString();
                mail.IsBodyHtml = true;

                SmtpClient client = new SmtpClient(host, port);
                NetworkCredential cred = new NetworkCredential(username, password);

                client.EnableSsl = false;
                client.UseDefaultCredentials = defaultCredentials;
                client.Credentials = cred;
                client.Send(mail);

                lbl_msg.Text = "E-mail enviado, aguarde a resposta ou entre em contato (11)4748-2922!";

                txt_contato.Text = "";
                txt_obs.Text = "";
                txt_tel.Text = "";
                txt_email.Text = "";

            }
            catch (Exception ex)
            { 
                lbl_msg.Text = ex.Message;
            }
        }
    }
}