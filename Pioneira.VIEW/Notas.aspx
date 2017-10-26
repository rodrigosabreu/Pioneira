<%@ Page Title="" Language="C#" MasterPageFile="~/MP.Master" AutoEventWireup="true" CodeBehind="Notas.aspx.cs" Inherits="Pioneira.Notas" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server" EnableScriptGlobalization="true">
    </asp:ToolkitScriptManager>   
    
    <asp:CalendarExtender ID="CalendarExtender1" runat="server" 
        PopupButtonID="ImageButton1" 
        TargetControlID="txt_data_incial" 
        Format="dd/MM/yyyy" PopupPosition="BottomRight">
    </asp:CalendarExtender>

    <asp:CalendarExtender ID="CalendarExtender2" runat="server" 
        PopupButtonID="ImageButton2" 
        TargetControlID="txt_data_final" 
        Format="dd/MM/yyyy" PopupPosition="BottomRight">
    </asp:CalendarExtender>
        
    <center>
 Data Inicial:<asp:TextBox ID="txt_data_incial" runat="server"></asp:TextBox>
        <asp:MaskedEditExtender ID="txt_data_incial_MaskedEditExtender" runat="server" 
            Mask="99/99/9999" MaskType="Date" TargetControlID="txt_data_incial">
        </asp:MaskedEditExtender>
        <asp:ImageButton ID="ImageButton1" runat="server" 
            ImageUrl="~/Images/calendario.gif" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Data Final:<asp:TextBox 
    ID="txt_data_final" runat="server"></asp:TextBox>
        <asp:MaskedEditExtender ID="txt_data_final_MaskedEditExtender" runat="server" 
          Mask="99/99/9999" MaskType="Date"  TargetControlID="txt_data_final">
        </asp:MaskedEditExtender>
    <asp:ImageButton ID="ImageButton2" runat="server" 
            ImageUrl="~/Images/calendario.gif" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
    <asp:Button ID="Button1" runat="server" Text="Buscar Notas" 
        onclick="Button1_Click" />
    
    <br /><br />
        <asp:Label ID="lbl_msg" runat="server" ForeColor="Red"></asp:Label>

    <asp:GridView ID="GridView1" runat="server" EnableModelValidation="True" 
        AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" 
        GridLines="None" Width=448px>
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="NUMERO" HeaderText="Nº da Nota" />
            <asp:BoundField DataField="SERIE" HeaderText="Série" />
            <asp:BoundField DataField="EMISSAO" HeaderText="Dt. Emissão" 
                DataFormatString="{0:dd/MM/yyyy}" >                          
            <FooterStyle HorizontalAlign="Center" />
            <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="VALORTOTAL" HeaderText="Valor Total (R$)" 
                DataFormatString="{0:N}" >
            <FooterStyle HorizontalAlign="Right" />
            <HeaderStyle HorizontalAlign="Right" />
            <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    </asp:GridView>
    </center>
</asp:Content>
