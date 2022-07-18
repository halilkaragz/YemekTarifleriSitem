<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yemekler.aspx.cs" Inherits="YemekTarifleriSitem.Yemekler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            background-color: #FFCC99;
        }

        .auto-style7 {
            text-align: center;
        }

        .auto-style8 {
            text-align: left;
        }

        .auto-style9 {
            text-align: left;
            width: 331px;
        }

        .auto-style10 {
            width: 22px;
        }

        .auto-style11 {
            width: 21px;
        }

        .auto-style12 {
            font-weight: bold;
            font-size: small;
        }
        .auto-style13 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style6">
        <table class="auto-style4">
            <tr>
                <td class="auto-style10">
                    <asp:Button ID="Button1" runat="server" Height="30px" Text="+" Width="30px" OnClick="Button1_Click" />
                </td>
                <td class="auto-style11"><strong>
                    <asp:Button ID="Button2" runat="server" Height="30px" Text="-" Width="30px" OnClick="Button2_Click" />
                </strong></td>
                <td>YEMEK LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="447px">
            <ItemTemplate>
                <table class="auto-style4">
                    <tr>
                        <td class="auto-style9">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Ad") %>'></asp:Label>
                        </td>
                        <td class="auto-style7">
                            <a href="Kategoriler.aspx?Id=<%#Eval("Id") %>&islem=sil">
                                <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/ikonlar/236-2362491_delete-icon-png.png" Width="30px" />
                            </a>
                        </td>
                        <td class="auto-style8">
                            <a href="YemekDuzenle.aspx?Id=<%#Eval("Id") %>">
                                <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/ikonlar/png-transparent-computer-icons-icon-design-database-icon-text-trademark-logo.png" Width="30px" />
                            </a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" Style="background-color: #FFCC99; margin-top: 15px;">
        <table class="auto-style4">
            <tr>
                <td class="auto-style10">
                    <asp:Button ID="Button3" runat="server" Height="30px" Text="+" Width="30px" OnClick="Button3_Click" />
                </td>
                <td class="auto-style11"><strong>
                    <asp:Button ID="Button4" runat="server" Height="30px" Text="-" Width="30px" OnClick="Button4_Click" />
                </strong></td>
                <td>YEMEK EKLEME</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style4">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13"><strong>YEMEK ADI :</strong></td>
                <td class="auto-style13">
                    <asp:TextBox ID="txbYemekAdi" runat="server" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><strong>MALZEMELER :</strong></td>
                <td>
                    <asp:TextBox ID="txbMalzemeler" runat="server" Height="100px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><strong>YEMEK TARİFİ :</strong></td>
                <td>
                    <asp:TextBox ID="txbYemekTarifi" runat="server" Height="200px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><strong>KATEGORİ :</strong></td>
                <td>
                    <asp:DropDownList ID="ddlKategori" runat="server" Width="300px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style7"><strong>
                    <asp:Button ID="btnEkle" runat="server" CssClass="auto-style12" Height="30px" OnClick="btnEkle_Click" Text="Ekle" Width="125px" />
                    </strong></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>

</asp:Content>
