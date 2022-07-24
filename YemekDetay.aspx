<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="YemekDetay.aspx.cs" Inherits="YemekTarifleriSitem.YemekDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            font-size: x-large;
            color: #FFFFFF;
        }

        .auto-style5 {
            width: 100%;
        }

        .auto-style6 {
            font-size: smaller;
        }

        .auto-style7 {
            font-size: large;
        }
        .auto-style9 {
            text-align: right;
            width: 111px;
        }
        .auto-style10 {
            width: 111px;
        }
        .auto-style11 {
            font-weight: bold;
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Label ID="Label3" runat="server" CssClass="auto-style4" Text="Label"></asp:Label>
    <br />
    <asp:DataList ID="DataList2" runat="server" Width="449px">
        <ItemTemplate>
            <table class="auto-style5">
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" CssClass="auto-style7" Text='<%# Eval("AdSoyad") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="border-bottom-style: inset; border-bottom-width: thin">
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("Yorum") %>'></asp:Label>
                        <strong>&nbsp;- </strong>
                        <asp:Label ID="Label6" runat="server" CssClass="auto-style6" Text='<%# Eval("Tarih") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <br />

    <div style="background-color: #eea4a4">YORUM YAPMA PANELİ</div>
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style5">
            <tr>
                <td class="auto-style9"><strong>Ad Soyad :</strong></td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="200px" Height="20px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9"><strong>Mail :</strong></td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="200px" Height="20px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9"><strong>Yorumunuz :</strong></td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Width="200px" Height="100px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td>
                    <strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style11" OnClick="Button1_Click" Text="Yorum Yap" Width="200px" />
                    </strong>
                </td>
            </tr>
        </table>
    </asp:Panel>

</asp:Content>
