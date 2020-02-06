<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="mts_suplier_show.aspx.cs" Inherits="mid.mts_suplier_show" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="content-wrapper">
        <ol class="breadcrumb" style="width: 1050px;">
            <h1><small>البيانات الأساسية < عرض البيانات الأساسية للموردين </small></h1>
        </ol>

        <ul class="nav nav-tabs" style="background-color: #E9ECEF;">
            <li class="active"><a data-toggle="tab" href="#home" style="font-size: 20px; text-decoration: none;">البيانات الاساسية</a></li>
            <li><a data-toggle="tab" href="#menu1" style="font-size: 20px; padding: 130px; text-decoration: none;">الاشخاص المسؤلين</a></li>
            <li><a data-toggle="tab" href="#menu2" style="font-size: 20px; text-decoration: none;">الحركة</a></li>
        </ul>


        <div class="tab-content">
            <div id="home" class="tab-pane fade in active ">
                <%--<div class="row">--%>
                <div class="col-xs-12">
                    <div class="box" style="height: 875px;">
                        <div class="box-header">
                            <h3 class="box-title"></h3>
                        </div>
                        <!-- /.box-header -->
                        <div style="margin-right: 35px">



                            <div class="box-body">
                                <table id="example2" class="table table-borderless">

                                    <tbody>

                                        <tr>


                                            <td>اسم الشركه</td>
                                            <td>

                                                <asp:DropDownList ID="DropDownList6" runat="server" Style="height: 30px; width: 290px; margin: 0 -40px 0px 100%;"></asp:DropDownList>
                                            </td>

                                            <td>
                                                <asp:Label ID="Label1" runat="server" Text="فعال" Style="margin: 0 -50% 0 0"></asp:Label></td>
                                            <td>
                                                <asp:CheckBox ID="CheckBox1" runat="server" Style="margin: 0 -155% 0 0;" /></td>
                                        </tr>
                                        <tr>

                                            <td>اسم الفرع</td>
                                            <td>

                                                <asp:DropDownList ID="DropDownList5" runat="server" Style="height: 30px; width: 290px; margin: 0 -40px 0px 100%;"></asp:DropDownList>
                                            </td>

                                            <td>
                                                <asp:Label ID="Label2" runat="server" Text="فئة المورد" Style="margin: 0 -50% 0 0"></asp:Label></td>
                                            <td>
                                                <asp:DropDownList ID="DropDownList2" runat="server" Style="width: 160px; margin: 0 -100% 0 0"></asp:DropDownList></td>
                                        </tr>
                                        <tr>
                                            <td>الرقم</td>
                                            <td>
                                                <asp:TextBox ID="TextBox14" runat="server" Style="width: 105px; height: 30px; text-align: center; margin: 0 -91% 0 0;"></asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label3" runat="server" Text="الدوله" Style="margin: 0 -50% 0 0"></asp:Label></td>
                                            <td>
                                                <asp:DropDownList ID="DropDownList3" Style="width: 160px; margin: 0 -100% 0 0; height: 30px"
                                                    runat="server">
                                                </asp:DropDownList></td>
                                        </tr>
                                        <tr>
                                            <td>اسم المورد AR</td>
                                            <td>
                                                <asp:TextBox ID="TextBox15" runat="server" Style="width: 290px; height: 30px; margin: 0 -40px 0px 100%;"></asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label4" runat="server" Text="العمله" Style="margin: 0 -50% 0 0"></asp:Label></td>
                                            <td>
                                                <asp:DropDownList ID="DropDownList4" runat="server" Style="width: 160px; margin: 0 -100% 0 0; height: 30px"></asp:DropDownList></td>
                                        </tr>

                                        <tr>
                                            <td>EN</td>
                                            <td>
                                                <asp:TextBox ID="TextBox1" runat="server" Style="width: 290px; height: 30px; margin: 0 -40px 0px 100%;"></asp:TextBox></td>
                                        </tr>

                                        <tr>
                                            <td>صندوق البريد </td>
                                            <td>
                                                <asp:TextBox ID="TextBox3" runat="server" Style="width: 100px; height: 30px; margin: 0 -40px 0px 100%;"></asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label10" runat="server" Text="الرمز البريدي" Style="margin: 0 -320% 0 0"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox19" runat="server" Style="width: 100px; margin: 0 -235% 0 0; height: 30px;"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>

                                            <td>العنوان</td>
                                            <td>
                                                <asp:TextBox ID="TextBox16" runat="server" Style="height: 30px; width: 290px; margin: 0 -40px 0px 100%;"></asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label5" runat="server" Text="تليفون1" Style="margin: 0 -50% 0 0"></asp:Label></td>
                                            <td>
                                                <asp:TextBox ID="TextBox6" runat="server" Style="width: 160px; margin: 0 -100% 0 0"></asp:TextBox></td>



                                        </tr>

                                        <tr>

                                            <td>اخرى</td>
                                            <td>
                                                <asp:TextBox ID="TextBox4" runat="server" Style="width: 290px; margin: 0 -40px 0px 100%;"></asp:TextBox></td>

                                            <td>
                                                <asp:Label ID="Label6" runat="server" Text="تليفون2" Style="margin: 0 -50% 0 0"></asp:Label></td>
                                            <td>
                                                <asp:TextBox ID="TextBox7" runat="server" Style="width: 160px; margin: 0 -100% 0 0"></asp:TextBox></td>
                                        </tr>
                                        <tr>

                                            <td>بريد الكترونى</td>
                                            <td>
                                                <asp:TextBox ID="TextBox5" runat="server" Style="width: 290px; margin: 0 -40px 0px 100%;"></asp:TextBox></td>
                                            <td>
                                                <asp:Label ID="Label7" runat="server" Text="الموبايل" Style="margin: 0 -50% 0 0"></asp:Label></td>
                                            <td>
                                                <asp:TextBox ID="TextBox8" runat="server" Style="width: 160px; margin: 0 -100% 0 0"></asp:TextBox></td>

                                        </tr>
                                        <tr>
                                            <td>رقم الحساب</td>
                                            <td>
                                                <asp:TextBox ID="TextBox13" runat="server" Style="height: 30px; width: 290px; margin: 0 -40px 0px 100%;"></asp:TextBox></td>
                                            <td>
                                                <asp:Label ID="Label8" runat="server" Text="فاكس" Style="margin: 0 -50% 0 0"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox17" runat="server" Style="width: 160px; margin: 0 -100% 0 0; height: 30px"></asp:TextBox></td>
                                        </tr>
                                        <tr>
                                            <td>اول مده مدين</td>
                                            <td>
                                                <asp:TextBox ID="TextBox11" runat="server" Style="margin: 0 -40px 0px 100%; width: 290px"></asp:TextBox></td>
                                            <td>
                                                <asp:Label ID="Label9" runat="server" Text="الرقم الضريبي" Style="margin: 0 -50% 0 0"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox18" runat="server" Style="width: 160px; margin: 0 -100% 0 0; height: 30px"></asp:TextBox></td>
                                        </tr>
                                        <tr>

                                            <td>اول مدة دائن</td>
                                            <td>
                                                <asp:TextBox ID="TextBox12" runat="server" Style="margin: 0 -40px 0px 100%; width: 290px"></asp:TextBox></td>
                                        </tr>
                                        <tr>
                                            <td>يوم</td>
                                            <td>
                                                <asp:TextBox ID="TextBox10" runat="server" Style="margin: 0 -40px 0px 100%; width: 290px"></asp:TextBox></td>
                                        </tr>
                                        <tr>
                                            <td>حد الائتمان مبلغ</td>
                                            <td>
                                                <asp:TextBox ID="TextBox9" runat="server" Style="margin: 0 -40px 0px 100%; width: 290px"></asp:TextBox></td>
                                        </tr>

                                        <tr>
                                            <td>ملاحظات</td>
                                            <td>
                                                <textarea id="TextArea1" cols="52" rows="4" style="margin: 0 -40px 0px 100%; width: 290px"></textarea></td>
                                            <td>
                                                <asp:Label ID="Label11" runat="server" Text="المرجع" Style="margin: 0 -50% 0 0"></asp:Label></td>
                                            <td>
                                                <asp:TextBox ID="TextBox2" runat="server" Style="width: 160px; margin: 0 -100% 0 0"></asp:TextBox></td>
                                        </tr>


                                        <tr>
                                            <td>
                                                 <asp:Button ID="Button3" Style="margin: 3px 82% 0 0; background-color: #dc3545; height: 30px; background-color: #dc3545; width: 52px" runat="server" Text="تراجع" OnClick="Button3_Click" />
                                            </td>
                                           
                                        </tr>
                                </table>
                                <fieldset style="border: 1px solid; margin: -75% 77% 0 0; padding: 10px; width: 223px; background-color: aliceblue;">
                                    <legend>اخر فاتورة مشتريات</legend>
                                    <form>
                                        <table>
                                            <tr>
                                                <td>رقم فاتوره
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox20" runat="server" Style="width: 140px; margin: 0 5px 6px 100%; border: 1px solid lightblue; border-radius: 0px; height: 30px;"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>

                                                <td>تاريخ الفاتوره
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox21" runat="server" Style="width: 140px; margin: 0 5px 6px 100%; border: 1px solid lightblue; border-radius: 0px; height: 30px;"></asp:TextBox>
                                                </td>



                                            </tr>
                                            <tr>
                                                <td>مبلغ الفاتوره
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox26" runat="server" Style="width: 140px; margin: 0 5px 6px 100%; border: 1px solid lightblue; border-radius: 0px; height: 30px;"></asp:TextBox>
                                                </td>
                                            </tr>
                                        </table>
                                    </form>
                                </fieldset>
                                <fieldset style="border: 1px solid; margin: 3% 77% 0 0; padding: 10px; background-color: aliceblue; width: 223px;">
                                    <legend>اخر سند صرف</legend>
                                    <form>
                                        <table>
                                            <tr>
                                                <td>رقم سند 
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox27" runat="server" Style="width: 140px; margin: 0 5px 6px 100%; border: 1px solid lightblue; border-radius: 0px; height: 30px;"></asp:TextBox>
                                                </td>
                                            </tr>


                                            <tr>
                                                <td>تاريخ السند
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox28" runat="server" Style="width: 140px; margin: 0 5px 6px 100%; border: 1px solid lightblue; border-radius: 0px; height: 30px;"></asp:TextBox>
                                                </td>

                                            </tr>

                                            <tr>
                                                <td>المبلغ
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox29" runat="server" Style="width: 140px; margin: 0 5px 6px 100%; border: 1px solid lightblue; border-radius: 0px; height: 30px;"></asp:TextBox>
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
                                                    <asp:TextBox ID="TextBox66" runat="server" Style="width: 90px; margin: 0 25px 6px 100%; border-radius: 0px; height: 30px; border: 1px solid lightblue;"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="display: inline;">اقل من 60
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox67" runat="server" Style="width: 90px; margin: 0 25px 6px 100%; border-radius: 0px; height: 30px; border: 1px solid lightblue;"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="display: inline;">اقل من 90
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox68" runat="server" Style="width: 90px; margin: 0 25px 6px 100%; border-radius: 0px; height: 30px; border: 1px solid lightblue;"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="display: inline;">اقل من 120
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox69" runat="server" Style="width: 90px; margin: 0 25px 6px 100%; border-radius: 0px; height: 30px; border: 1px solid lightblue;"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="display: inline;">اكثر من 120
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox70" runat="server" Style="width: 90px; margin: 0 25px 6px 100%; border-radius: 0px; height: 30px; border: 1px solid lightblue;"></asp:TextBox>
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
                        <asp:TextBox ID="TextBox32" Style="width: 250px; margin: 10% 0 0 -37%; border-radius: 0px; height: 30px; border: 1px solid lightblue;" runat="server"></asp:TextBox>
                    </div>

                    <div class="col-xs-6 col-sm-3">
                        الوظيفه
                            <br />
                        <asp:TextBox ID="TextBox33" Style="width: 230px; margin: 9% -51% 0 0; position: absolute; border-radius: 0px; height: 30px; border: 1px solid lightblue;" runat="server"></asp:TextBox>
                    </div>

                    <div class="col-xs-6 col-sm-3">
                        بريد الكترونى
                            <br />
                        <asp:TextBox ID="TextBox34" Style="width: 220px; margin: 9% -53% 0 -24%; position: absolute; border-radius: 0px; height: 30px; border: 1px solid lightblue;" runat="server"></asp:TextBox>
                    </div>

                    <div class="col-xs-6 col-sm-3" style="margin: 0 -5% 0 0">
                        موبيل
                            <br />
                        <asp:TextBox ID="TextBox49" Style="width: 175px; margin: 10% 0 0 -24%; border-radius: 0px; height: 30px; border: 1px solid lightblue;" runat="server"></asp:TextBox>
                    </div>


                </div>


                <div class="row" style="margin: 47px -95px 0 0; font-size: 16px;">
                    <div class="col-xs-6 col-sm-3">
                        <asp:TextBox ID="TextBox50"  Style="width: 250px; margin: -10% -155px 0 0; position: absolute; border-radius: 0px; height: 30px; border: 1px solid lightblue;" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-xs-6 col-sm-3">
                        <asp:TextBox ID="TextBox51" Style="width: 230px; margin: -10% -51% 0 0; position: absolute; border-radius: 0px; height: 30px; border: 1px solid lightblue;" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-xs-6 col-sm-3">
                        <asp:TextBox ID="TextBox52" Style="width: 220px; margin: -10% -53% 0 -24%; position: absolute; border-radius: 0px; height: 30px; border: 1px solid lightblue;" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-xs-6 col-sm-3">
                        <asp:TextBox ID="TextBox53" Style="width: 175px; margin: -10% -59.6% 0 -24%; position: absolute; border-radius: 0px; height: 30px; border: 1px solid lightblue;" runat="server"></asp:TextBox>
                    </div>
                </div>



                <div class="row" style="margin: 47px -95px 0 0; font-size: 16px;">
                    <div class="col-xs-6 col-sm-3">
                        <asp:TextBox ID="TextBox54" Style="width: 250px; margin: -10% -155px 0 0; position: absolute; border-radius: 0px; height: 30px; border: 1px solid lightblue;" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-xs-6 col-sm-3">
                        <asp:TextBox ID="TextBox55" Style="width: 230px; margin: -10% -51% 0 0; position: absolute; border-radius: 0px; height: 30px; border: 1px solid lightblue;" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-xs-6 col-sm-3">
                        <asp:TextBox ID="TextBox56" Style="width: 220px; margin: -10% -53% 0 -24%; position: absolute; border-radius: 0px; height: 30px; border: 1px solid lightblue;" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-xs-6 col-sm-3">
                        <asp:TextBox ID="TextBox57" Style="width: 175px; margin: -10% -59.6% 0 -24%; position: absolute; border-radius: 0px; height: 30px; border: 1px solid lightblue;" runat="server"></asp:TextBox>
                    </div>
                </div>


                <div class="row" style="margin: 47px -95px 0 0; font-size: 16px;">
                    <div class="col-xs-6 col-sm-3">
                        <asp:TextBox ID="TextBox58" Style="width: 250px; margin: -10% -155px 0 0; position: absolute; border-radius: 0px; height: 30px; border: 1px solid lightblue;" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-xs-6 col-sm-3">
                        <asp:TextBox ID="TextBox59" Style="width: 230px; margin: -10% -51% 0 0; position: absolute; border-radius: 0px; height: 30px; border: 1px solid lightblue;" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-xs-6 col-sm-3">
                        <asp:TextBox ID="TextBox60" Style="width: 220px; margin: -10% -53% 0 -24%; position: absolute; border-radius: 0px; height: 30px; border: 1px solid lightblue;" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-xs-6 col-sm-3">
                        <asp:TextBox ID="TextBox61" Style="width: 175px; margin: -10% -59.6% 0 -27%; position: absolute; border-radius: 0px; height: 30px; border: 1px solid lightblue;" runat="server"></asp:TextBox>
                    </div>
                </div>

                <div class="row" style="margin: 47px -95px 0 0; font-size: 16px;">
                    <div class="col-xs-6 col-sm-3">
                        <asp:TextBox ID="TextBox62" Style="width: 250px; margin: -10% -155px 0 0; position: absolute; border-radius: 0px; height: 30px; border: 1px solid lightblue;" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-xs-6 col-sm-3">
                        <asp:TextBox ID="TextBox63" Style="width: 230px; margin: -10% -51% 0 0; position: absolute; border-radius: 0px; height: 30px; border: 1px solid lightblue;" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-xs-6 col-sm-3">
                        <asp:TextBox ID="TextBox64" Style="width: 220px; margin: -10% -53% 0 -24%; position: absolute; border-radius: 0px; height: 30px; border: 1px solid lightblue;" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-xs-6 col-sm-3">
                        <asp:TextBox ID="TextBox65" Style="width: 175px; margin: -10% -59.6% 0 -24%; position: absolute; border-radius: 0px; height: 30px; border: 1px solid lightblue;" runat="server"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div id="menu2" class="tab-pane fade">
                <h3>Menu 2</h3>
                <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
            </div>
        </div>
    </div>

    <!-- /.row -->

</asp:Content>