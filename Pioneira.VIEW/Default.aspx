<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Pioneira.Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style3
        {
            width: 163px;
        }
        .style4
        {
            width: auto;
            height: 15px;
            background: #D0DEF0 url('Images/wbg.gif') repeat-x;
            border-right: solid 1px #c0c0c0;
            border-left: solid 1px #c0c0c0;
            border-bottom: solid 1px #c0c0c0;
            display: block;
            padding: 5px;
            position: relative;
            margin-bottom: 5px;
            text-align: center;
            border-top-style: none;
            border-top-color: inherit;
            border-top-width: 0px;
        }
        .style5
        {
            width: 397px;
        }
    </style>
</head>
    <link href="CSS/Estilo.css" rel="stylesheet" type="text/css" />
<body>
    <form id="form1" runat="server">



    <div class="topo"></div>
<div id="Div1" class="barra" runat="server"><center><b>CONTROLE DE ACESSO</b></center></div>



    <br />
    <br />
    <br />
    <br />


    <table cellpadding="2" cellspacing="2" align="center" border="0" class="tabela">
                   <tr>
            <td colspan="2" >
                <div class="style4"><b style="text-align: center">Autenticação</b></div></td>
        </tr>
                 <tr>
                     <td id=bgcolor6 class="style3">
                         <b>CNPJ/CPF</b>:</td>
                     <td class="style5">
    <asp:TextBox ID="txt_documento" runat="server"></asp:TextBox>
                     &nbsp; Somente números.</td>
                 </tr>
                 <tr>
                     <td  id=bgcolor7 class="style3">
                         <b>Código Acesso</b>:</td>
                     <td class="style5">

    <asp:TextBox ID="txt_cod_acesso" runat="server" TextMode="Password"></asp:TextBox>
    
                     </td>
                 </tr>
                 <tr>
                     <td colspan="2" align=center>
    <asp:Button ID="Button1" runat="server" Text="ENTRAR" onclick="Button1_Click" />
                     </td>
                 </tr>
                   <tr>
                       <td align="center" colspan="2">

    <asp:Label ID="lbl_msg" runat="server" ForeColor="Red"></asp:Label>



                       </td>
                   </tr>
                   <tr>
                       <td align="center" colspan="2">
                           &nbsp;</td>
                   </tr>
             </table>



    </form>
</body>
</html>
