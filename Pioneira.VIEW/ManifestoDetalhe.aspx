<%@ Page Title="" Language="C#" MasterPageFile="~/MP.Master" AutoEventWireup="true" CodeBehind="ManifestoDetalhe.aspx.cs" Inherits="Pioneira.ManifestoDetalhe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>

        <asp:Label ID="lbl_msg" runat="server" Text=""></asp:Label>
        <table border="0" align="center" width=600px>
        <tr id="bgcolor">
            <td class="td" align=center>
                <strong style="color: #FFFFFF">Detalhe do Manifesto</strong></td>
        </tr>
        </table>
        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="600px" 
            CellPadding="4" EnableModelValidation="True" ForeColor="#333333" 
            GridLines="None" AutoGenerateRows="False">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
            <EditRowStyle BackColor="#2461BF" />
            <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="MANIFESTO" HeaderText="01-Manifesto:" />
                <asp:BoundField DataField="DATALANCAMENTO" HeaderText="02-Dt. Lancto.:" />
                <asp:BoundField DataField="CLIENTELOJA" HeaderText="03-Cliente/Loja:" />                
                <asp:BoundField DataField="NOME" HeaderText="04-Nome:" />                
                <asp:BoundField DataField="CODIGOSERVICO" HeaderText="05-Cod. Serviço:" />
                <asp:BoundField DataField="DESTINACAO" HeaderText="06-Destinação:" />
                <asp:BoundField DataField="QTDEEQUIPAMENTO" HeaderText="07-Qtde. Equipto.:" />
                <asp:BoundField DataField="VEICULOCOLETA" HeaderText="08-Veic. Coleta:" />
                <asp:BoundField DataField="KMVEICULOCOLETA" HeaderText="09-KM. Coleta:" />
                <asp:BoundField DataField="DTHRCHEGADACLIENTE" HeaderText="10-Dt./Hora Chegada:" />
                <asp:BoundField DataField="DTHRSAIDACLIENTE" HeaderText="11-Dt./Hora Saída:" />
                <asp:BoundField DataField="USUARIOCOLETA" HeaderText="12-Usr. Coleta:" />
                <asp:BoundField DataField="OBSCOLETA" HeaderText="13-Obs. Coleta:" />
                <asp:BoundField DataField="VEICULODESTINACAO" HeaderText="14-Veic. Dest.:" />
                <asp:BoundField DataField="KMVEICULODESTINACAO" HeaderText="15-KM. Dest.:" />                
                <asp:BoundField DataField="PESO" HeaderText="16-Peso:" />
                <asp:BoundField DataField="DTHRDEPOSICAO" HeaderText="17-Dt./Hora Deposição:" />
                <asp:BoundField DataField="USUARIODEPOSICAO" HeaderText="18-Usr. Destinac.:" />
                <asp:BoundField DataField="OBSDEPOSICAO" HeaderText="19-Obs. Destino:" />                
                <asp:BoundField DataField="OBSERVACAOCLIENTE" HeaderText="20-Obs. Cliente:" />                
                <asp:BoundField DataField="OBSERVACAOPIONEIRA" HeaderText="21-Obs. Pioneira:" />                
                <asp:BoundField DataField="MENSAGEM" HeaderText="22-Mensagem:" />                
            </Fields>
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
        </asp:DetailsView>
        <br />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click1" 
            Text="Voltar" />
        
        &nbsp;</center>
</asp:Content>
