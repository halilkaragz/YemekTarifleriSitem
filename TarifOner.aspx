<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="TarifOner.aspx.cs" Inherits="YemekTarifleriSitem.TarifOner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            text-align: right;
        }
        .auto-style5 {
            text-align: right;
            height: 26px;
        }
        .auto-style6 {
            height: 26px;
        }
        .auto-style7 {
            margin-left: 54px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
                <p>
                    Tarih Ad:</p>
            </td>
            <td>
                <asp:TextBox ID="txtTarifAd" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <p>
                    Malzemeler:</p>
            </td>
            <td>
                <asp:TextBox ID="txtMalzemeler" runat="server" Height="80px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <p>
                    Yapılışı:</p>
            </td>
            <td>
                <asp:TextBox ID="txtYapilis" runat="server" Height="150px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <p>
                    Resim:</p>
            </td>
            <td>
                <asp:FileUpload ID="fuResim" runat="server" Width="250px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                <p>
                    Öneren:</p>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="txtOneren" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <p>
                    Mail:</p>
            </td>
            <td>
                <asp:TextBox ID="txtMail" runat="server" TextMode="Email" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btnTarifOner" runat="server" BackColor="#00FFCC" CssClass="auto-style7" Font-Bold="True" Font-Italic="True" Height="50px" Text="Tarif Öner" Width="150px" OnClick="btnTarifOner_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
