<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="GununYemegi.aspx.cs" Inherits="YemekTarifleriSitem.GununYemegi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            text-align: center;
        }
        .auto-style5 {
            width: 106%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server" Width="426px">
        <ItemTemplate>
            <table class="auto-style5">
                <tr>
                    <td class="auto-style4"><strong>
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("Ad") %>'></asp:Label>
                    </strong></td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <strong>Malzemeler :</strong>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("Malzeme") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Image ID="Image1" runat="server" Height="183px" Width="405px" ImageUrl='~/Resimler/Kabak Mücver.jpeg' />
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;<strong>Tarif :</strong>
                        <asp:Label ID="Label11" runat="server" Text='<%# Eval("Tarif") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <strong>
                        <asp:Label ID="Label7" runat="server" Text="Puan : "></asp:Label>
                        </strong>&nbsp;<em><asp:Label ID="Label9" runat="server" Text='<%# Eval("Puan") %>'></asp:Label>
                        </em>&nbsp;
                    </td>
                </tr>
                <tr>
                    <td>
                        <strong>
                        <asp:Label ID="Label8" runat="server" Text="Tarih : "></asp:Label>
                        </strong>&nbsp;<em><asp:Label ID="Label10" runat="server" Text='<%# Eval("Tarih") %>'></asp:Label>
                        </em>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
