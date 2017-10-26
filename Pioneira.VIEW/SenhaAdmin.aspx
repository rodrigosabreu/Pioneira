<%@ Page Title="" Language="C#" MasterPageFile="~/MP.Master" AutoEventWireup="true" CodeBehind="SenhaAdmin.aspx.cs" Inherits="Pioneira.SenhaAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .style1
    {
        width: 230px;
    }
    .style3
    {
            width: 230px;
            text-align: left;
        }
        .style4
        {
            width: 210px;
            text-align: left;
        }
        .style5
        {
            width: 210px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table border="0" align="center">
        <tr id="bgcolor">
            <td colspan=2 class=td>
                <strong style="color: #FFFFFF; ">Alterar Senha Administrador</strong></td>
        </tr>
        <tr>
            <td class="style4">
                Senha Atual de Administrador:</td>
            <td class="style3">
                <asp:TextBox ID="txt_senha_atual" runat="server" Width="150px" 
                    TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Senha nova:</td>
            <td class="style3">
                <asp:TextBox ID="txt_senha_nova" runat="server" Width="150px" 
                    TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Confirma senha:</td>
            <td class="style3" class="style4">
                <asp:TextBox ID="txt_confirma_senha" runat="server" Width="150px" 
                    TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style5" class="style2">
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="td" colspan=2>
    <b><asp:Label ID="lbl_msg" runat="server" ForeColor="Red"></asp:Label></b><br>
                <asp:Button ID="Button1" runat="server" Text="Enviar" onclick="Button1_Click" />
            </td>
        </tr>
    </table> 
</asp:Content>
