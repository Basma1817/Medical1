<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ActivateAcc.aspx.cs" Inherits="mid.ActivateAcc" %>

<%@ Register Assembly="Syncfusion.EJ.Web, Version=17.3460.0.14, Culture=neutral, PublicKeyToken=3d67ed1f87d44c89" Namespace="Syncfusion.JavaScript.Web" TagPrefix="ej" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <section class="content-header">

        <ol class="breadcrumb">
            <h1 style="padding-left: 741px;"><small>لوحة التحكم < تفعيل الحسابات</small></h1>
        </ol>
        <%--<div class="wrapper" id="app" style="float: left; width: 100%; margin-right: 30px;">
            <div style="direction: rtl; padding: 10px 10px 10px 42px">
                <asp:Label ID="Label1" runat="server" Text="اسم المستخدم"></asp:Label>

                <asp:TextBox  Style="border-radius: 25px; height: 25px;" ID="TextBox1" runat="server"></asp:TextBox>

                <asp:Button ID="Button1" Style="padding: 3px;" class="btn btn-primary" runat="server" Text="بحث" OnClick="Button1_Click" />


                <asp:Button ID="Button2" runat="server" Text="إضافة" OnClick="Button2_Click" Style="margin-right: 555px;" class="btn btn-success" />

            </div>--%>

        <div class="wrapper" id="app" style="float: left; width: 100%; margin-right: 30px;">
            <div style="direction: rtl; padding: 10px 10px 10px 55px">
                <asp:Label ID="Label1" runat="server" Text="اسم المستخدم"></asp:Label>

                <asp:TextBox  Style="border-radius: 25px; height: 25px; width: 149px;" ID="TextBox1" runat="server"></asp:TextBox>

                <asp:Button ID="Button1" Style="padding: 3px;" class="btn btn-primary" runat="server" Text="بحث" OnClick="Button1_Click" />


                <asp:Button ID="Button2" runat="server" Text="إضافة" OnClick="Button2_Click" Style="margin-right: 615px;" class="btn btn-success" />

                <%--<asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click"><i class="fa fa-plus-circle"></i></asp:LinkButton>--%>
            </div>
            <div style="width: 100px; position: center; height: 935px; justify-content: center; width: 100%; padding-left: 55px; padding-right: 40px; text-align: center;">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" CssClass="table table-striped" Style="direction: ltr; font-size: 14px;" OnPageIndexChanging="GridView1_PageIndexChanging" GridLines="None">
                    <Columns>
                        <asp:HyperLinkField HeaderText="تعديل" ControlStyle-BackColor="Green" ControlStyle-ForeColor="White" ControlStyle-CssClass="p-2" Text='<i class="fa fa-edit"></i>' DataNavigateUrlFields="رقم_المستخدم" DataNavigateUrlFormatString="~/updatedeleActivateAcc.aspx?no={0}" NavigateUrl="~/updatedeleActivateAcc.aspx" />
                        <asp:HyperLinkField HeaderText="حذف" ControlStyle-BackColor="Red" ControlStyle-ForeColor="White" ControlStyle-CssClass="p-2" Text='<i class="fa fa-trash"></i>' DataNavigateUrlFields="رقم_المستخدم" DataNavigateUrlFormatString="~/updatedeleActivateAcc.aspx?no={0}" NavigateUrl="~/updatedeleActivateAcc.aspx" />
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </section>
</asp:Content>
