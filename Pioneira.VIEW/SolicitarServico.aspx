<%@ Page Title="" Language="C#" MasterPageFile="~/MP.Master" AutoEventWireup="true" CodeBehind="SolicitarServico.aspx.cs" Inherits="Pioneira.SolicitarServico" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style5
        {
            border-bottom: 3px solid #f1f1f1;
            padding: 3px;
            color: #000000;
            font-size: 9pt;
            width: 401px;
        }
        .style6
        {
            border-bottom: 3px solid #f1f1f1;
            padding: 3px;
            color: #000000;
            font-size: 9pt;
            text-align: left;
            width: 153px;
        }
        .style7
        {
            border-bottom: 3px solid #f1f1f1;
            padding: 3px;
            color: #000000;
            font-size: 9pt;
            width: 153px;
        }
        .style8
        {
            border-bottom: 3px solid #f1f1f1;
            padding: 3px;
            color: #000000;
            font-size: 9pt;
            width: 401px;
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
   
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>

    <asp:CalendarExtender ID="CalendarExtender1" runat="server" Format="dd/MM/yyyy" 
    PopupButtonID="ImageButton1" TargetControlID="txt_data" PopupPosition="BottomRight">
    </asp:CalendarExtender>

    
    <table border="0" align="center" >
        <tr id="bgcolor">
            <td class="td" colspan="2">
                <strong style="color: #FFFFFF">Solicitação de Serviço</strong></td>
        </tr>
        <tr>
            <td class="style6">
                Cód. Serviço</td>
            <td class="style8">
                <asp:Label ID="lbl_cod_servico" runat="server" Text="Label"></asp:Label>
                <asp:HiddenField ID="hidden_cod_servico" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="style6">
                Resíduo:</td>
            <td class="style8">
                <asp:Label ID="lbl_residuo" runat="server" Text="Label"></asp:Label>
                <asp:HiddenField ID="hidden_residuo" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="style6">
                E-mail Contato:</td>
            <td class="style8" class="style4">
                <asp:Label ID="lbl_email" runat="server" Text="Label"></asp:Label>
                <asp:HiddenField ID="hidden_email" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="style6">
                E-mail Responsável:</td>
            <td class="style8" class="style4">
                <asp:Label ID="lbl_email2" runat="server" Text="Label"></asp:Label>
                <asp:HiddenField ID="hidden_email2" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="style6">
                Data Coleta:</td>
            <td class="style8" class="style4">
                <asp:TextBox ID="txt_data" runat="server"></asp:TextBox>
                <asp:MaskedEditExtender ID="txt_data_MaskedEditExtender" runat="server" 
                 Mask="99/99/9999" MaskType="Date"    TargetControlID="txt_data">
                </asp:MaskedEditExtender>
                <asp:ImageButton ID="ImageButton1" runat="server" 
                    ImageUrl="~/Images/calendario.gif" />
            </td>
        </tr>
        <tr>
            <td class="style6">
                Observação:</td>
            <td class="style8" class="style4">
                <asp:TextBox ID="txt_obs" runat="server" MaxLength="80" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style7" class="style2">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="td" colspan=2>
    <b><asp:Label ID="lbl_msg" runat="server" ForeColor="Red"></asp:Label></b><br>
                <asp:Button ID="Button1" runat="server" Text="Enviar" onclick="Button1_Click" />
            &nbsp;<asp:Button ID="Button2" runat="server" Text="Voltar" />
            </td>
        </tr>
    </table>    

    <br><br>

    <center>
    </center>
</asp:Content>
