<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="updatedeleActivateAcc.aspx.cs" Inherits="mid.updatedeleActivateAcc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table>
        <tr>
            <td></td>
            <td>
                <asp:Label ID="Label2" runat="server" Text=" تعديل و حذف بيانات المسجلين"></asp:Label></td>
            <td></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="اسم_المستخدم"></asp:Label></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="الرقم_السري"></asp:Label></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="الحالة"></asp:Label></td>
            <td>
                <asp:CheckBox ID="CheckBox1" runat="server" /></td>
        </tr>
        <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="مستوي الأمان"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
                </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" Text="حذف" OnClick="Button1_Click" /></td>
            <td>
                <asp:Button ID="Button2" runat="server" Text="تعديل" OnClick="Button2_Click" /></td>
        </tr>
    </table>

</asp:Content>
