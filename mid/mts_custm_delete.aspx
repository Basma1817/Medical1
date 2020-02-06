<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="mts_custm_delete.aspx.cs" Inherits="mid.mts_custm_delete" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="content-wrapper">
        <ol class="breadcrumb" style="width: 1050px;">
            <h1><small>البيانات الاساسيه < حذف البيانات الاساسيه للعملاء </small></h1>
        </ol>

        <ul class="nav nav-tabs" style="background-color: #E9ECEF; width: 1050px;">
            <li class="active"><a data-toggle="tab" href="#home" style="font-size: 20px; text-decoration: none;">البيانات الاساسية</a></li>
            <li><a data-toggle="tab" href="#menu1" style="font-size: 20px; padding: 130px; text-decoration: none;">الاشخاص المسؤلين</a></li>
            <li><a data-toggle="tab" href="#menu2" style="font-size: 20px; text-decoration: none;">الحركة</a></li>
        </ul>

        <div class="tab-content">
            <div id="home" class="tab-pane fade in active ">
                <div class="col-xs-12">
                    <div class="box">
                        <div class="box-header">
                            <h3 class="box-title"></h3>
                        </div>
                        <!-- /.box-header -->
                        <div style="margin-right: 35px">
                            <div class="box-body">
                                <table id="example2" class="table table-borderless">
                                    <thead>
                                        <tr>
                                            <td>الشركة </td>
                                            <td>
                                                <asp:TextBox ID="TextBox49" runat="server" Style="width: 290px; margin: 0 -36% 0 0; height: 30px"></asp:TextBox></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label3" runat="server" Text="الفرع"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:DropDownList ID="DropDownList1" Style="width: 290px; margin: 0 -40px 0px 100%; border: 1px solid lightblue;" runat="server"></asp:DropDownList>
                                            </td>

                                            <td>
                                                <asp:Label ID="Label6" runat="server" Text="فعال" Style="margin: 0 -100% 0 0;"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:CheckBox ID="CheckBox3" runat="server" Style="margin: 0 -175% 0 0;" /></td>
                                        </tr>

                                    </thead>
                                    <tbody>
                                        <%--<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>--%>


                                        <tr>


                                            <td>
                                                <asp:Label ID="Label4" runat="server" Text="رقم العميل"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox26" runat="server" Style="width: 105px; height: 30px; text-align: center; margin: 0 -91% 0 0;"></asp:TextBox>
                                            </td>


                                            <td>
                                                <asp:Label ID="Label8" runat="server" Text="الدوله" Style="margin: 0 -100% 0 0;"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:DropDownList ID="DropDownList2" runat="server"
                                                    Style="width: 160px; margin: 0 -110% 0 0">
                                                </asp:DropDownList>
                                            </td>



                                        </tr>


                                        <tr>

                                            <td>
                                                <asp:Label ID="Label2" runat="server" Text="  اسم العميل AR "></asp:Label></td>
                                            <td>
                                                <asp:TextBox ID="TextBox27" runat="server"
                                                    Style="direction: rtl; width: 290px; height: 30px; margin: 0 -40px 0px 100%"></asp:TextBox>
                                            </td>

                                            <td>
                                                <asp:Label ID="Label9" runat="server" Text="المنطقه" Style="margin: 0 -100% 0 0;"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:DropDownList ID="DropDownList7"
                                                    Style="width: 160px; margin: 0 -110% 0 0;" runat="server">
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label5" runat="server" Text=" EN  "></asp:Label>
                                            </td>
                                            <td>

                                                <asp:TextBox ID="TextBox1" runat="server"
                                                    Style="width: 290px; margin: 0 -40px 0px 100%; border: 1px solid lightblue;"></asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label10" runat="server" Text="المدينه" Style="margin: 0 -100% 0 0;"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:DropDownList ID="DropDownList4" Style="width: 160px; margin: 0 -110% 0 0;" runat="server"></asp:DropDownList>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>العنوان 
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox2" Style="width: 290px; margin: 0 -40px 0px 100%; border: 1px solid lightblue;" runat="server"></asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label11" runat="server" Text="مندوب المبيعات" Style="margin: 0 -100% 0 0;"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:DropDownList ID="DropDownList8"
                                                    Style="width: 160px; margin: 0 -110% 0 0" runat="server">
                                                </asp:DropDownList>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>صندوق البريد </td>
                                            <td>
                                                <asp:TextBox ID="TextBox33" runat="server" Style="width: 100px; margin: 0 -40px 0px 100%; height: 30px; border: 1px solid lightblue;"></asp:TextBox>
                                            </td>

                                            <td>
                                                <asp:Label ID="Label12" runat="server" Text="الرمز البريدي" Style="margin: 0 -400% 0 0;"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox34" runat="server" Style="width: 100px; margin: 0 -258% 0 0; height: 30px;"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>البريد  
                                            <br />
                                                الالكترونى
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox3" Style="width: 290px; margin: 0 -40px 0px 100%; border: 1px solid lightblue;" runat="server"></asp:TextBox>
                                            </td>

                                            <td>
                                                <asp:Label ID="Label13" runat="server" Text="نوع النشاط" Style="margin: 0 -100% 0 0;"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:DropDownList ID="DropDownList5" Style="width: 160px; margin: 0 -110% 0 0" runat="server"></asp:DropDownList>
                                            </td>

                                        </tr>
                                        <tr>

                                            <td>تليفون 
                                            <br />
                                                العميل
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox4" Style="width: 290px; margin: 0 -40px 0px 100%; border: 1px solid lightblue;" runat="server"
                                                    placeholder="                                      /                                         "></asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label14" runat="server" Text="المشرف" Style="margin: 0 -100% 0 0;"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:DropDownList ID="DropDownList6" Style="width: 160px; margin: 0 -110% 0 0" runat="server"></asp:DropDownList>
                                            </td>




                                        </tr>
                                        <tr>


                                            <td>موبايل
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox6" Style="width: 200px; margin: 0 -40px 0px 100%; border: 1px solid lightblue;" runat="server"></asp:TextBox>
                                            </td>
                                            <td style="margin: 0 -3% 0 0;">
                                                <asp:Label ID="Label15" runat="server" Text="الرقم الضريبى" Style="margin: 0 -170% 0 0;"></asp:Label></td>
                                            <td>
                                                <asp:TextBox ID="TextBox7" runat="server" Style="width: 200px; margin: 0 -121% 0px 0"></asp:TextBox></td>
                                        </tr>


                                        <tr>
                                            <td>موبيل رئيسي </td>
                                            <td>
                                                <asp:TextBox ID="TextBox28" runat="server" Style="width: 200px; margin: 0 -11% 0px 100%; height: 30px"></asp:TextBox>
                                            </td>

                                            <td>
                                                <asp:Label ID="Label7" runat="server" Text="تليفون " Style="margin: 0 -170% 0 0;"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox29" runat="server" Style="width: 200px; margin: 0 -121% 0px 0; height: 30px;"></asp:TextBox>
                                            </td>
                                        </tr>

                                        <tr>

                                            <td>
                                                <asp:Label ID="Label16" runat="server" Text="العميل لا يستحق خصومات"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:CheckBox ID="CheckBox1" runat="server" Style="margin: 0 -115% 0 0" />
                                            </td>

                                            <td>
                                                <asp:Label ID="Label19" runat="server" Text="رقم الحساب " Style="margin: 0 -100% 0 0;"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox14" Style="width: 160px; margin: 0 -110% 0 0; height: 30px;" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label17" runat="server" Text="العميل لا يدخل فى العموله"></asp:Label>
                                            </td>

                                            <td>
                                                <asp:CheckBox ID="CheckBox2" runat="server" Style="margin: 15px -115% 0 0" />
                                            </td>

                                            <td>
                                                <asp:Label ID="Label20" runat="server" Text="اول مدة مدين" Style="margin: 0 -100% 0 0;"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox16" Style="width: 160px; margin: 0 -110% 0 0; height: 30px;" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>
                                                <asp:Label ID="Label18" runat="server" Text="اول مدة دائن" Style="margin: 0 0 0 -640%"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox15" Style="width: 160px; margin: 0 123% 0 0; height: 30px;" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>ملاحظات
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox5" runat="server"
                                                    Style="width: 340px; height: 100%; margin: 0 -40px 0px 100%; border: 1px solid lightblue;" TextMode="MultiLine"></asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label21" runat="server" Text="المرجع" Style="margin: 0 -100% 0 0;"></asp:Label></td>
                                            <td>
                                                <asp:TextBox ID="TextBox32" runat="server" Style="width: 160px; margin: 0 -110% 0 0; height: 30px"></asp:TextBox></td>
                                        </tr>

                                        <%--<tr>
                                                <td>تليفون1 :
                                        <br />
                                                    <br />
                                                    <asp:TextBox ID="TextBox28" runat="server" Style="width: 100px;"></asp:TextBox></td>

                                                <td>تليفون2 :
                                        <br />
                                                    <br />
                                                    <asp:TextBox ID="TextBox29" runat="server" Style="width: 100px;"></asp:TextBox></td>


                                                <td>تليفون3 : 
                                        <br />
                                                    <br />
                                                    <asp:TextBox ID="TextBox30" runat="server" Style="width: 100px;"></asp:TextBox></td>
                                                <td>فاكس :
                                        <br />
                                                    <br />
                                                    <asp:TextBox ID="TextBox31" runat="server" Style="width: 100px;"></asp:TextBox></td>
                                            </tr>--%>




                                        <tr>
                                            <td>
                                                <asp:Button ID="Button1" Style="margin: 3px 82% 0 0;height: 30px;background-color: #007bff;width: 52px;" runat="server" Text="حذف" OnClick="Button1_Click" />

                                            </td>
                                            <td>
                                                <asp:Button ID="Button3" Style="margin: 3px -75% 0 0;height: 30px;background-color: #dc3545;width: 52px;" runat="server" Text="تراجع" OnClick="Button3_Click" />


                                            </td>
                                        </tr>
                                </table>
                                <fieldset style="border: 1px solid; margin: -75% 77% 0 0; padding: 10px; width: 223px; background-color: aliceblue;">
                                    <legend>اخر فاتورة مبيعات</legend>
                                    <form>
                                        <table>
                                            <tr>
                                                <td>رقم فاتوره
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox8" Style="width: 140px; margin: 0 5px 6px 100%; border: 1px solid lightblue;" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>

                                                <td>تاريخ الفاتوره
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox9" Style="width: 140px; margin: 0 5px 6px 100%; border: 1px solid lightblue;" runat="server"></asp:TextBox>
                                                </td>



                                            </tr>
                                            <tr>
                                                <td>مبلغ الفاتوره
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox10" Style="width: 140px; margin: 0 5px 6px 100%; border: 1px solid lightblue;" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                        </table>
                                    </form>
                                </fieldset>
                                <fieldset style="border: 1px solid; margin: 3% 77% 0 0; padding: 10px; background-color: aliceblue; width: 223px;">
                                    <legend>اخر سند قبض</legend>
                                    <form>
                                        <table>
                                            <tr>
                                                <td>رقم سند 
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox11" Style="width: 140px; margin: 0 5px 6px 100%; border: 1px solid lightblue;" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>


                                            <tr>
                                                <td>تاريخ السند
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox12" Style="width: 140px; margin: 0 5px 6px 100%; border: 1px solid lightblue;" runat="server"></asp:TextBox>
                                                </td>

                                            </tr>

                                            <tr>
                                                <td>المبلغ
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox13" Style="width: 140px; margin: 0 5px 6px 100%; border-radius: 0px; height: 30px; border: 1px solid lightblue;" runat="server"></asp:TextBox>
                                                </td>

                                            </tr>
                                        </table>
                                    </form>
                                </fieldset>

                                <fieldset style="border: 1px solid; margin: 2% 77% 0 0; padding: 10px; background-color: aliceblue; width: 223px;">
                                    <legend>اعمار الديون </legend>
                                    <form>
                                        <table>
                                            <tr>
                                                <td style="display: inline;">اقل من 30 </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox17" Style="width: 90px; margin: 0 25px 6px 100%; border-radius: 0px; height: 30px; border: 1px solid lightblue;" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="display: inline;">اقل من 60
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox18" Style="width: 90px; margin: 0 25px 6px 100%; border-radius: 0px; height: 30px; border: 1px solid lightblue;" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="display: inline;">اقل من 90
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox19" Style="width: 90px; margin: 0 25px 6px 100%; border-radius: 0px; height: 30px; border: 1px solid lightblue;" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="display: inline;">اقل من 120
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox20" Style="width: 90px; margin: 0 25px 6px 100%; border-radius: 0px; height: 30px; border: 1px solid lightblue;" runat="server"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="display: inline;">اكثر من 120
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox21" Style="width: 90px; margin: 0 25px 6px 100%; border-radius: 0px; height: 30px; border: 1px solid lightblue;" runat="server"></asp:TextBox>
                                                </td>



                                            </tr>
                                        </table>
                                    </form>
                                </fieldset>
                            </div>
                            <div>
                            </div>
                        </div>
                        <!-- /.box-body -->
                    </div>
                    <!-- /.box -->


                    <!-- /.box -->
                </div>
                <!-- /.col -->
            </div>
            <div id="menu1" class="tab-pane fade">

                <%--<div class="container-fluid">--%>
                <div class="row" style="margin: 47px -95px 0 0; font-size: 16px;">
                    <div class="col-xs-6 col-sm-3">
                        المسئول
                      <br />
                        <asp:TextBox ID="TextBox22" Style="width: 250px; margin: 10% 0 0 -37%; border-radius: 0px; height: 30px; border: 1px solid lightblue;" runat="server"></asp:TextBox>
                    </div>

                    <div class="col-xs-6 col-sm-3">
                        الوظيفه
                            <br />
                        <asp:TextBox ID="TextBox23" Style="width: 230px; margin: 9% -51% 0 0; position: absolute; border-radius: 0px; height: 30px; border: 1px solid lightblue;" runat="server"></asp:TextBox>
                    </div>

                    <div class="col-xs-6 col-sm-3">
                        بريد الكترونى
                            <br />
                        <asp:TextBox ID="TextBox24" Style="width: 220px; margin: 9% -53% 0 -24%; position: absolute; border-radius: 0px; height: 30px; border: 1px solid lightblue;" runat="server"></asp:TextBox>
                    </div>

                    <div class="col-xs-6 col-sm-3" style="margin: 0 -5% 0 0">
                        موبيل
                            <br />
                        <asp:TextBox ID="TextBox25" Style="width: 175px; margin: 10% 0 0 -24%; border-radius: 0px; height: 30px; border: 1px solid lightblue;" runat="server"></asp:TextBox>
                    </div>


                </div>


                <div class="row" style="margin: 47px -95px 0 0; font-size: 16px;">
                    <div class="col-xs-6 col-sm-3">
                        <asp:TextBox ID="TextBox30" Style="width: 250px; margin: -10% -155px 0 0; position: absolute; border-radius: 0px; height: 30px; border: 1px solid lightblue;" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-xs-6 col-sm-3">
                        <asp:TextBox ID="TextBox37" Style="width: 230px; margin: -10% -51% 0 0; position: absolute; border-radius: 0px; height: 30px; border: 1px solid lightblue;" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-xs-6 col-sm-3">
                        <asp:TextBox ID="TextBox41" Style="width: 220px; margin: -10% -53% 0 -24%; position: absolute; border-radius: 0px; height: 30px; border: 1px solid lightblue;" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-xs-6 col-sm-3">
                        <asp:TextBox ID="TextBox45" Style="width: 175px; margin: -10% -59.6% 0 -24%; position: absolute; border-radius: 0px; height: 30px; border: 1px solid lightblue;" runat="server"></asp:TextBox>
                    </div>
                </div>



                <div class="row" style="margin: 47px -95px 0 0; font-size: 16px;">
                    <div class="col-xs-6 col-sm-3">
                        <asp:TextBox ID="TextBox31" Style="width: 250px; margin: -10% -155px 0 0; position: absolute; border-radius: 0px; height: 30px; border: 1px solid lightblue;" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-xs-6 col-sm-3">
                        <asp:TextBox ID="TextBox38" Style="width: 230px; margin: -10% -51% 0 0; position: absolute; border-radius: 0px; height: 30px; border: 1px solid lightblue;" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-xs-6 col-sm-3">
                        <asp:TextBox ID="TextBox42" Style="width: 220px; margin: -10% -53% 0 -24%; position: absolute; border-radius: 0px; height: 30px; border: 1px solid lightblue;" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-xs-6 col-sm-3">
                        <asp:TextBox ID="TextBox46" Style="width: 175px; margin: -10% -59.6% 0 -24%; position: absolute; border-radius: 0px; height: 30px; border: 1px solid lightblue;" runat="server"></asp:TextBox>
                    </div>
                </div>


                <div class="row" style="margin: 47px -95px 0 0; font-size: 16px;">
                    <div class="col-xs-6 col-sm-3">
                        <asp:TextBox ID="TextBox35" Style="width: 250px; margin: -10% -155px 0 0; position: absolute; border-radius: 0px; height: 30px; border: 1px solid lightblue;" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-xs-6 col-sm-3">
                        <asp:TextBox ID="TextBox39" Style="width: 230px; margin: -10% -51% 0 0; position: absolute; border-radius: 0px; height: 30px; border: 1px solid lightblue;" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-xs-6 col-sm-3">
                        <asp:TextBox ID="TextBox43" Style="width: 220px; margin: -10% -53% 0 -24%; position: absolute; border-radius: 0px; height: 30px; border: 1px solid lightblue;" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-xs-6 col-sm-3">
                        <asp:TextBox ID="TextBox47" Style="width: 175px; margin: -10% -59.6% 0 -27%; position: absolute; border-radius: 0px; height: 30px; border: 1px solid lightblue;" runat="server"></asp:TextBox>
                    </div>
                </div>

                <div class="row" style="margin: 47px -95px 0 0; font-size: 16px;">
                    <div class="col-xs-6 col-sm-3">
                        <asp:TextBox ID="TextBox36" Style="width: 250px; margin: -10% -155px 0 0; position: absolute; border-radius: 0px; height: 30px; border: 1px solid lightblue;" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-xs-6 col-sm-3">
                        <asp:TextBox ID="TextBox40" Style="width: 230px; margin: -10% -51% 0 0; position: absolute; border-radius: 0px; height: 30px; border: 1px solid lightblue;" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-xs-6 col-sm-3">
                        <asp:TextBox ID="TextBox44" Style="width: 220px; margin: -10% -53% 0 -24%; position: absolute; border-radius: 0px; height: 30px; border: 1px solid lightblue;" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-xs-6 col-sm-3">
                        <asp:TextBox ID="TextBox48" Style="width: 175px; margin: -10% -59.6% 0 -24%; position: absolute; border-radius: 0px; height: 30px; border: 1px solid lightblue;" runat="server"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div id="menu2" class="tab-pane fade">
                <h3>Menu 2</h3>
                <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
            </div>

        </div>
        <!-- /.row -->


    </div>
</asp:Content>
