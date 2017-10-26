<%@ Page Title="" Language="C#" MasterPageFile="~/MP.Master" AutoEventWireup="true" CodeBehind="SenhaUser.aspx.cs" Inherits="Pioneira.SenhaUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   <style type="text/css">
    .style2
    {
           width: 230px;
           text-align: left;
       }
    .style3
    {
           width: 210px;
           text-align: left;
       }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <table border="0" align="center" >
        <tr id="bgcolor">
            <td class="td" colspan="2">
                <strong style="color: #FFFFFF">Alterar Senha Usuário</strong></td>
        </tr>
        <tr>
            <td class="style3">
                Senha Atual de Administrador:</td>
            <td class="style2">
                <asp:TextBox ID="txt_senha_atual" runat="server" Width="150px" 
                    TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Senha nova:</td>
            <td class="style2">
                <asp:TextBox ID="txt_senha_nova" runat="server" Width="150px" 
                    TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Confirma senha:</td>
            <td class="style2" class="style4">
                <asp:TextBox ID="txt_confirma_senha" runat="server" Width="150px" 
                    TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3" class="style2">
                &nbsp;</td>
            <td class="style2">
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
