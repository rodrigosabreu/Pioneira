using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Pioneira.BLL
{
    public class Login
    {

        private string docCliente;       
        private string codCliente;
        private string lojaCliente;
        private string nomeCliente;       
        
        public string DocCliente
        {
            get { return docCliente; }
            set { docCliente = value; }
        }        
        public string CodCliente
        {
            get { return codCliente; }
            set { codCliente = value; }
        }
        public string LojaCliente
        {
            get { return lojaCliente; }
            set { lojaCliente = value; }
        }
        public string NomeCliente
        {
            get { return nomeCliente; }
            set { nomeCliente = value; }
        }

        public string UdateSenhaAdmin(string UsuarioWS, string SenhaWS, string cod_cliente, string cod_loja,string senha_atual, string senha_nova)
        {
            Protheus.WSPAMBIENTAL ObjProtheus = new Protheus.WSPAMBIENTAL();
            var resp = ObjProtheus.UPDCODIGOACESSOADM(UsuarioWS, SenhaWS, cod_cliente, cod_loja, senha_atual, senha_nova);
            string status = resp.CSTATUS;
            return status;
        }

        public string UdateSenhaUser(string UsuarioWS, string SenhaWS, string cod_cliente, string cod_loja, string senha_atual, string senha_nova)
        {
            Protheus.WSPAMBIENTAL ObjProtheus = new Protheus.WSPAMBIENTAL();
            var resp = ObjProtheus.UPDCODIGOACESSO(UsuarioWS, SenhaWS, cod_cliente, cod_loja, senha_atual, senha_nova);
            string status = resp.CSTATUS;
            return status;
        }

        public string Logar(string UsuarioWS, string SenhaWS, string documento, string cod_acesso)
        {
            Protheus.WSPAMBIENTAL ObjProtheus = new Protheus.WSPAMBIENTAL();
            
            var resp = ObjProtheus.GETCLIENTE(UsuarioWS, SenhaWS, documento, cod_acesso);
            string status = resp.CSTATUS;

            DocCliente  = resp.CLIENTEAMBIENTALLIST[0].CNPJ;
            CodCliente  = resp.CLIENTEAMBIENTALLIST[0].CODIGO;
            LojaCliente = resp.CLIENTEAMBIENTALLIST[0].LOJA;
            NomeCliente = resp.CLIENTEAMBIENTALLIST[0].NOME;
            
            return status;
        }


    }
}