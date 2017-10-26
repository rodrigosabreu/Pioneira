using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BoletoNet;

namespace Pioneira
{
    public partial class BoletoDetalhe : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            if (Session["Pioneira"] == null)
            {
                Response.Redirect("Default.aspx");
            }        
            
            
            try
            {

                string num_boleto = Request.QueryString["num_boleto"];
                string num_prefixo = Request.QueryString["num_prefixo"];
                
                Pioneira.BLL.BoletoBLL objNotas = new BLL.BoletoBLL();
                Pioneira.BLL.Protheus.WSBOLETODETALHEAMBIENTAL b = objNotas.BuscarBoletoDetalhe(Session["UsuarioWS"].ToString(), Session["SenhaWS"].ToString(), Session["CodCliente"].ToString(), Session["Lojacliente"].ToString(), Session["CodAcesso"].ToString(), num_boleto, num_prefixo);
                
                Pioneira.BLL.Protheus.INFOBOLETODETALHEAMBIENTAL resp = b.BOLETODETALHEAMBIENTALLIST[0];

                string vencimento = resp.DATAVENCIMENTO.ToString(); //"07/05/2013";
                string valorBoleto = resp.VALOR.ToString(); //"23940,00";
                string numeroDocumento = resp.NUMERODOCUMENTO.ToString(); //"081914-0";

                string data_documento = resp.DATAMOVIMENTO.ToString();//"24/04/2013";
                string data_processamento = resp.DATAEMISSAO.ToString();// "23/04/2013";

                //cedente
                string cedente_codigo = resp.CODIGOCEDENTE.ToString(); //"43680";
                string cedente_nossoNumeroBoleto = resp.NOSSONUMERO.ToString().Replace("X","0"); //"18590808762X"; troca o x pelo 0
                string cedente_cpfCnpj = resp.CNPJCEDENTE.ToString(); //"62719083000120";
                string cedente_nome = resp.NOMECEDENTE.ToString(); //"PIONEIRA SANEAMENTO E LIMPEZA URBANA LTDA";
                string cedente_agencia = resp.AGENCIACEDENTE.ToString(); //"3222";
                string cedente_conta = resp.CONTACEDENTE.ToString();//"4368";
                string cedente_digitoConta = resp.DIGITOCEDENTE.ToString();//"0";

                //sacado
                string sacado_cpfCnpj = resp.CPFCNPJSACADO.ToString();//"01382443000157";
                string sacado_nome = resp.NOMESACADO.ToString();//"MULTILIXO REMOCOES DE LIXO S/S LTDA (02618)";
                string sacado_endereco = resp.ENDCOB.ToString();//"RUA DO USHIKICHI KAMIYA, 3555";
                string sacado_bairro = resp.BAIRROCOB.ToString();// "PQ CASA DE PEDRA";
                string sacado_cidade = resp.MUNCOB.ToString(); //"SAO PAULO";
                string sacado_cep = resp.CEPCOB.ToString();//"02323000";
                string sacado_uf = resp.UFCOB.ToString();//"SP";

                string carteira = resp.CARTEIRA.ToString();//"17";
                string especie_bb = resp.ESPECIEBB.ToString(); //"99";
                short codigo_banco = short.Parse(resp.CODBANCO.ToString());//001;
                int convenio_bb = Convert.ToInt32(resp.CONVENIO.ToString());//185908;
                string descricao = resp.TEXTO1.ToString().Trim() + "<br>" + resp.TEXTO2.ToString().Trim() + "<br>" + resp.TEXTO3.ToString().Trim();


                Cedente cedente = new Cedente(cedente_cpfCnpj,
                cedente_nome,
                cedente_agencia,
                cedente_conta,
                cedente_digitoConta);
                cedente.Codigo = Convert.ToInt32(cedente_codigo);
                cedente.Convenio = convenio_bb;

                Boleto boleto = new Boleto();
                boleto.DataVencimento = Convert.ToDateTime(vencimento);
                boleto.ValorBoleto = Convert.ToDecimal(valorBoleto);
                boleto.Carteira = carteira;
                boleto.NossoNumero = cedente_nossoNumeroBoleto;
                boleto.Cedente = cedente;
                boleto.NumeroDocumento = numeroDocumento;
                boleto.DataDocumento = Convert.ToDateTime(data_documento);
                boleto.DataProcessamento = Convert.ToDateTime(data_processamento);

                Sacado sacado = new Sacado(sacado_cpfCnpj, sacado_nome);
                boleto.Sacado = sacado;
                boleto.Sacado.Endereco.End = sacado_endereco;
                boleto.Sacado.Endereco.Bairro = sacado_bairro;
                boleto.Sacado.Endereco.CEP = sacado_cep;
                boleto.Sacado.Endereco.Cidade = sacado_cidade;                
                boleto.Sacado.Endereco.UF = sacado_uf;

                Instrucao_BancoBrasil instrucao = new Instrucao_BancoBrasil();
                instrucao.Descricao = descricao;

                boleto.Instrucoes.Add(instrucao);
                EspecieDocumento_BancoBrasil especie = new EspecieDocumento_BancoBrasil(especie_bb);
                boleto.EspecieDocumento = especie;

                BoletoBancario boleto_bancario = new BoletoBancario();
                boleto_bancario.CodigoBanco = codigo_banco;
                boleto_bancario.Boleto = boleto;
                boleto_bancario.MostrarCodigoCarteira = false;
                boleto_bancario.Boleto.Valida();

                boleto_bancario.MostrarComprovanteEntrega = false;                

                Panel1.Controls.Add(boleto_bancario);



            }
            catch (Exception ex)
            {
                lbl_msg.Text = ex.Message;
            }
        }
    }
}