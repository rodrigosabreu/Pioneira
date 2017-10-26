<%@ Page Title="" Language="C#" MasterPageFile="~/MP.Master" AutoEventWireup="true" CodeBehind="Manifesto.aspx.cs" Inherits="Pioneira.Manifesto" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server" EnableScriptGlobalization=true>
    </asp:ToolkitScriptManager>

    <asp:CalendarExtender ID="CalendarExtender1" runat="server" Format="dd/MM/yyyy" 
        PopupButtonID="ImageButton1" TargetControlID="txt_data_incial" PopupPosition="BottomRight">
    </asp:CalendarExtender>

    <asp:CalendarExtender ID="CalendarExtender2" runat="server" Format="dd/MM/yyyy" 
        PopupButtonID="ImageButton2" TargetControlID="txt_data_final" PopupPosition="BottomRight">
    </asp:CalendarExtender>


    <center>

        

    Data Inicial:<asp:TextBox ID="txt_data_incial" runat="server"></asp:TextBox>
        <asp:MaskedEditExtender ID="txt_data_incial_MaskedEditExtender" runat="server" 
          Mask="99/99/9999" MaskType="Date"   TargetControlID="txt_data_incial">
        </asp:MaskedEditExtender>
        <asp:ImageButton ID="ImageButton1" runat="server" 
            ImageUrl="~/Images/calendario.gif" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Data Final:<asp:TextBox 
    ID="txt_data_final" runat="server"></asp:TextBox>
        <asp:MaskedEditExtender ID="txt_data_final_MaskedEditExtender" runat="server" 
          Mask="99/99/9999" MaskType="Date"   TargetControlID="txt_data_final">
        </asp:MaskedEditExtender>
        <asp:ImageButton ID="ImageButton2" runat="server" 
            ImageUrl="~/Images/calendario.gif" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
    <asp:Button ID="Button1" runat="server" Text="Buscar Manifestos" 
        onclick="Button1_Click" />
    
    <br /><br />
    <asp:Label ID="lbl_msg" runat="server" ForeColor="Red"></asp:Label>

    <asp:GridView ID="GridView1" runat="server" CellPadding="4" 
        EnableModelValidation="True" ForeColor="#333333" GridLines="None" 
            Width="600px" AutoGenerateColumns="False" 
            onrowdatabound="GridView1_RowDataBound">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="MANIFESTO" HeaderText="Cod. Manifesto" />
            <asp:BoundField DataField="DATALANCAMENTO" DataFormatString="{0:dd/MM/yyyy}" 
                HeaderText="Data Lançamento" />
            <asp:BoundField DataField="CODIGOSERVICO" HeaderText="Cod. Serviço" />
            <asp:BoundField HeaderText="Detalhe" />
            <asp:BoundField DataField="MENSAGEM" HeaderText="Mensagem" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    </asp:GridView>

    </ceter>

</asp:Content>
