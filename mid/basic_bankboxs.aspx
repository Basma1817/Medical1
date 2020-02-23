<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="basic_bankboxs.aspx.cs" Inherits="mid.WebForm6" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-12">
            <section class="content-header">
                <h1>
                    <a href="basic_bankboxs.aspx"><i class="fa fa-dashboard"></i>الصندوق و البنوك </a>
                    <small><small>
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label></small></small>
                </h1>
                <ol class="breadcrumb">
                    <li><a href="Dashboard.aspx"><i class="fa fa-dashboard"></i>الرئيسية </a></li>
                    <li><a href="basic_bankboxs.aspx">الصندوق و البنوك</a></li>

                </ol>
            </section>
        </div>
    </div>

    <div class="row" runat="server" style="margin-top: 2%">
        <div class="col-md-3 col-sm-6 col-xs-12">
            </div>

        <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="info-box">
                <span class="info-box-icon bg-yellow"><i class="ion ion-ios-people-outline"></i></span>
                <div class="info-box-content">
                    <span class="info-box-text"><a href="#"><i class="fa fa-user"></i>الاشعارات
                    </a></span>
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
                    <span class="info-box-text "><a href="receipt_cash.aspx"><i class="fa fa-user"></i>سندات الصرف</a></span>
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
                    <span class="info-box-text"><a href="#"><i class="fa fa-user"></i><span>سندات القبض</span></a></span>
                    <%--<span class="info-box-number">90<small>%</small></span>--%>
                </div>
                <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
        </div>
        <!-- /.col -->
    </div>

</asp:Content>
