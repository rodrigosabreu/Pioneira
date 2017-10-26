using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pioneira
{
    public partial class ManifestoLista : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Pioneira.BLL.ManifestacaoBLL ObjManifestos = new BLL.ManifestacaoBLL();
            Pioneira.BLL.Protheus.WSMANIFESTOAMBIENTAL list = ObjManifestos.ListaTodosManifesto();
            GridView1.DataSource = list.MANIFESTOAMBIENTALLIST;
            GridView1.DataBind();
        }
    }
}