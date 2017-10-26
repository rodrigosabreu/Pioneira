using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Pioneira.BLL
{
    public class ServicoBLL
    {

        public Protheus.WSSERVICOAMBIENTAL BuscarServicos(string UsuarioWS, string SenhaWS, string cod_cliente, string cod_loja, string cod_acesso)
        {
            Protheus.WSPAMBIENTAL ObjProtheus = new Protheus.WSPAMBIENTAL();
            var resp = ObjProtheus.GETSERVICO(UsuarioWS, SenhaWS, cod_cliente, cod_loja, cod_acesso);
            string status = resp.CSTATUS;

            if (status != "[T] OK")
                throw new Exception(status);

            return resp;
        }

        public Protheus.WSSERVICODETALHEAMBIENTAL BuscarServicoDetalhe(string UsuarioWS, string SenhaWS, string cod_cliente, string cod_loja, string cod_acesso, string cod_servico)
        {
            Protheus.WSPAMBIENTAL ObjProtheus = new Protheus.WSPAMBIENTAL();
            var resp = ObjProtheus.GETSERVICODETALHE(UsuarioWS, SenhaWS, cod_cliente, cod_loja, cod_acesso, cod_servico);
            string status = resp.CSTATUS;

            if (status != "[T] OK")
                throw new Exception(status);

            return resp;
        }

        public Protheus.WSUPDMANIFESTOAMBIENTAL SolicitaServico(string UsuarioWS, string SenhaWS, string cod_cliente, string cod_loja, string cod_acesso, string cod_servico, DateTime data_solicitacao, string obs)
        {
            Protheus.WSPAMBIENTAL ObjProtheus = new Protheus.WSPAMBIENTAL();
            var resp = ObjProtheus.UPDMANIFESTO(UsuarioWS, SenhaWS, cod_cliente, cod_loja, cod_acesso, data_solicitacao, cod_servico, obs);
            string status = resp.CSTATUS;

            if (status != "[T] OK")
                throw new Exception(status);

            return resp;
        }

    }
}