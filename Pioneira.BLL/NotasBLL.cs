using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

namespace Pioneira.BLL
{
    public class NotasBLL
    {
        public Protheus.WSNOTAFISCALAMBIENTAL BuscarNotas(string UsuarioWS, string SenhaWS, string cod_cliente, string cod_loja, string cod_acesso, DateTime data_inicial, DateTime data_final)
        {
            Protheus.WSPAMBIENTAL ObjProtheus = new Protheus.WSPAMBIENTAL();
            var resp = ObjProtheus.GETNOTAFISCAL(UsuarioWS, SenhaWS, cod_cliente, cod_loja, cod_acesso, data_inicial, data_final);
            string status = resp.CSTATUS;

            if (status != "[T] OK")
                throw new Exception(status);

            return resp;
        }   
    }
}