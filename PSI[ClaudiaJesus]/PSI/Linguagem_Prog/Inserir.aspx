<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Inserir.aspx.cs" Inherits="LingProg_Inserir" Title="Painel Administra��o"%>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="background-color:#F0F0F0;">
        <tr>
            <!--T�tulo da tabela e respetivas formata��es(cores,etc..)-->
            <td colspan="3" style="font-weight: bold; font-size: 14px; font-family: Verdana; color:#ffffff; background-color:#ca5100">Inserir Linguagens Programa��o</td>
        </tr>
        <tr>
            <td style="width: 155px">
            </td>
            <td style="width: 158px">
            </td>
            <td style="width: 20px">
            </td>
        </tr>
        <tr>
            <td style="width: 155px; text-align: right">
                <!--Label com o nome do que se quer inserir na BD com as respetivas formata��es(cores,etc..)-->
                <asp:Label ID="lbl_Nome" runat="server" Font-Names="Verdana" Font-Size="12px" Text="Nome"></asp:Label></td>
            <td style="width: 158px; text-align: left">
                <!--Campo para inserir o nome da linguagem-->
                <asp:TextBox ID="txt_Nome" runat="server"></asp:TextBox></td>
            <td style="width: 20px; text-align: left">
                <!--RequiredFieldValidator aparece quando o campo da textbox estiver vazio, ou seja, requer um preenchimento obrigat�rio-->
                <asp:RequiredFieldValidator ID="RequiredFieldValidator" runat="server" ControlToValidate="txt_Nome" ErrorMessage="(*)"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td colspan="3">
            </td>
        </tr>
        <tr>
            <td style="width: 155px; height: 23px">
            </td>
            <td style="width: 158px; height: 23px; text-align: right">
                <!--Bot�o com um evento para limpar as textbox que estiverem preenchidas -->
                <asp:Button ID="Bt_Limpar" runat="server" BackColor="Silver" Font-Names="Verdana" Font-Size="12px" OnClick="bt_Limpar" Text="Limpar" Width="58px" CausesValidation="false"/>
                <!--Bot�o com um evento para inserir dados na BD, com os respetivos dados preenchidos nas textbox e com mensagem de confirma��o de inser��o de dados-->
                <asp:Button ID="Bt_Gravar" runat="server" BackColor="Silver" Font-Names="Verdana" Font-Size="12px" OnClick="bt_Gravar" Text="Gravar" Width="87px"  OnClientClick="return confirm('Tem a certeza que quer gravar este registo?');"/></td>
            <td style="width: 20px; height: 23px; text-align: right">
            </td>
        </tr>
    </table>
     <!--label utilizada para mostrar mensagens de erro, quando os dados s�o introduzidos corretamente e quando n�o s�o introduzidos corretamente-->
    <asp:Label ID="lbl_erro" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="12px" ForeColor="#C00000" Text="Dados introduzidos com sucesso!" Visible="False"></asp:Label>
</asp:Content>