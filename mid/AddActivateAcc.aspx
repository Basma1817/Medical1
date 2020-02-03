<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddActivateAcc.aspx.cs" Inherits="mid.AddActivateAcc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <%--<table>
        <tr>
            <td style="font-size: 13px;">
                <asp:Label ID="Label2" runat="server" Text=" إضافة حساب جديد"></asp:Label></td>
            <td></td>
        </tr>
        <tr>
             <td style="font-size: 13px; margin-right:10px">
                <asp:Label ID="Label1" runat="server" Text="اسم_المستخدم"></asp:Label></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
             <td style="font-size: 13px; margin-right:10px">
                <asp:Label ID="Label3" runat="server" Text="الرقم_السري"></asp:Label></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
             <td style="font-size: 13px; margin-right:10px">
                <asp:Label ID="Label4" runat="server" Text="الحالة"></asp:Label></td>
            <td>
                <asp:CheckBox ID="CheckBox1" runat="server" /></td>
        </tr>
        <tr>
                 <td style="font-size: 13px; margin-right:10px">
                    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
                </td>
        </tr>

    </table>--%>

        <table>
        <tr>
                        

            <td style="font-size: 13px;">
                 إضافة حساب جديد</td>
        </tr>
        <tr>
            <td style="font-size: 13px; margin-right:10px">
                <asp:Label ID="Label1" runat="server" Text="اسم_المستخدم"></asp:Label></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" style=" width:333px; border: 1px solid lightblue; margin: 20px;"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="font-size: 13px; margin-right:10px">
                <asp:Label ID="Label3" runat="server" Text="الرقم_السري"></asp:Label></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" style=" width:333px; border: 1px solid lightblue; margin: 20px;"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="font-size: 13px; margin-right:10px">
                <asp:Label ID="Label4" runat="server" Text="الحالة"></asp:Label></td>
            <td>
                <asp:CheckBox ID="CheckBox1" runat="server" style=" width:333px; margin-left: 180px;"/></td>
        </tr>
        <tr>
                <td style="font-size: 13px; margin-right:10px">
                    <asp:Label ID="Label5" runat="server" Text="مستوي الأمان"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" style=" width:333px; border: 1px solid lightblue; margin: 20px;"></asp:DropDownList>
                </td>
        </tr>

    </table>

    <div style="width:100%">
<asp:Button ID="Button2" Style="width: 100px; position: absolute; margin: 90px -990px; border: none;" runat="server" Text="حفظ" OnClick="Button1_Click" />

    </div>
</asp:Content>
