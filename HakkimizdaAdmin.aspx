<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="HakkimizdaAdmin.aspx.cs" Inherits="YemekTarifleriSitem.HakkimizdaAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style10 {
            width: 22px;
        }

        .auto-style11 {
            width: 21px;
        }

        .auto-style12 {
        font-weight: bold;
        font-size: large;
    }
    .auto-style13 {
        text-align: center;
    }
    .auto-style14 {
        font-size: medium;
            font-style: italic;
        }

        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" Style="background-color: #CCCCCC">
        <table class="auto-style4">
            <tr>
                <td class="auto-style10">
                    <asp:Button ID="Button1" runat="server" Height="30px" Text="+" Width="30px" OnClick="Button1_Click"/>
                </td>
                <td class="auto-style11"><strong>
                    <asp:Button ID="Button2" runat="server" Height="30px" Text="-" Width="30px" OnClick="Button2_Click"/>
                    </strong></td>
                <td>HAKKIMIZDA&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <table class="auto-style4">
            <tr>
                <td><em>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style14" Height="199px" TextMode="MultiLine" Width="422px"></asp:TextBox>
                    </em></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style12" Text="Güncell" Width="200px" OnClick="Button3_Click" />
                    </strong></td>
                <td>&nbsp;</td>
            </tr>
        </table>
</asp:Panel>
</asp:Content>
