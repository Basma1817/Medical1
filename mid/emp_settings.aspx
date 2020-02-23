<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="emp_settings.aspx.cs" Inherits="mid.WebForm5" %>
<asp:Content ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-12">
            <section class="content-header">
                <h1>
                    <a href="emp_settings.aspx"><i class="fa fa-dashboard"></i>اعدادات الموظفين </a>
                    <small><small>
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label></small></small>
                </h1>
                <ol class="breadcrumb">
                    <li><a href="Dashboard.aspx"><i class="fa fa-dashboard"></i>Dashboard </a></li>
                   <li><a href="basic_settings2.aspx">الاعدادات</a></li>
                    <li ><a href="emp_settings.aspx">اعدادات الموظفين</a></li>
                    
                </ol>
            </section>
        </div>
    </div>
     <div class="row" runat="server" style="margin-top: 2%">
        <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="info-box">

                <span class="info-box-icon bg-yellow"><i class="ion ion-ios-people-outline"></i></span>
                <div class="info-box-content">
                    <span class="info-box-text"><a href="py_earn_type.aspx"><i class="fa fa-user"></i>أنواع الاستحقاقات</a></span>
                    
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
                    <span class="info-box-text "><a href="deduction_type.aspx"><i class="fa fa-user"></i>أنواع الاستقطاعات</a></span>
                   
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
                    <span class="info-box-text"><a href="department.aspx"><i class="fa fa-user"></i>أقسام الشركة</a></span>
                  
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
                    <span class="info-box-text"><a href="pymnt_type.aspx"><i class="fa fa-user"></i><span>طريقة دفع الراتب</span></a></span>
                   
                </div>
                <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
        </div>
        <!-- /.col -->
        
        
        
        
          </div>
</asp:Content>