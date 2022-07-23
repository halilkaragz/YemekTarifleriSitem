<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="TarifDetay.aspx.cs" Inherits="YemekTarifleriSitem.TarifDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
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

        .auto-style12 {
            width: 446px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style12">
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td><strong>TARİF ÖNERİ DETAYLARI</strong></td>
            </tr>
            <tr>
                <td class="auto-style9"><strong>Ad:</strong></td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="200px" Height="20px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9"><strong>Malzemeler :</strong></td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="200px" Height="95px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9"><strong>Yapılış :</strong></td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Width="200px" Height="100px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9"><strong>Resim :</strong></td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style9"><strong>Öneren :</strong></td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" Height="20px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9"><strong>Mail :</strong></td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" Height="20px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9"><strong>Kategori :</strong></td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server" Width="200px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style11" OnClick="Button1_Click" Text="Onayla" Width="200px" />
                    </strong></td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
