<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="mts_custmr.aspx.cs" Inherits="mid.mts_custmr" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-12">
            <section class="content-header">
                <h1>
                    <a href="basic_info.aspx"><i class="fa fa-dashboard"></i>البيانات الاساسية </a>
                    <small><small>
                        <asp:Label ID="Label3" runat="server" Text=""></asp:Label></small></small>
                </h1>
                <ol class="breadcrumb">
                    <li><a href="Dashboard.aspx"><i class="fa fa-dashboard"></i>Dashboard </a></li>
                    <li><a href="basic_info.aspx">البيانات الاساسية</a></li>
                    
                  <li><a href="mts_custmr.aspx">بيانات العملاء</a></li>
                </ol>
            </section>
        </div>
    </div>

    <style>
        .nav-pills>li.active>a, .nav-pills>li.active>a:hover, .nav-pills>li.active>a:focus{
             /*font-size: 18px;
            background: #649bff;
            color: #fff;
            border: none;
            transition: all .3s ease-in-out;
            border-top: 2px solid transparent;*/
        }
        .nav-pills>li.active>a{
             background: #0289d8 !important; 
             border: none !important; 
            transition: all .3s ease-in-out;
        }

        .row{
            margin-bottom:30px;
        }
        .nav-pills>li.active>a:hover{
            transition: all .2s ease-in-out;
        }
        .nav-pills>li>a{
             font-size: 18px;
            background: #105e8c;
            letter-spacing: 1px;
            color: #fff;
            border: none !important;
        
            transition: all .3s ease-in-out;
        }
        .nav-pills>li>a:hover{
            background: #0289d8;
            color: #fff;
             transition: all .3s ease-in-out;
        }
        th{
            text-align:right;
        }
          #bill{
             background-color:#d8effb;           
            border-right:solid 1px black;
            border-left:solid 1px black;
            border-bottom:solid 1px black;
            margin-bottom:20px;
            width:230px;
            height:150px;
           


        }
         #bill1{
             background-color:#d8effb;
            border-right:solid 1px black;
            border-left:solid 1px black;
            border-bottom:solid 1px black;
            margin-bottom:20px;
            width:230px;
            height:150px;
              }
        /*.nav-pills>li>a{
             font-size: 18px;*/
    </style>


    <div class="panel panel-default col-lg-12">
        <div class="panel-body">
            <h2 class="panel-title" style="font-size: 29px;">بيانات العملاء</h2>
        </div>
    </div>

       
   
    <div class="row">
        <div class="col-lg-5">
        </div>
        <div class="col-lg-1">
            <div class="form-group" style="display: flex; justify-content: space-between">
                <asp:Label ID="Label17" runat="server" Text="الرقم"></asp:Label>
                <asp:TextBox ID="TextBox55" runat="server" CssClass="form-control" Style="display: flex;"></asp:TextBox>
            </div>
        </div>
        <div class="col-md-2">
            <div class="form-group" style="display: flex; justify-content: space-between">
                <asp:Label ID="Label1" runat="server" Text="النشاط"></asp:Label>
                <asp:DropDownList ID="DropDownList5" runat="server" CssClass="form-control" AutoPostBack="true">
                </asp:DropDownList>
            </div>
        </div>
        <div class="col-lg-1">
            <div class="form-group" style="display: flex; justify-content: space-between">
                <asp:Label ID="Label12" runat="server" Text="الرقم"></asp:Label>
                <asp:TextBox ID="TextBox26" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <div class="col-lg-3">
            <div class="form-group" style="display: flex; justify-content: space-between">
                <asp:Label ID="Label2" runat="server" Text="الشركة"></asp:Label>
                <asp:DropDownList ID="DropDownList4" runat="server" CssClass="form-control"
                    AutoPostBack="true" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged">
                </asp:DropDownList>
            </div>
        </div>
    </div>


    <div class="row">
        <div class="col-sm-4">
        </div>
        <div class="row">
            <div class="col-lg-9" style="display: flex; justify-content: right">
                <ul class="nav nav-pills" role="tablist">
                    <li class="nav-item">
                        <a class="nav-link active" data-toggle="pill" href="#info">حركة العملاء</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-toggle="pill" href="#respppl">الأشخاص المسؤلين</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-toggle="pill" href="#basicinfo">البيانات اللأساسية</a>
                    </li>
                </ul>
            </div>
        </div>

        <div class="col-sm-4">
        </div>

    </div>

    <div class="tab-content">
        <div id="basicinfo" class="tab-pane active">
            <div class="col-lg-12">
                <div class="col-lg-5" style="display: flex; justify-content: flex-end">
                    <asp:Button ID="Button2" runat="server" type="submit" Text="إضافة" OnClick="Button2_Click" class="btn btn-primary" />
                    <asp:Button ID="Button1" runat="server" type="submit" Text="تعديل" OnClick="Button1_Click" class="btn btn-success" />
                    <asp:HyperLink ID="HyperLink1" runat="server" class="btn btn-primary" data-target="#loginModal" data-toggle="modal" href="#" Style="background-color: darkred;">حذف</asp:HyperLink>


                    <asp:Button ID="Button5" runat="server" Text="طباعة" OnClick="Button3_Click" class="btn btn-dark" />
                </div>

                <div class="row">
                    <div class="col-md-9">
                        <div class="radio_btn">
                            <asp:Label ID="Label4" runat="server" Text="نوع الحساب"></asp:Label>
                            <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal">
                                <asp:ListItem Text="رئيسي" Selected="True" />
                                <asp:ListItem Text="فرعي" />
                            </asp:RadioButtonList>
                        </div>
                        <table class="table table-striped">


                            <tbody>

                                <tr>
                                    <td>
                                        <asp:Label ID="Label6" runat="server" Text="رقم العميل"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label7" runat="server" Text="رقم المستوي"></asp:Label>

                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

                                    </td>
                                    <td>
                                        <asp:Label ID="Label8" runat="server" Text="الدولة "></asp:Label>

                                    </td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList3" runat="server" Style="width: 80%;"></asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label10" runat="server" Text=" اسم العميل AR"></asp:Label>

                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>

                                    </td>
                                    <td></td>
                                    <td></td>

                                    <td>
                                        <asp:Label ID="Label13" runat="server" Text=" فئة العميل"></asp:Label>

                                    </td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList2" runat="server" Style="width: 80%;"></asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label14" runat="server" Text=" EN"></asp:Label>

                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>

                                    </td>
                                    <td></td>
                                    <td></td>
                                    <td>
                                        <asp:Label ID="Label15" runat="server" Text=" العملة"></asp:Label>

                                    </td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList1" runat="server" Style="width: 80%;"></asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label16" runat="server" Text="التليفون "></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label19" runat="server" Text="رئيسي"></asp:Label>

                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>

                                    </td>
                                    <td>
                                        <asp:Label ID="Label20" runat="server" Text="حد الإتمان "></asp:Label>

                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>

                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label21" runat="server" Text="الموبايل "></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label22" runat="server" Text="رئيسي"></asp:Label>

                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox27" runat="server"></asp:TextBox>

                                    </td>
                                    <td>
                                        <asp:Label ID="Label25" runat="server" Text="رقم الحساب  "></asp:Label>

                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>

                                    </td>
                                </tr>

                                <tr>
                                    <td>
                                        <asp:Label ID="Label26" runat="server" Text=" مدة السداد"></asp:Label>


                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>

                                    </td>
                                    <td></td>
                                    <td></td>
                                    <td>
                                        <asp:Label ID="Label28" runat="server" Text=" اول المدة مدين"></asp:Label>

                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>

                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label29" runat="server" Text=" بريد الكتروني "></asp:Label>

                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>

                                    </td>
                                    <td></td>
                                    <td></td>
                                    <td>
                                        <asp:Label ID="Label30" runat="server" Text=" دائن  "></asp:Label>

                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>

                                    </td>
                                </tr>

                                <tr>
                                    <td>
                                        <asp:Label ID="Label31" runat="server" Text=" العنوان  "></asp:Label>

                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox16" runat="server"></asp:TextBox>

                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <!--start tree view-->

                    <!--start tree view-->


                    <div class="col-md-3" style="height: 650px; overflow: auto; overflow-x: hidden">
                        <div class="panel panel-default" style="margin-top: 10px">
                            <div class="panel-body">
                                <asp:TreeView ID="TreeView1" runat="server" Font-Bold="False" Font-Size="Medium" ShowLines="True" OnTreeNodePopulate="TreeView1_TreeNodePopulate" OnSelectedNodeChanged="TreeView1_SelectedNodeChanged">
                                </asp:TreeView>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            </div>
            <div id="respppl" class="container tab-pane fade">
                <div class="row">

                    <div class="col-md-12">
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th scope="col">المسؤل </th>
                                    <th scope="col">الوظيفة</th>
                                    <th scope="col">بريد الكتروني </th>
                                    <th scope="col">موبايل</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        <asp:TextBox ID="TextBox22" runat="server"></asp:TextBox>

                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox23" runat="server"></asp:TextBox>

                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox24" runat="server"></asp:TextBox>

                                    </td>


                                    <td>
                                        <asp:TextBox ID="TextBox25" runat="server"></asp:TextBox>

                                    </td>


                                </tr>
                                <tr>

                                    <td>
                                        <asp:TextBox ID="TextBox30" runat="server"></asp:TextBox>

                                    </td>
                                    <td>

                                        <asp:TextBox ID="TextBox37" runat="server"></asp:TextBox>
                                    </td>


                                    <td>

                                        <asp:TextBox ID="TextBox41" runat="server"></asp:TextBox>

                                    </td>

                                    <td>
                                        <asp:TextBox ID="TextBox45" runat="server"></asp:TextBox>

                                    </td>

                                </tr>
                                <tr>

                                    <td>
                                        <asp:TextBox ID="TextBox31" runat="server"></asp:TextBox>

                                    </td>
                                    <td>

                                        <asp:TextBox ID="TextBox38" runat="server"></asp:TextBox>

                                    </td>

                                    <td>

                                        <asp:TextBox ID="TextBox42" runat="server"></asp:TextBox>

                                    </td>

                                    <td>

                                        <asp:TextBox ID="TextBox46" runat="server"></asp:TextBox>

                                    </td>

                                </tr>
                                <tr>
                                    <td>
                                        <asp:TextBox ID="TextBox35" runat="server"></asp:TextBox>

                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox39" runat="server"></asp:TextBox>

                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox43" runat="server"></asp:TextBox>

                                    </td>


                                    <td>
                                        <asp:TextBox ID="TextBox47" runat="server"></asp:TextBox>

                                    </td>


                                </tr>
                                <tr>
                                    <td>
                                        <asp:TextBox ID="TextBox36" runat="server"></asp:TextBox>

                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox40" runat="server"></asp:TextBox>

                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox44" runat="server"></asp:TextBox>

                                    </td>


                                    <td>
                                        <asp:TextBox ID="TextBox48" runat="server"></asp:TextBox>

                                    </td>


                                </tr>
                            </tbody>
                        </table>

                    </div>

                </div>
                <div class="row">

                    <div class="col-sm-8" id="note">
                        <asp:Label ID="Label33" runat="server" Text="ملاحظات"></asp:Label>
                        <asp:TextBox ID="TextBox60" runat="server" Style="width:50%"></asp:TextBox>
                    </div>

                </div>

            </div>

            <div id="info" class="container tab-pane fade">

                <div class="row">
                    <!--first table-->
                    <div class="col-sm-6">
                        <div id="bill">
                            <span style="color: blue">اخر فاتورة مبيعات</span>
                            <table class="data">
                                <tr>
                                    <td>رقم الفاتورة</td>
                                    <td>
                                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                    </td>

                                </tr>

                                <tr>
                                    <td>تاريخ الفاتورة</td>
                                    <td>
                                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                    </td>

                                </tr>


                                <tr>
                                    <td>مبلغ الفاتورة</td>
                                    <td>
                                        <asp:TextBox ID="TextBox18" runat="server"></asp:TextBox>
                                    </td>

                                </tr>
                            </table>
                        </div>
                        <div id="bill1">
                            <span style="color: blue">اخر سند قبض</span>


                            <table class="data">
                                <tr>
                                    <td>رقم السند</td>
                                    <td>
                                        <asp:TextBox ID="TextBox19" runat="server"></asp:TextBox>
                                    </td>

                                </tr>

                                <tr>
                                    <td>تاريخ السند</td>
                                    <td>
                                        <asp:TextBox ID="TextBox20" runat="server"></asp:TextBox>
                                    </td>

                                </tr>

                                <tr>
                                    <td>المبلغ </td>
                                    <td>
                                        <asp:TextBox ID="TextBox21" runat="server"></asp:TextBox>
                                    </td>

                                </tr>
                            </table>

                        </div>
                    </div>
                    <!--second table-->
                    <div class="col-sm-6">
                        <table class="table table-striped">

                            <tbody>
                                <tr>
                                    <th scope="row">اسم المورد</th>
                                    <td>
                                        <asp:TextBox ID="TextBox51" runat="server"></asp:TextBox>

                                    </td>
                                    <td>رقم المورد</td>
                                    <td>
                                        <asp:TextBox ID="TextBox50" runat="server"></asp:TextBox>

                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row">EN</th>
                                    <td>
                                        <asp:TextBox ID="TextBox52" runat="server"></asp:TextBox>

                                    </td>
                                    <td>أول المدة دائن</td>
                                    <td>
                                        <asp:TextBox ID="TextBox53" runat="server"></asp:TextBox>

                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row"></th>
                                    <td></td>
                                    <td>مدين</td>
                                    <td>
                                        <asp:TextBox ID="TextBox54" runat="server"></asp:TextBox>

                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <!--end table-->

            </div>
            .<div class="row">
                   <div class="col-md-6" hidden>
               
            </div>
            
            </div>
        <div class="row">
                   <div class="col-md-6" hidden>
               
            </div>
            <div class="col-md-6 col-md-offset-6">

                    <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped" BackColor="White" Style="font-size: 12px; width: 660px; text-align: center; border-color: #5bc0de;"></asp:GridView>

                </div>
            </div>
        </div>
        
</asp:Content>
