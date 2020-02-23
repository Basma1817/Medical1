<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="sale_settings.aspx.cs" Inherits="mid.WebForm2" %>
<asp:Content ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-12">
            <section class="content-header">
                <h1>
                    <a href="sale_settings.aspx"><i class="fa fa-dashboard"></i>اعدادات المبيعات </a>
                    <small><small>
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label></small></small>
                </h1>
                <ol class="breadcrumb">
                    <li><a href="Dashboard.aspx"><i class="fa fa-dashboard"></i>Dashboard </a></li>
                    <li><a href="basic_settings2.aspx">الاعدادات</a></li>
                    <li ><a href="sale_settings.aspx">اعدادات المبيعات</a></li>
                </ol>
            </section>
        </div>
    </div>
     <div class="row" runat="server" style="margin-top: 2%">
        <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="info-box">

                <span class="info-box-icon bg-yellow"><i class="ion ion-ios-people-outline"></i></span>
                <div class="info-box-content">
                    <span class="info-box-text"><a href="invastcity.aspx"><i class="fa fa-user"></i>المدن الرئيسية</a></span>
                    
                </div>
                
                <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
        </div>
        <!-- /.col -->
        
        <!-- /.col -->

        <!-- fix for small devices only -->
        <div class="clearfix visible-sm-block"></div>
         <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="info-box">
                <span class="info-box-icon bg-yellow"><i class="ion ion-ios-people-outline"></i></span>
                <div class="info-box-content">
                    <span class="info-box-text"><a href="astarea.aspx"><i class="fa fa-user"></i>المناطق بالمدن</a></span>
                    <%--                    <span class="info-box-number">2,000</span>--%>
                </div>
                <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
        </div>
        <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="info-box">
                <span class="info-box-icon bg-yellow"><i class="ion ion-ios-people-outline"></i></span>
                <div class="info-box-content">
                    <span class="info-box-text"><a href="astmarket.aspx"><i class="fa fa-user"></i>مندوبين التسويق</a></span>
                  
                </div>
                <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
        </div>
        <!-- /.col -->
        
        <!-- /.col -->
         <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="info-box">
                <span class="info-box-icon bg-yellow"><i class="ion ion-ios-people-outline"></i></span>
                <div class="info-box-content">
                    <span class="info-box-text "><a href="salesman.aspx"><i class="fa fa-user"></i>مندوبين المبيعات</a></span>
                   
                </div>
                <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
        </div>
        
         <div class="col-md-3 col-sm-6 col-xs-12">
               </div>
        <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="info-box">
                <span class="info-box-icon bg-yellow"><i class="ion ion-ios-people-outline"></i></span>
                <div class="info-box-content">
                    <span class="info-box-text"><a href="astsupctg.aspx"><i class="fa fa-user"></i>تصنيف العملاء <br/>و الموردين</a></span>
                    <%--                    <span class="info-box-number">2,000</span>--%>
                </div>
                <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
        </div>
        <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="info-box">
                <span class="info-box-icon bg-yellow"><i class="ion ion-ios-people-outline"></i></span>
                <div class="info-box-content">
                    <span class="info-box-text"><a href="nutrbusn.aspx"><i class="fa fa-user"></i>الانشطة التجارية للعملاء</a></span>
                    <%--                    <span class="info-box-number">2,000</span>--%>
                </div>
                <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
        </div>
        <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="info-box">
                <span class="info-box-icon bg-yellow"><i class="ion ion-ios-people-outline"></i></span>
                <div class="info-box-content">
                    <span class="info-box-text"><a href="reftypmain.aspx"><i class="fa fa-user"></i>أنواع المراجع للسندات </a></span>
                    <%--                    <span class="info-box-number">2,000</span>--%>
                </div>
                <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
        </div>
          </div>
</asp:Content>
