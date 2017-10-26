<%@ Page Title="" Language="C#" MasterPageFile="~/MP.Master" AutoEventWireup="true" CodeBehind="ManifestoLista.aspx.cs" Inherits="Pioneira.ManifestoLista" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" EnableModelValidation="True" ForeColor="#333333" 
        GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="MANIFESTO" HeaderText="Num Manifesto" />
            <asp:BoundField DataField="DATALANCAMENTO" HeaderText="Dt. Lançamento" />
            <asp:BoundField DataField="NOME" HeaderText="Cliente" />
            <asp:BoundField DataField="DESTINACAO" HeaderText="Destinação" />
            <asp:BoundField DataField="DTHRCHEGADACLIENTE" 
                HeaderText="Dt. Hr. Chegada Cliente" />
            <asp:BoundField DataField="DTHRSAIDACLIENTE" 
                HeaderText="Dt. Hr. Saida Cliente" />
            <asp:BoundField DataField="USUARIOCOLETA" HeaderText="Usr. Coleta" />
            <asp:BoundField DataField="USUARIODEPOSICAO" HeaderText="Usr. Dest." />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    </asp:GridView>
</asp:Content>
