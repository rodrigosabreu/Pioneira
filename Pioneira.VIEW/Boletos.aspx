<%@ Page Title="" Language="C#" MasterPageFile="~/MP.Master" AutoEventWireup="true" CodeBehind="Boletos.aspx.cs" Inherits="Pioneira.Boletos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
     <center>
     
     <asp:Label ID="lbl_msg" runat="server" ForeColor="Red"></asp:Label>
    <asp:GridView ID="GridView1" runat="server" CellPadding="4" 
        EnableModelValidation="True" ForeColor="#333333" GridLines="None" 
        Width=489px AutoGenerateColumns="False" onrowdatabound="GridView1_RowDataBound">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="NUMERO" HeaderText="Nº Boleto" />
            <asp:BoundField DataField="PREFIXO" HeaderText="Prefixo" />            
            <asp:BoundField DataField="Valor" DataFormatString="{0:N}" 
                HeaderText="Valor (R$)" >
            <FooterStyle HorizontalAlign="Right" />
            <HeaderStyle HorizontalAlign="Right" />
            <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="VENCIMENTO" HeaderText="Vencimento" 
                DataFormatString="{0:dd/MM/yyyy}" />
            <asp:BoundField HeaderText="Status" DataField="CSTATUS" />
            <asp:BoundField HeaderText="Imprimir" />
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
