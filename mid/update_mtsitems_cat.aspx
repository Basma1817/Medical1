<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="update_mtsitems_cat.aspx.cs" Inherits="mid.update_mtsitems_cat" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

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

       

        /*.nav-pills>li>a{
             font-size: 18px;*/
    </style>


    <div class="panel panel-default col-lg-12">
        <div class="panel-body">
            <h2 class="panel-title" style="font-size: 29px;">بيانات الأصناف</h2>
        </div>
    </div>

    <div class="row">

        <div class="col-lg-5" style="display: flex; justify-content: flex-end">
            <asp:Button ID="Button2" runat="server" type="submit" Text="حفظ" OnClick="Button2_Click" class="btn btn-success" />
            <asp:Button ID="Button1" runat="server" type="submit" Text="تراجع" OnClick="Button1_Click" class="btn btn-success" />
           

        </div>
         <div class="col-lg-1">
            <div class="form-group">
                <asp:Label ID="Label17" runat="server" Text="رقم النشاط"></asp:Label>
                <asp:TextBox ID="TextBox22" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <div  class="col-md-2">
            <div class="form-group">
                <asp:Label ID="Label2" runat="server" Text="النشاط"></asp:Label>
                <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control" AutoPostBack="true">
                </asp:DropDownList>
            </div>
        </div>

        <div class="col-lg-1">
            <div class="form-group">
                <asp:Label ID="Label12" runat="server" Text="رقم الشركة"></asp:Label>
                <asp:TextBox ID="TextBox26" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <div class="col-lg-3">
            <div class="form-group">
                <asp:Label ID="Label1" runat="server" Text="أسم الشركة"></asp:Label>
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control"
                AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-lg-9" style="display:flex; justify-content:right">
            <ul class="nav nav-pills" role="tablist">
                <li class="nav-item">
                <a class="nav-link" data-toggle="pill" href="#purshase">المشتريات</a>
                </li>
                <li class="nav-item">
                <a class="nav-link" data-toggle="pill" href="#details">المقاسات و الاوزان</a>
                </li>
                <li class="nav-item">
                <a class="nav-link active" data-toggle="pill" href="#basicinfo">بيانات الاصناف</a>
                </li>
            </ul>
        </div>
    </div>

    <div class="tab-content col-md-9">
        <div id="basicinfo" class="tab-pane active">
            <div class="col-lg-12">
                <div class="panel panel-default" style="margin-top: 10px">
                    <div class="panel-body">
                        <div style="display: flex">
                            <div style="display: flex">
                                <asp:Label ID="Label9" runat="server" Style="width: 20%" Text="رقم الصنف"></asp:Label>
                                <asp:TextBox ID="TextBox4" runat="server" Style="width: 41%; background: #fff" CssClass="form-control"></asp:TextBox>

                                <asp:Label ID="Label5" runat="server" Style="width: 15%; margin-right: 5px" Text=" مستوي"></asp:Label>
                                <asp:TextBox ID="TextBox60" runat="server" Style="width: 17%; background: #fff" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="col-md-3">
                                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                                    <asp:ListItem Value="0">رئيسي</asp:ListItem>
                                    <asp:ListItem Value="1">فرعي</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>

                            <div class="col-lg-3">
                                <asp:CheckBox ID="CheckBox2" runat="server" Text=" فعال" />
                            </div>

                            <div class="col-lg-3">
                                <asp:CheckBox ID="CheckBox1" runat="server" Text="مبيعات" />
                            </div>

                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-9 pull-right">
                            <div class="col-md-12" style="display: flex; margin-top: 10px">
                                <asp:Label ID="Label7" runat="server" Style="margin-left: 5px" Text="AR"></asp:Label>
                                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="col-md-12" style="display: flex; margin-top: 10px">
                                <asp:Label ID="Label8" runat="server" Style="margin-left: 5px" Text="EN"></asp:Label>
                                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="col-md-12" style="display: flex; margin-top: 10px">
                                <asp:Label ID="Label6" runat="server" Text="المورد"></asp:Label>
                                <asp:DropDownList ID="DropDownList3" runat="server" Style="width: 80%" CssClass="form-control"></asp:DropDownList>
                                <asp:TextBox ID="TextBox46" Style="width: 20%" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-md-12" style="display: flex; justify-content: space-between; margin-top: 10px">
                                <div style="display: flex">
                                    <asp:Label ID="Label4" runat="server" Text="بونص البيع%"></asp:Label>
                                    <asp:TextBox ID="TextBox16" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div style="display: flex; justify-content: space-between">
                                    <asp:Label ID="Label19" runat="server" Text="الضريبة المضافة%"></asp:Label>
                                    <asp:TextBox ID="TextBox19" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div style="display: flex">
                                    <asp:Label ID="Label20" runat="server" Text="حد الطلب"></asp:Label>
                                    <asp:TextBox ID="TextBox18" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-12" style="display: flex; justify-content: space-between; margin-top: 10px">

                                <div style="display: flex">
                                    <asp:CheckBox ID="CheckBox9" runat="server" Text="الخصم" />
                                </div>

                                <div style="display: flex">
                                    <asp:Label ID="Label3" Style="width: 100%" runat="server" Text="أكبر كمية بالمبيعات"></asp:Label>
                                    <asp:TextBox ID="TextBox47" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-2 pull-right" style="margin-bottom: 10px;">
                            <div class="col-md-12" style="border: 1px groove; border-radius: 5px; background: #3c8dbc; color: #fff; padding: 6px">
                                <div style="margin-left: 3px">
                                    <asp:CheckBox ID="CheckBox3" runat="server" Text="مخزون" />
                                </div>
                                <div style="margin-left: 3px">
                                    <asp:CheckBox ID="CheckBox4" runat="server" Text="طليبة" />
                                </div>
                                <div style="margin-left: 3px">
                                    <asp:CheckBox ID="CheckBox12" runat="server" Text="مرتبط" />
                                </div>
                            </div>
                        </div>
                        <div class="col-md-2 pull-right" style="margin-bottom: 10px;">
                            <div class="col-md-12" style="border: 1px groove; border-radius: 5px; background: #3c8dbc; color: #fff; padding: 6px">
                                <div style="margin-left: 3px">
                                    <asp:CheckBox ID="CheckBox13" runat="server" Text="عام" />
                                </div>
                                <div style="margin-left: 3px">
                                    <asp:CheckBox ID="CheckBox14" runat="server" Text="إنتاج/تجميع" />
                                </div>
                                <div style="margin-left: 3px">
                                    <asp:CheckBox ID="CheckBox15" runat="server" Text="مواد خام" />
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12" style="margin-top: 10px">
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div style="display: flex">
                                                <asp:Label ID="Label22" Style="width: 20%" runat="server" Text="سعر بيع1"></asp:Label>
                                                <asp:TextBox ID="TextBox14" Style="width: 20%" class="form-control" runat="server"></asp:TextBox>
                                            </div>

                                        </div>
                                        <div class="col-md-6">
                                            <div style="display: flex">
                                                <asp:Label ID="Label21" Style="width: 15%" runat="server" Text="رئيسة"></asp:Label>
                                                <asp:DropDownList ID="DropDownList4" class="form-control" runat="server"></asp:DropDownList>
                                                <asp:TextBox ID="TextBox15" Style="width: 15%" class="form-control" runat="server"></asp:TextBox>
                                            </div>
                                        </div>

                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div style="display: flex">
                                                <asp:Label ID="Label23" Style="width: 20%" runat="server" Text="سعر بيع2"></asp:Label>
                                                <asp:TextBox ID="TextBox1" Style="width: 20%" class="form-control" runat="server"></asp:TextBox>
                                            </div>

                                        </div>
                                        <div class="col-md-6">
                                            <div style="display: flex">
                                                <asp:Label ID="Label24" Style="width: 15%" runat="server" Text="شراء"></asp:Label>
                                                <asp:DropDownList ID="DropDownList13" class="form-control" runat="server"></asp:DropDownList>
                                                <asp:TextBox ID="TextBox13" Style="width: 15%" class="form-control" runat="server"></asp:TextBox>
                                            </div>
                                        </div>

                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div style="display: flex">
                                                <asp:Label ID="Label25" Style="width: 20%" runat="server" Text="سعر الشراء"></asp:Label>
                                                <asp:TextBox ID="TextBox61" Style="width: 20%" class="form-control" runat="server"></asp:TextBox>
                                            </div>

                                           
                                        </div>
                                        <div class="col-md-6">
                                            <div style="display: flex">
                                                <asp:Label ID="Label26" Style="width: 15%" runat="server" Text="بيع"></asp:Label>
                                                <asp:DropDownList ID="DropDownList14" class="form-control" runat="server"></asp:DropDownList>
                                                <asp:TextBox ID="TextBox62" Style="width: 15%" class="form-control" runat="server"></asp:TextBox>
                                            </div>
                                        </div>

                                    </div>
                                    <div class="row" style="margin-top: 10px">
                                        
                                        <div style="display: flex; margin-top: 10px">
                                            <div class="col-md-6">
                                                <div style="display: flex">
                                                    <asp:Label ID="Label27" Style="width: 15%" runat="server" Text="رقم المرجع"></asp:Label>
                                                    <asp:TextBox ID="TextBox63" Style="width: 73%" class="form-control" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                             <div class="col-md-6">
                                            <div style="display: flex">
                                                <asp:Label ID="Label10" Style="width: 20%" runat="server" Text="تكلفة الوحدة"></asp:Label>
                                                <asp:TextBox ID="TextBox24" Style="width: 20%" class="form-control" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                            </div>

                                             <div class="row">
                                            <div class="col-md-6 pull-right">
                                                <div style="display: flex; margin-top: 10px">
                                                    <asp:Label ID="Label28" Style="width: 15%" runat="server" Text="حجم الباركود"></asp:Label>
                                                    <asp:TextBox ID="TextBox64" Style="width: 73%" class="form-control" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>

                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="panel panel-default col-md-12">
                                <div class="panel-body">
                                    <table class="table table-bordered table-hover table-responsive text-center">
                                        <tr>
                                            <th></th>
                                            <th style="width: 20%"></th>
                                            <th>الرقم</th>
                                            <th>الشد</th>
                                            <th>سعر البيع</th>
                                            <th>سعر الشراء</th>
                                            <th>التكلفة</th>
                                            <th style="width: 18%">باركو المصنع</th>
                                            <th style="width: 12%">حجم الباركود</th>
                                        </tr>
                                        <tbody>
                                            <tr>
                                                <td>الوحدة الرئيسية</td>
                                                <td>
                                                    <asp:DropDownList ID="DropDownList8" class=" form-control" runat="server"></asp:DropDownList></td>
                                                <td>
                                                    <asp:TextBox ID="TextBox75" class="form-control" runat="server"></asp:TextBox></td>
                                                <td>
                                                    <asp:TextBox ID="TextBox76" class="form-control" runat="server"></asp:TextBox></td>
                                                <td>
                                                    <asp:TextBox ID="TextBox77" class="form-control" runat="server"></asp:TextBox></td>
                                                <td>
                                                    <asp:TextBox ID="TextBox78" class="form-control" runat="server"></asp:TextBox></td>
                                                <td>
                                                    <asp:TextBox ID="TextBox79" class="form-control" runat="server"></asp:TextBox></td>
                                                <td>
                                                    <asp:TextBox ID="TextBox7" class="form-control" runat="server"></asp:TextBox></td>
                                                <td>
                                                    <asp:DropDownList ID="DropDownList5" class=" form-control" runat="server"></asp:DropDownList></td>
                                            </tr>
                                            <tr>
                                                <td>وحدة1</td>
                                                <td>
                                                    <asp:DropDownList ID="DropDownList15" class=" form-control" runat="server"></asp:DropDownList></td>
                                                <td>
                                                    <asp:TextBox ID="TextBox80" class="form-control" runat="server"></asp:TextBox></td>
                                                <td>
                                                    <asp:TextBox ID="TextBox81" class="form-control" runat="server"></asp:TextBox></td>
                                                <td>
                                                    <asp:TextBox ID="TextBox82" class="form-control" runat="server"></asp:TextBox></td>
                                                <td>
                                                    <asp:TextBox ID="TextBox83" class="form-control" runat="server"></asp:TextBox></td>
                                                <td>
                                                    <asp:TextBox ID="TextBox84" class="form-control" runat="server"></asp:TextBox></td>
                                                <td>
                                                    <asp:TextBox ID="TextBox85" class="form-control" runat="server"></asp:TextBox></td>
                                                <td>
                                                    <asp:DropDownList ID="DropDownList6" class=" form-control" runat="server"></asp:DropDownList></td>

                                            </tr>
                                            <tr>
                                                <td>وحدة2</td>
                                                <td>
                                                    <asp:DropDownList ID="DropDownList16" class=" form-control" runat="server"></asp:DropDownList></td>
                                                <td>
                                                    <asp:TextBox ID="TextBox86" class="form-control" runat="server"></asp:TextBox></td>
                                                <td>
                                                    <asp:TextBox ID="TextBox87" class="form-control" runat="server"></asp:TextBox></td>
                                                <td>
                                                    <asp:TextBox ID="TextBox88" class="form-control" runat="server"></asp:TextBox></td>
                                                <td>
                                                    <asp:TextBox ID="TextBox89" class="form-control" runat="server"></asp:TextBox></td>
                                                <td>
                                                    <asp:TextBox ID="TextBox90" class="form-control" runat="server"></asp:TextBox></td>
                                                <td>
                                                    <asp:TextBox ID="TextBox91" class="form-control" runat="server"></asp:TextBox></td>
                                                <td>
                                                    <asp:DropDownList ID="DropDownList7" class=" form-control" runat="server"></asp:DropDownList></td>

                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <div id="details" class="tab-pane fade" style="margin-top:10px">
            <div class="row">
              
            <div class="panel panel-primary col-md-6">
                    <div class="panel-heading">
                        <h3 class="panel-title">مقاسات الورق</h3>
                    </div>
                    <div class="panel-body">
                        <div class="col-md-12">
                            <asp:Label Text="الطول" runat="server" />
                            <asp:TextBox ID="TextBox6" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-12">
                            <asp:Label Text="العرض" runat="server" />
                            <asp:TextBox ID="TextBox9" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-12">
                            <asp:Label Text="الوزن" runat="server" />
                            <asp:TextBox ID="TextBox10" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>
                </div>
               <div class="panel panel-primary col-md-6">
                   <div class="panel-heading">
                       <h3 class="panel-title">مقاسات الحديد</h3>
                   </div>
                   <div class="panel-body">
                       <div class="col-md-12">
                           <asp:Label Text="الطول" runat="server" />
                           <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server"></asp:TextBox>
                       </div>
                       <div class="col-md-12">
                           <asp:Label Text="العرض" runat="server" />
                           <asp:TextBox ID="TextBox8" CssClass="form-control" runat="server"></asp:TextBox>
                       </div>
                       <div class="col-md-12">
                           <asp:Label Text="قوة التحمل" runat="server" />
                           <asp:TextBox ID="TextBox23" CssClass="form-control" runat="server"></asp:TextBox>
                       </div>
                   </div>
               </div>
           </div>
            <div class="row">
                   <div class="panel panel-primary col-lg-6">
                    <div class="panel-heading">
                        <h3 class="panel-title">الأوزان للعبوات</h3>
                    </div>
                    <div class="panel-body">
                        <div class="col-md-12">
                            <asp:Label Text="وزن أجمالي كجم" runat="server" />
                            <asp:TextBox ID="TextBox11" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-12">
                            <asp:Label Text="وزن صافي كجم" runat="server" />
                            <asp:TextBox ID="TextBox12" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>
                </div>
               <div class="panel panel-primary col-lg-6">
                   <div class="panel-heading">
                       <h3 class="panel-title">الأدوية</h3>
                   </div>
                   <div class="panel-body">
                       <div class="col-md-12">
                           <asp:Label Text="المجمواعات الدوائية" runat="server" />
                           <asp:TextBox ID="TextBox17" CssClass="form-control" runat="server"></asp:TextBox>
                       </div>
                       <div class="col-md-12">
                           <asp:Label Text="الصنف البديل" runat="server" />
                           <asp:TextBox ID="TextBox20" CssClass="form-control" runat="server"></asp:TextBox>
                       </div>
                       <div class="col-md-12">
                           <asp:Label Text="مكان التخزين" runat="server" />
                           <asp:TextBox ID="TextBox21" CssClass="form-control" runat="server"></asp:TextBox>
                       </div>
                   </div>
               </div>
              </div>
        


                   

               <div class ="col-md-3">

                  
                        <asp:Label ID="Label456" runat="server" Text="الصورة"></asp:Label>
                   
                        <img src="https://media.geeksforgeeks.org/wp-content/uploads/20190719161521/core.jpg" alt="circls" style="width: 119px; height: 188px; border: dotted; margin: -73% 249% 117% 0%;" />
            </div>
        </div>
        <div id="purshase" class="container tab-pane fade">
            <table>
                <%-- <tr style="position: absolute; margin: 8% 9% 0% 0%;">
                    <td style="font-size: initial;">سعر بيع 1</td>
                    <td>
                        <asp:TextBox ID="TextBox16" runat="server" Style="border-radius: unset; border: 1px solid lightblue;"></asp:TextBox>
                    </td>
                    <td style="font-size: initial;">سعر بيع 2</td>
                    <td>
                        <asp:TextBox ID="TextBox17" runat="server" Style="border-radius: unset; border: 1px solid lightblue;"></asp:TextBox>
                    </td>
                    <td style="font-size: initial;">سعر الشراء</td>
                    <td>
                        <asp:TextBox ID="TextBox18" runat="server" Style="border-radius: unset; border: 1px solid lightblue;"></asp:TextBox>
                    </td>
                </tr>--%>
                <%-- <tr style="margin: 14% 7% 0% 0%; position: absolute;">
                    <td style="font-size: initial;">تكلفة الصنف</td>
                    <td>
                        <asp:TextBox ID="TextBox19" runat="server" Style="border-radius: unset; border: 1px solid lightblue;"></asp:TextBox>
                    </td>
                           
                </tr>--%>
            </table>
        </div>

        <div class="row">



            <%--<table class="table table-responsive table-bordered">
              
                       
                           
                            <tr>
                                <td>
                                    <asp:CheckBox ID="CheckBox10" runat="server" Text="تفعيل الكمية بالوحدة الثالثة" />
                                </td>
                                <td>
                                    <asp:CheckBox ID="CheckBox11" runat="server" Text="تفعيل الكمية بالوحدة الثانية" />
                                </td>
                            </tr>
                        </table>--%>


            <%--   <div>
                <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped" BackColor="White"></asp:GridView>

            </div>--%>
        </div>
    </div>

    <div class="col-md-3" style="height: 650px; overflow: auto; overflow-x: hidden">
        <div class="panel panel-default" style="margin-top: 10px">
            <div class="panel-body">
                <asp:TreeView ID="TreeView1" runat="server" Font-Bold="False" Font-Size="Medium" ShowLines="True" OnTreeNodePopulate="TreeView1_TreeNodePopulate" OnSelectedNodeChanged="TreeView1_SelectedNodeChanged">
                </asp:TreeView>
            </div>
        </div>
    </div>

    
</asp:Content>
