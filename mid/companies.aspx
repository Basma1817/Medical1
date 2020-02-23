<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="companies.aspx.cs" Inherits="mid.companies" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-12">
            <section class="content-header">
                <h1>
                    <a href="basic_settings.aspx"><i class="fa fa-dashboard"></i>اعدادات لوحة التحكم </a>
                    <small><small>
                        <asp:Label ID="Label2" runat="server" Text=""></asp:Label></small></small>
                </h1>
                <ol class="breadcrumb">
                    <li><a href="Dashboard.aspx"><i class="fa fa-dashboard"></i>Dashboard </a></li>
                    <li><a href="basic_settings.aspx">اعدادات لوحة التحكم</a></li>
                      <li><a href="companies.aspx">بيانات الشركه</a></li>
                 
                </ol>
            </section>
        </div>
    </div>
    <section class="content-header">
         <div class="panel panel-default col-lg-12">
         <div class="panel-body">
            <h2 class="panel-title" style="font-size: 29px;">بيانات الشركه</h2>
        </div>
        </div>
                 <div class="row">
        <div class="col-lg-5">
        </div>
         <div class="col-lg-1">
            <div class="form-group" style="display: flex; justify-content: space-between">
                <asp:Label ID="Label17" runat="server" Text="الرقم"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" style="display: flex;"></asp:TextBox>
            </div>
        </div>
        <div  class="col-md-2">
            <div class="form-group"style="display: flex; justify-content: space-between">
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
                    <br />
                    <div dir="rtl">
                        <asp:Label ID="Label1" runat="server" Text="رقم الشركة"></asp:Label>

                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

                        <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="بحث" OnClick="Button1_Click" />


                        <asp:Button ID="Button3" runat="server" Text="تقرير" class="btn btn-success" OnClick="Button3_Click" Style="border: none; float:left" />

                         <asp:Button ID="Button2" runat="server"  Text="+ إضافة" OnClick="Button2_Click" class="btn btn-success" Style="margin: 0 5px; float:left; background-color: #af111c; border: none;" />

                    </div>
                    <br />
                    <div>
                        <asp:GridView ID="GridView1" CssClass="table table-striped" GridLines="None" runat="server" BackColor="White" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging" OnSelectedIndexChanging="GridView1_SelectedIndexChanging" Style="direction: ltr; font-size: 14px;" >
                            <Columns >
                                <asp:HyperLinkField DataNavigateUrlFields="رقم_الشركة" ControlStyle-BackColor="red" ControlStyle-ForeColor="White" ControlStyle-CssClass="p-2" DataNavigateUrlFormatString="companies_delete.aspx?cmp={0}" HeaderText="حذف" NavigateUrl="~/companies_delete.aspx"
                                    Text=' <i class="fa fa-trash" style="padding: 6px 5px 5px 5px;min-width: 26px;height: 30px;font-size:20px;background-color: #F00;color: white;border:none;"></i>' />



                                <asp:HyperLinkField DataNavigateUrlFields="رقم_الشركة" ControlStyle-BackColor="Green" ControlStyle-ForeColor="White" ControlStyle-CssClass="p-2" DataNavigateUrlFormatString="updatecompanies.aspx?cmp={0}" HeaderText="تعديل" NavigateUrl="~/updatecompanies.aspx"
                                    Text=' <i class="fa fa-edit" style="padding: 6px 5px 5px 5px;min-width: 26px;height: 30px;font-size:20px;background-color: #080;color: white;border:none;"></i>' />



                                <asp:HyperLinkField DataNavigateUrlFields="رقم_الشركة" ControlStyle-BackColor="#3c8dbc" ControlStyle-ForeColor="White" ControlStyle-CssClass="p-2" DataNavigateUrlFormatString="companies_show.aspx?cmp={0}" HeaderText="عرض" NavigateUrl="~/companies_show.aspx"
                                     Text=' <i class="fa fa-eye" style="padding: 6px 5px 5px 5px;min-width: 26px;height: 30px;font-size:20px;background-color: #3c8dbc;color: white;border:none;"></i>' />
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>




            </div>
            <!-- /.box-body -->
            <div class="box-footer">
                <nav aria-label="...">
                  <ul class="pagination">
                    <li class="page-item disabled">
                      <span class="page-link">Previous</span>
                    </li>
                    <li class="page-item active"><a class="page-link" href="#">1</a></li>
                    <li class="page-item">
                      <span class="page-link">
                        2
                        <span class="sr-only">(current)</span>
                      </span>
                    </li>
                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                    <li class="page-item">
                      <a class="page-link" href="#">Next</a>
                    </li>
                  </ul>
                </nav>
            </div>
            <!-- /.box-footer-->
        </div>
        <!-- /.box -->

    </section>

</asp:Content>
