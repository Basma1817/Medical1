<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="basic_sales.aspx.cs" Inherits="mid.basic_sales" %>
<asp:Content ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-12">
            <section class="content-header">
                <h1>
                    <a href="basic_sales.aspx"><i class="fa fa-dashboard"></i>المبيعات </a>
                    <small><small>
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label></small></small>
                </h1>
                <ol class="breadcrumb">
                    <li><a href="Dashboard.aspx"><i class="fa fa-dashboard"></i>الرئيسية </a></li>
                    <li><a href="basic_sales.aspx">المبيعات</a></li>
                 
                </ol>
            </section>
        </div>
    </div>
     <div class="row" runat="server" style="margin-top: 2%">
        <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="info-box">
                <span class="info-box-icon bg-yellow"><i class="ion ion-ios-people-outline"></i></span>
                <div class="info-box-content">
                    <span class="info-box-text"><a href="#"><i class="fa fa-user"></i>طلبية العميل</a></span>
                    <%--                    <span class="info-box-number">2,000</span>--%>
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
                    <span class="info-box-text"><a href="#"><i class="fa fa-user"></i>عرض الاسعار</a></span>
                    <%--                    <span class="info-box-number">760</span>--%>
                </div>
                <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
        </div>
        <!-- fix for small devices only -->
        <div class="clearfix visible-sm-block"></div>
         <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="info-box">
                <span class="info-box-icon bg-yellow"><i class="ion ion-ios-people-outline"></i></span>
                <div class="info-box-content">
                    <span class="info-box-text "><a href="#"><i class="fa fa-user"></i>مرتجع المبيعات</a></span>
                    <%--                    <span class="info-box-number">41,410</span>--%>
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
                    <span class="info-box-text"><a href="SalesInvoic.aspx"><i class="fa fa-user"></i><span> فاتورة المبيعات</span></a></span>
                    <%--<span class="info-box-number">90<small>%</small></span>--%>
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
                    <span class="info-box-text"><a href="#"><i class="fa fa-user"></i>طلبية الفرع</a></span>
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
                    <span class="info-box-text"><a href="#"><i class="fa fa-user"></i>تقارير المبيعات</a></span>
                    <%--                    <span class="info-box-number">2,000</span>--%>
                </div>
                <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
        </div>
          </div>
</asp:Content>