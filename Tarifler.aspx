<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Tarifler.aspx.cs" Inherits="YemekTarifleriSitem.Tarifler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            width: 22px;
        }

        .auto-style11 {
            width: 21px;
        }

        .auto-style12 {
            text-align: right;
        }

        .auto-style13 {
            width: 375px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" Style="background-color: #CCCCCC">
        <table class="auto-style4">
            <tr>
                <td class="auto-style10">
                    <asp:Button ID="Button1" runat="server" Height="30px" Text="+" Width="30px" OnClick="Button1_Click" />
                </td>
                <td class="auto-style11"><strong>
                    <asp:Button ID="Button2" runat="server" Height="30px" Text="-" Width="30px" OnClick="Button2_Click" />
                </strong></td>
                <td>ONAYSIZ TARİF ÖNERİLERİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="447px">
            <ItemTemplate>
                <table class="auto-style4">
                    <tr>
                        <td class="auto-style13">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("AD") %>'></asp:Label>
                        </td>
                        <td class="auto-style12">
                            <a href="TarifDetay.aspx?Id=<%#Eval("Id") %>">
                                <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/ikonlar/785882_art-project-proposal-icon-png-download.png" Width="30px" />
                            </a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
     <asp:Panel ID="Panel3" runat="server" Style="background-color: #CCCCCC; margin-top:20px">
        <table class="auto-style4">
            <tr>
                <td class="auto-style10">
                    <asp:Button ID="Button3" runat="server" Height="30px" Text="+" Width="30px" OnClick="Button3_Click"  />
                </td>
                <td class="auto-style11"><strong>
                    <asp:Button ID="Button4" runat="server" Height="30px" Text="-" Width="30px" OnClick="Button4_Click"  />
                </strong></td>
                <td>ONAYLI TARİF ÖNERİLERİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList2" runat="server" Width="447px">
            <ItemTemplate>
                <table class="auto-style4">
                    <tr>
                        <td class="auto-style13">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("AD") %>'></asp:Label>
                        </td>
                        <td class="auto-style12">
                            <a href="TarifDetay.aspx?Id=<%#Eval("Id") %>">
                                <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/ikonlar/785882_art-project-proposal-icon-png-download.png" Width="30px" />
                            </a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>
