<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="receipt_cash.aspx.cs" Inherits="mid.receipt_cash" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
        <div class="col-md-12">
            <section class="content-header">
                <h1>
                    <a href="basic_bankboxs.aspx"><i class="fa fa-dashboard"></i>الصندوق و البنوك </a>
                    <small><small>
                        <asp:Label ID="Label2" runat="server" Text=""></asp:Label></small></small>
                </h1>
                <ol class="breadcrumb">
                    <li><a href="Dashboard.aspx"><i class="fa fa-dashboard"></i>الرئيسية </a></li>
                    <li><a href="basic_bankboxs.aspx">الصندوق و البنوك</a></li>
                    <li><a href="receipt_cash.aspx">سند صرف </a></li>
                </ol>
            </section>
        </div>
    </div>

    <div class="panel panel-default col-lg-12">
        <div class="panel-body">
            <h2 class="panel-title" style="font-size: 29px;">سند صرف </h2>
        </div>
    </div>

    <div class="row">
        <div class="col-lg-5">
        </div>
        <div class="col-lg-1">
            <div class="form-group" style="display: flex; justify-content: space-between">
                <asp:Label ID="Label17" runat="server" Text="الرقم"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" Style="display: flex;"></asp:TextBox>
            </div>
        </div>
        <div class="col-md-2">
            <div class="form-group" style="display: flex; justify-content: space-between">
                <asp:Label ID="Label4" runat="server" Text="النشاط"></asp:Label>
                <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control" AutoPostBack="true">
                </asp:DropDownList>
            </div>
        </div>
        <div class="col-lg-1">
            <div class="form-group" style="display: flex; justify-content: space-between">
                <asp:Label ID="Label12" runat="server" Text="الرقم"></asp:Label>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <div class="col-lg-3">
            <div class="form-group" style="display: flex; justify-content: space-between">
                <asp:Label ID="Label5" runat="server" Text="الشركة"></asp:Label>
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control"
                    AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
            </div>
        </div>
    </div>

    <div style="direction: rtl;">
        <asp:Label ID="Label1" runat="server" Text="سند الصرف"></asp:Label>

        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

        <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="بحث" OnClick="Button1_Click" />


        <asp:Button ID="Button3" runat="server" Text="تقرير" class="btn btn-success" Style="border: none; float: left;" OnClick="Button3_Click" />


        <asp:Button ID="Button2" runat="server" Text="+ اضافة سند صرف" OnClick="Button2_Click" Style="float: left; margin: 0 5px; background-color: #af111c; border: none;" class="btn btn-success" />
    </div>

    <div>
        <asp:GridView ID="GridView1" CssClass="table table-striped" GridLines="None" BackColor="White" Style="direction: ltr; font-size: 14px;" runat="server" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging" OnSelectedIndexChanging="GridView1_SelectedIndexChanging">
            <Columns>
                <asp:HyperLinkField DataNavigateUrlFields="رقم_السند" ControlStyle-BackColor="red" ControlStyle-ForeColor="White" ControlStyle-CssClass="p-2" DataNavigateUrlFormatString="#?no={0}" HeaderText="حذف" NavigateUrl="~/#" Text=' <i class="fa fa-trash" style="padding: 6px 5px 5px 5px;min-width: 26px;height: 30px;font-size:20px;background-color: #F00;color: white;border:none;"></i>' />


                <asp:HyperLinkField DataNavigateUrlFields="رقم_السند" ControlStyle-BackColor="Green" ControlStyle-ForeColor="White" ControlStyle-CssClass="p-2" DataNavigateUrlFormatString="#?no={0}" HeaderText="تعديل" NavigateUrl="~/#" Text=' <i class="fa fa-edit" style="padding: 6px 5px 5px 5px;min-width: 26px;height: 30px;font-size:20px;background-color: #080;color: white;border:none;"></i>' />


                <asp:HyperLinkField ControlStyle-BackColor="#3c8dbc" ControlStyle-ForeColor="White" ControlStyle-CssClass="p-2" DataNavigateUrlFields="رقم_السند" DataNavigateUrlFormatString="#?no={0}" HeaderText="عرض" NavigateUrl="~/#" Text=' <i class="fa fa-eye" style="padding: 6px 5px 5px 5px;min-width: 26px;height: 30px;font-size:20px;background-color: #3c8dbc;color: white;border:none;"></i>'>
                    <ControlStyle BackColor="#3C8DBC" CssClass="p-2" ForeColor="White"></ControlStyle>
                </asp:HyperLinkField>
            </Columns>
        </asp:GridView>
    </div>

</asp:Content>
