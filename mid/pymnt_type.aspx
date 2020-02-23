﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="pymnt_type.aspx.cs" Inherits="mid.pymnt_type" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <div class="row">
        <div class="col-md-12">
            <section class="content-header">
                <h1>
                    <a href="emp_settings.aspx"><i class="fa fa-dashboard"></i>اعدادات الموظفين </a>
                    <small><small>
                        <asp:Label ID="Label2" runat="server" Text=""></asp:Label></small></small>
                </h1>
                <ol class="breadcrumb">
                    <li><a href="Dashboard.aspx"><i class="fa fa-dashboard"></i>Dashboard </a></li>
                   <li><a href="basic_settings2.aspx">الاعدادات</a></li>
                    <li ><a href="emp_settings.aspx">اعدادات الموظفين</a></li>
                     <li ><a href="pymnt_type.aspx">طريقة دفع الرواتب</a></li>
                </ol>
            </section>
        </div>
    </div>

    <section class="content-header">
        <div class="panel panel-default col-lg-12">
            <div class="panel-body">
                <h2 class="panel-title" style="font-size: 29px;">طريقة دفع الرواتب</h2>
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


       
            <div style="direction: rtl; padding: 10px 10px 10px 55px">

                <asp:Label ID="Label1" runat="server" Text="طريقة دفع الراتب"></asp:Label>

               <asp:TextBox  Style="height: 25px; width: 135px;" ID="TextBox1" runat="server"></asp:TextBox>

                <asp:Button ID="Button1" Style="padding: 3px;" class="btn btn-primary" runat="server" Text="بحث" OnClick="Button1_Click" />


                <asp:Button ID="Button2" runat="server" Text="إضافة" OnClick="Button2_Click" Style="margin-right: 47%; background-color:#af111c" class="btn btn-success" />

                <asp:Button ID="Button3" runat="server" Text="تقرير" class="btn btn-success" Style="margin-right: 15px; background-color:#075" OnClick="Button3_Click" />
            </div>

            <div>
                <asp:GridView ID="GridView1" CssClass="table table-striped" BackColor="White" Style="direction: ltr; font-size: 14px;" GridLines="None" runat="server" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging">
                    <Columns>

                        <asp:HyperLinkField ControlStyle-BackColor="red" ControlStyle-ForeColor="White" ControlStyle-CssClass="p-2" DataNavigateUrlFields="الرقم" DataNavigateUrlFormatString="pymnt_type_delete.aspx?no={0}" HeaderText="حذف  " NavigateUrl="~/pymnt_type_delete.aspx" Text='<i class="fa fa-trash"></i>' />



                        <asp:HyperLinkField ControlStyle-BackColor="Green" ControlStyle-ForeColor="White" ControlStyle-CssClass="p-2" DataNavigateUrlFields="الرقم" DataNavigateUrlFormatString="updatedele_paymnt_type.aspx?no={0}" HeaderText="تعديل  " NavigateUrl="~/updatedele_paymnt_type.aspx" Text='<i class="fa fa-edit"></i>' />

                   <asp:HyperLinkField ControlStyle-BackColor="#3c8dbc" ControlStyle-ForeColor="White" ControlStyle-CssClass="p-2" DataNavigateUrlFields="الرقم" DataNavigateUrlFormatString="pymnt_type_show.aspx?no={0}" HeaderText="عرض" NavigateUrl="~/pymnt_type_show.aspx" Text='<i class="fa fa-edit"></i>'>
                            <ControlStyle BackColor="#3C8DBC" CssClass="p-2" ForeColor="White"></ControlStyle>
                        </asp:HyperLinkField>
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </section>


</asp:Content>
