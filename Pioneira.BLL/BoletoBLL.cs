using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

namespace Pioneira.BLL
{
    public class BoletoBLL
    {
        public Protheus.WSBOLETOAMBIENTAL BuscarBoletos(string UsuarioWS, string SenhaWS, string cod_cliente, string cod_loja, string cod_acesso)
        {
            Protheus.WSPAMBIENTAL ObjProtheus = new Protheus.WSPAMBIENTAL();
            var resp = ObjProtheus.GETBOLETO(UsuarioWS, SenhaWS, cod_cliente, cod_loja, cod_acesso);
            string status = resp.CSTATUS;

            if (status != "[T] OK")
                throw new Exception(status);

            return resp;
        }  


        public Protheus.WSBOLETODETALHEAMBIENTAL BuscarBoletoDetalhe(string UsuarioWS, string SenhaWS, string cod_cliente, string cod_loja, string cod_acesso, string num_boleto, string num_prefixo)
        {
            Protheus.WSPAMBIENTAL ObjProtheus = new Protheus.WSPAMBIENTAL();
            var resp = ObjProtheus.GETBOLETODETALHE(UsuarioWS, SenhaWS, cod_cliente, cod_loja, cod_acesso, num_boleto, num_prefixo);
            string status = resp.CSTATUS;

            if (status != "[T] OK")
                throw new Exception(status);
            
            return resp;
        } 


    }
}