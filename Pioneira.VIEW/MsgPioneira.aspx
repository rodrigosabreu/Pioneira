<%@ Page Title="" Language="C#" MasterPageFile="~/MP.Master" AutoEventWireup="true" CodeBehind="MsgPioneira.aspx.cs" Inherits="Pioneira.MsgPioneira" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 400px;
        }
        .style2
        {
            text-align: left;
        }
        .style3
        {
            width: 400px;
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table border="0" align="center" >
        <tr id="bgcolor">
            <td class="td" colspan="2">
                <strong style="color: #FFFFFF">Entre em contato com a Pioneira</strong></td>
        </tr>
        <tr>
            <td class="style2">
                Cliente:</td>
            <td class="style3">
                <asp:Label ID="lbl_cliente" runat="server" Text="Label"></asp:Label>
                <asp:HiddenField ID="hidden_cliente" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="style2">
                Contato:</td>
            <td class="style3">
                <asp:TextBox ID="txt_contato" runat="server" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                E-mail:</td>
            <td class="style3" class="style4">
                <asp:TextBox ID="txt_email" runat="server" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Tel::</td>
            <td class="style3" class="style4">
                <asp:TextBox ID="txt_tel" runat="server" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Observação:</td>
            <td class="style3" class="style4">
                <asp:TextBox ID="txt_obs" runat="server" MaxLength="80" Width="300px" 
                    TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style7" class="style2">
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
