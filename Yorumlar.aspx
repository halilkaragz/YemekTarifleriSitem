<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yorumlar.aspx.cs" Inherits="YemekTarifleriSitem.Yorumlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style6 {
            background-color: #FFCC99;
        }

        .auto-style10 {
            width: 22px;
        }

        .auto-style11 {
            width: 21px;
        }

        .auto-style9 {
            text-align: left;
            width: 331px;
        }

        .auto-style7 {
            text-align: center;
        }

        .auto-style8 {
            text-align: left;
        }

        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style6">
        <table class="auto-style4">
            <tr>
                <td class="auto-style10">
                    <asp:Button ID="Button1" runat="server" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click" />
                </td>
                <td class="auto-style11"><strong>
                    <asp:Button ID="Button2" runat="server" Height="30px"  Text="-" Width="30px" OnClick="Button2_Click" />
                    </strong></td>
                <td>YORUM LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>    
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="447px">
            <ItemTemplate>
                <table class="auto-style4">
                    <tr>
                        <td class="auto-style9">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("AdSoyad") %>'></asp:Label>
                        </td>
                        <td class="auto-style7">
                            <a href="Kategoriler.aspx?Id=<%#Eval("Id") %>&islem=sil">
                                <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/ikonlar/236-2362491_delete-icon-png.png" Width="30px" />
                            </a>
                        </td>
                        <td class="auto-style8">
                            <a href="KategoriDuzenle.aspx?Id=<%#Eval("Id") %>">
                                <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/ikonlar/png-transparent-computer-icons-icon-design-database-icon-text-trademark-logo.png" Width="30px" />
                            </a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
   
</asp:Content>

