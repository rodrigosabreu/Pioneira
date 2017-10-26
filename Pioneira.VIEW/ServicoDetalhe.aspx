<%@ Page Title="" Language="C#" MasterPageFile="~/MP.Master" AutoEventWireup="true" CodeBehind="ServicoDetalhe.aspx.cs" Inherits="Pioneira.ServicoDetalhe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <center>

        <asp:Label ID="lbl_msg" runat="server" Text=""></asp:Label>
        <table border="0" align="center" width=600px>
        <tr id="bgcolor">
            <td class="td" align=center>
                <strong style="color: #FFFFFF">Detalhe do Serviço</strong></td>
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
                <asp:BoundField DataField="CODIGOSERVICO" HeaderText="01-Cod. Serviço:" />
                <asp:BoundField DataField="CODIGOLOJACLIENTE" HeaderText="02-Cod. Cliente/Loja:" />
                <asp:BoundField DataField="NOMECLIENTE" HeaderText="03-Nome:" />
                <asp:BoundField DataField="RESIDUO1" HeaderText="04-Residuo 1:" />
                <asp:BoundField DataField="RESIDUO2" HeaderText="06-Residuo 2:" />
                <asp:BoundField DataField="RESIDUO3" HeaderText="07-Residuo 3:" />
                <asp:BoundField DataField="RESIDUO4" HeaderText="08-Residuo 4:" />
                <asp:BoundField DataField="RESIDUO5" HeaderText="09-Residuo 5:" />
                <asp:BoundField DataField="RESIDUO6" HeaderText="10-Residuo 6:" />
                <asp:BoundField DataField="RESIDUO7" HeaderText="11-Residuo 7:" />
                <asp:BoundField DataField="RESIDUO8" HeaderText="12-Residuo 8:" />
                <asp:BoundField DataField="RESIDUO9" HeaderText="13-Residuo 9:" />
                <asp:BoundField DataField="RESIDUO10" HeaderText="14-Residuo 10:" />
                <asp:BoundField DataField="RESIDUO" HeaderText="15-Cod. Residuo:" />
                <asp:BoundField DataField="QTDEEQUIPAMENTOS" HeaderText="16-Qt. Equiptos:" />
                <asp:BoundField DataField="VOLUMEEQUIPAMENTO" HeaderText="17-Vol. Equipto.:" />
                <asp:BoundField DataField="VOLUMECOLETA" HeaderText="18-Vol. Coleta:" />
                <asp:BoundField DataField="VOLUMEAUTOMATICO" HeaderText="19-Vol. Automat.:" />
                <asp:BoundField DataField="PESO" HeaderText="20-Peso:" />
                <asp:BoundField DataField="CODIGOVEICULO" HeaderText="21-Veiculo:" />
                <asp:BoundField DataField="PORPESO" HeaderText="22-Por Peso:" />
                <asp:BoundField DataField="TRANSPORTADOR" HeaderText="23-Transp.:" />
                <asp:BoundField DataField="LOCALIZACAO" HeaderText="24-Local:" />
                <asp:BoundField DataField="SERVICO" HeaderText="25-Serviço:" />
                <asp:BoundField DataField="SERVICO" HeaderText="26-Contato:" />
                <asp:BoundField DataField="CARGOCONTATO" HeaderText="27-Cargo Cont.:" />
                <asp:BoundField DataField="EMAILCONTATO" HeaderText="28-Email Contato:" />
                <asp:BoundField DataField="RESPONSAVEL" HeaderText="29-Responsavel:" />
                <asp:BoundField DataField="CARGORESPONSAVEL" HeaderText="30-Cargo Resp.:" />
                <asp:BoundField DataField="EMAILRESPONSAVEL" HeaderText="31-Email Resp.:" />
                <asp:BoundField DataField="DDDCELULAR" HeaderText="32-DDD Celular:" />
                <asp:BoundField DataField="NUMEROCELULAR" HeaderText="33-Celular:" />
                <asp:BoundField DataField="LIMPURB" HeaderText="34-LimpUrb:" />
                <asp:BoundField DataField="DATAVALIDADELIMPURB" HeaderText="35-Dt. Validade:" />
                <asp:BoundField DataField="HORARIOATENDIMENTO" HeaderText="36-Hr. Atendim.:" />
                <asp:BoundField DataField="CADRIDESTINO1" HeaderText="37-CADRI 1 Dest.:" />
                <asp:BoundField DataField="CADRINUMERO1" HeaderText="38-CADRI 1 Num.:" />
                <asp:BoundField DataField="CADRIDESTINO2" HeaderText="39-CADRI 2 Dest.:" />
                <asp:BoundField DataField="CADRINUMERO2" HeaderText="40-CADRI 2 Num.:" />
                <asp:BoundField DataField="CADRIDESTINO3" HeaderText="41-CADRI 3 Dest.:" />
                <asp:BoundField DataField="CADRINUMERO3" HeaderText="42-CADRI 3 Num.:" />
                <asp:BoundField DataField="CADRIDESTINO4" HeaderText="43-CADRI 4 Dest.:" />
                <asp:BoundField DataField="CADRINUMERO4" HeaderText="44-CADRI 4 Num.:" />
                <asp:BoundField DataField="CADRIDESTINO5" HeaderText="45-CADRI 5 Dest.:" />
                <asp:BoundField DataField="CADRINUMERO5" HeaderText="46-CADRI 5 Num.:" />
                <asp:BoundField DataField="CADRIDESTINO6" HeaderText="47-CADRI 6 Dest.:" />                      
                <asp:BoundField DataField="CADRINUMERO6" HeaderText="48-CADRI 6 Num.:" />
                <asp:BoundField DataField="NUMEROCONTRATO" HeaderText="49-Contrato:" />
                <asp:BoundField DataField="OBSINTERNOS" HeaderText="50-Obs Internos.:" />
                <asp:BoundField DataField="OBSEXTERNOS" HeaderText="51-Obs Externos.:" />
                <asp:BoundField DataField="ATIVIDADE" HeaderText="52-Dc. Atividade:" />
                <asp:BoundField DataField="BACIA" HeaderText="53-Bacia:" />
                <asp:BoundField DataField="NRFUNCIONARIOSADMINISTRATIVO" HeaderText="54-Nr. Func. Adm.:" />
                <asp:BoundField DataField="NRFUNCIONARIOSPRODUCAO" HeaderText="55-Nr. Func. Prod.:" />
                <asp:BoundField DataField="NRMESESFUNCIONAMENTOANO" HeaderText="56-Meses:" />
                <asp:BoundField DataField="NRDIASFUNCIONAMENTOANO" HeaderText="57-Dias:" />
                <asp:BoundField DataField="KMDISTANCIA" HeaderText="58-Km Dist.:" />
                <asp:BoundField DataField="DATACONTRATO" HeaderText="59-Dt. Contrato:" />
                <asp:BoundField DataField="DATACORRECAO" HeaderText="60-Dt. Correção:" />
                <asp:BoundField DataField="INDICECORRECAO" HeaderText="61-Ind. Correção:" />

            </Fields>
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
        </asp:DetailsView>
         <br />
         <asp:Button ID="Button1" runat="server" Text="Voltar" />
    </center>
</asp:Content>
