<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YemekDuzenle.aspx.cs" Inherits="YemekTarifleriSitem.YemekDuzenle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            margin-left: 80px;
        }
        .auto-style7 {
            font-size: medium;
            font-weight: bold;
            background-color: #33CCFF;
        }
        .auto-style8 {
            font-size: large;
            text-align: left;
            margin-left: 120px;
        }
        .auto-style9 {
            font-size: large;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style4">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9"><strong>Yemek Adı :</strong></td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox1" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9"><strong>Malzemeler : </strong></td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox2" runat="server" Height="100px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9"><strong>Tarif :</strong></td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox3" runat="server" Height="200px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9"><strong>Kategori :</strong></td>
            <td class="auto-style6">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="250px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style9"><strong>Yemek Görüntü :</strong></td>
            <td class="auto-style6">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="247px" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style8"><strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style7" Text="Güncelle" Width="250px" OnClick="Button1_Click" />
                </strong></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style8"><strong>
                <asp:Button ID="Button2" runat="server" CssClass="auto-style7" Text="Günün Yemeği Seç" Width="250px" OnClick="Button2_Click" />
                </strong></td>
        </tr>
    </table>
</asp:Content>
