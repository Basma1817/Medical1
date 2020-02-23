<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="basic_settings2.aspx.cs" Inherits="mid.WebForm1" %>
<asp:Content ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-12">
            <section class="content-header">
                <h1>
                    <a href="basic_settings2.aspx"><i class="fa fa-dashboard"></i>الاعدادات </a>
                    <small><small>
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label></small></small>
                </h1>
                <ol class="breadcrumb">
                    <li><a href="Dashboard.aspx"><i class="fa fa-dashboard"></i>الرئيسية </a></li>
                    <li><a href="basic_settings2.aspx">الاعدادات</a></li>
                   
                </ol>
            </section>
        </div>
    </div>
     <div class="row" runat="server" style="margin-top: 2%">
        <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="info-box">

                <span class="info-box-icon bg-yellow"><i class="ion ion-ios-people-outline"></i></span>
                <div class="info-box-content">
                    <span class="info-box-text"><a href="emp_settings.aspx"><i class="fa fa-user"></i>اعدادات الموظفين</a></span>
                    <%--                    <span class="info-box-number">2,000</span>--%>
                </div>
                <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
        </div>
        <!-- /.col -->
        <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="info-box">
                <span class="info-box-icon bg-yellow"><i class="ion ion-ios-people-outline"></i></span>
                <div class="info-box-content">
                    <span class="info-box-text "><a href="acc_settings.aspx"><i class="fa fa-user"></i>اعدادات الحسابات</a></span>
                    <%--                    <span class="info-box-number">41,410</span>--%>
                </div>
                <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
        </div>
        <!-- /.col -->

        <!-- fix for small devices only -->
        <div class="clearfix visible-sm-block"></div>

        <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="info-box">
                <span class="info-box-icon bg-yellow"><i class="ion ion-ios-people-outline"></i></span>
                <div class="info-box-content">
                    <span class="info-box-text"><a href="main_settings.aspx"><i class="fa fa-user"></i>اعدادات الأصول</a></span>
                    <%--                    <span class="info-box-number">760</span>--%>
                </div>
                <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
        </div>
        <!-- /.col -->
        <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="info-box">
                <span class="info-box-icon bg-yellow"><i class="ion ion-ios-people-outline"></i></span>
                <div class="info-box-content">
                    <span class="info-box-text"><a href="sale_settings.aspx"><i class="fa fa-user"></i><span>اعدادات المبيعات</span></a></span>
                    <%--<span class="info-box-number">90<small>%</small></span>--%>
                </div>
                
                <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
        </div>
        <!-- /.col -->
          </div>
</asp:Content>
