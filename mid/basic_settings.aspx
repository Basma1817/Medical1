<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="basic_settings.aspx.cs" Inherits="mid.basic_settings" %>
<asp:Content ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-12">
            <section class="content-header">
                <h1>
                    <a href="Dashboard.aspx"><i class="fa fa-dashboard"></i>اعدادات لوحة التحكم </a>
                    <small><small>
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label></small></small>
                </h1>
                <ol class="breadcrumb">
                    <li><a href="Dashboard.aspx"><i class="fa fa-dashboard"></i>Dashboard </a></li>
                    <li><a href="#">Examples</a></li>
                    <li class="active">Blank page</li>
                </ol>
            </section>
        </div>
    </div>
</asp:Content>
