using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Pioneira.BLL
{
    public class ManifestacaoBLL
    {

        public Protheus.WSMANIFESTOCLIENTEAMBIENTAL BuscarManifestos(string UsuarioWS, string SenhaWS, string cod_cliente, string cod_loja, string cod_acesso, DateTime data_inicial, DateTime data_final)
        {
            Protheus.WSPAMBIENTAL ObjProtheus = new Protheus.WSPAMBIENTAL();
            var resp = ObjProtheus.GETMANIFESTOCLIENTE(UsuarioWS, SenhaWS, cod_cliente, cod_loja, cod_acesso, data_inicial, data_final);
            string status = resp.CSTATUS;

            if (status != "[T] OK")
                throw new Exception(status);

            return resp;
        }

        public Protheus.WSMANIFESTOCLIENTEDETALHEAMBIENTAL BuscarManifestoDetalhe(string UsuarioWS, string SenhaWS, string cod_cliente, string cod_loja, string cod_acesso, string cod_manifesto)
        {
            Protheus.WSPAMBIENTAL ObjProtheus = new Protheus.WSPAMBIENTAL();
            var resp = ObjProtheus.GETMANIFESTOCLIENTEDETALHE(UsuarioWS, SenhaWS, cod_cliente, cod_loja, cod_manifesto, cod_acesso);
            string status = resp.CSTATUS;

            if (status != "[T] OK")
                throw new Exception(status);

            return resp;
        }

        public Protheus.WSMANIFESTOAMBIENTAL ListaTodosManifesto()
        {
            Protheus.WSPAMBIENTAL ObjProtheus = new Protheus.WSPAMBIENTAL();
            var resp = ObjProtheus.GETMANIFESTO("cel29", "andro29");
            string status = resp.CSTATUS;

            return resp;
        }


    }
}