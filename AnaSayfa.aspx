<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="AnaSayfa.aspx.cs" Inherits="YemekTarifleriSitem.AnaSayfa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 99%;
        }
        .auto-style5 {
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        &nbsp;&nbsp;&nbsp;
        <asp:DataList ID="DataList2" runat="server">
            <ItemTemplate>
                <table class="auto-style4">
                    <tr>
                        <td><strong>
                            <asp:Label ID="Label3" runat="server" CssClass="auto-style5" Text='<%# Eval("Ad") %>'></asp:Label>
                            </strong></td>
                    </tr>
                    <tr>
                        <td><strong>Malzemeler :</strong>
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("Malzeme") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td><strong>Yemek Tarifi :
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("Tarif") %>'></asp:Label>
                            </strong></td>
                    </tr>
                    <tr>
                        <td>Eklenme Tarihi :
                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("Tarih") %>'></asp:Label>
                            &nbsp;- <strong><em>Puan :
                            <asp:Label ID="Label7" runat="server" Text='<%# Eval("Puan") %>'></asp:Label>
                            </em></strong></td>
                    </tr>
                    <tr>
                        <td style="border-bottom-style: groove">&nbsp;</td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </p>
</asp:Content>
