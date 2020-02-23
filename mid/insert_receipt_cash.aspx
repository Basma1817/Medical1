<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="insert_receipt_cash.aspx.cs" Inherits="mid.insert_receipt_cash" %>

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
            <h2 class="panel-title" style="font-size: 29px;">أضافة سند صرف </h2>
        </div>
    </div>


    <div class="panel panel-primary col-md-12">
        <div class="panel-heading">
            <h3 class="panel-title">بيانات اساسية سند صرف</h3>
        </div>
        <div class="panel-body">
            <div class="row">
                <div class="col-sm-2">
                    <asp:Label Text="نوع السند" runat="server" />
                    <asp:DropDownList ID="DropDownList3" runat="server" Style="width: 100%"></asp:DropDownList>
                </div>
                <div class="col-sm-2">
                    <asp:Label Text="التاريخ الهجرى" runat="server" />
                    <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="col-sm-2">
                    <asp:Label Text=" تاريخ القيد" runat="server" />
                    <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server"></asp:TextBox>
                </div>

                <div class="col-sm-2">
                    <asp:Label Text="رقم السند" runat="server" />
                    <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="col-sm-2">
                    <asp:Label Text="الفرع" runat="server" />
                    <asp:DropDownList ID="DropDownList2" runat="server" Style="width: 100%"></asp:DropDownList>
                </div>
                <div class="col-sm-2">
                    <asp:Label Text="الشركة" runat="server" />
                    <asp:DropDownList ID="DropDownList1" runat="server" Style="width: 100%"></asp:DropDownList>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-1">
                    <asp:Label Text="\\" runat="server" />
                    <asp:TextBox ID="TextBox10" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="col-sm-2">
                    <asp:Label Text="مندوب مبيعات" runat="server" />
                    <asp:DropDownList ID="DropDownList5" runat="server" Style="width: 100%"></asp:DropDownList>
                </div>
                <div class="col-sm-2">
                    <asp:Label Text="مقبوض بواسطة " runat="server" />
                    <asp:TextBox ID="TextBox9" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="col-sm-1">
                    <asp:Label Text="القيمة " runat="server" />
                    <asp:TextBox ID="TextBox8" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="col-sm-1">
                    <asp:Label Text="الضريبة " runat="server" />
                    <asp:CheckBox ID="CheckBox1" runat="server" />
                    <asp:TextBox ID="TextBox7" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="col-sm-1">
                    <asp:Label Text="المبلغ المطلوب " runat="server" />
                    <asp:TextBox ID="TextBox6" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="col-sm-1">
                    <asp:Label Text="سعر الصرف" runat="server" />
                    <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="col-sm-1">
                    <asp:Label Text="المبلغ" runat="server" />
                    <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server"></asp:TextBox>
                </div>

                <div class="col-sm-2">
                    <asp:Label Text="العملة" runat="server" />
                    <asp:DropDownList ID="DropDownList4" runat="server" Style="width: 100%"></asp:DropDownList>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="panel panel-primary col-md-6">
            <div class="panel-heading">
                <h3 class="panel-title">بيانات الحساب الدائن </h3>
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-sm-3">
                        <asp:Label Text="رقم المستند" runat="server" />
                        <asp:TextBox ID="TextBox19" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-sm-3">
                        <asp:Label Text="الرقم" runat="server" />
                        <asp:TextBox ID="TextBox18" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-sm-6">
                        <asp:Label Text="الصندوق الرئيسي" runat="server" />
                        <asp:DropDownList ID="DropDownList8" runat="server" Style="width: 100%"></asp:DropDownList>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-6">
                    </div>
                    <div class="col-sm-6">
                        <asp:Label Text="البيانAR" runat="server" />
                        <asp:TextBox ID="TextBox20" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>
                <%-- <div class="row">
                 
                       
                    </div>--%>

                <div class="row">
                    <div class="panel panel-default">
                        <div class="panel-heading">أجـمـالى الـسـند</div>
                        <div class="panel-body">
                            <div class="col-sm-3">
                            </div>
                            <div class="col-sm-3">
                                <asp:Label Text="الفرق" runat="server" />
                                <asp:TextBox ID="TextBox23" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-sm-3">
                                <asp:Label Text="دائن" runat="server" />
                                <asp:TextBox ID="TextBox22" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>

                            <div class="col-sm-3">
                                <asp:Label Text="مدين" runat="server" />
                                <asp:TextBox ID="TextBox21" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="panel panel-primary col-md-6">
            <div class="panel-heading">
                <h3 class="panel-title">بيانات الحساب المدين </h3>
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-sm-6">
                        <asp:Label Text="الرقم" runat="server" />
                        <asp:TextBox ID="TextBox12" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-sm-6">
                        <asp:Label Text="الحساب الرئيسي" runat="server" />
                        <asp:TextBox ID="TextBox11" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-4">
                        <asp:Label Text="الرقم" runat="server" />
                        <asp:TextBox ID="TextBox13" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-sm-4">
                        <asp:Label Text="نوع الحساب" runat="server" />
                        <asp:DropDownList ID="DropDownList6" runat="server" Style="width: 100%"></asp:DropDownList>
                    </div>
                    <div class="col-sm-4">
                        <asp:Label Text="نوع الحساب " runat="server" />
                        <asp:DropDownList ID="DropDownList7" runat="server" Style="width: 100%"></asp:DropDownList>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-4">
                    </div>
                    <div class="col-sm-4">
                        <asp:Label Text="رقم المستند" runat="server" />
                        <asp:TextBox ID="TextBox15" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-sm-4">
                        <asp:Label Text="المبلغ مدين" runat="server" />
                        <asp:TextBox ID="TextBox14" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-6">
                    </div>
                    <div class="col-sm-6">
                        <asp:Label Text="البيان عربى" runat="server" />
                        <asp:TextBox ID="TextBox16" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-6">
                        <asp:Button ID="Button1" runat="server" Text="اضافة سطر" class="btn btn-success" />
                    </div>
                    <div class="col-sm-6">
                        <asp:Label Text="البيانEN" runat="server" />
                        <asp:TextBox ID="TextBox17" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>

            </div>
        </div>

    </div>
      <div class="row">
            <div class="col-md-12" id="table_view">
                <table class="table" id="table">
                    <thead>
                         <th>رقم السطر</th>
                          <th>رقم الحساب</th>
                          <th>اسم الحساب</th>
                          <th>الحركة مدين</th>
                          <th>الحركة دائن</th>
                          <th>البيان AR</th>
                          <th>رقم المستند</th>
                          <th>البيانEN </th>
                        </thead>
                </table>
            </div>
        </div>
</asp:Content>
