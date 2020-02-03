<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="mts_custmr.aspx.cs" Inherits="mid.mts_custmr" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <section class="content-header">

        <div class="modal fade" tabindex="-1" id="loginModal"
            data-keyboard="false" data-backdrop="static">
            <div class="modal-dialog" style="width: 55%">
                <div class="modal-content" style="direction: ltr;">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" style="margin-right: 75%;">
                            &times;
                        </button>
                        <h4 class="modal-title">حذف سجل</h4>

                    </div>
                    <div class="modal-body">

                        <h4 style="margin-left: 59%;">هل انت متأكد من الحذف؟</h4>

                    </div>
                    <div style="margin-right: 74%">
                        <asp:Button ID="Button4" runat="server" type="submit" class="btn btn-primary" Text="حذف" OnClick="Button4_Click"></asp:Button>
                        <button type="button" class="btn btn-primary"
                            data-dismiss="modal">
                            إغلاق</button>
                    </div>
                </div>
            </div>
        </div>

        <div style="margin-top: -35px" class="col-md-12 right">
            <h1 style="text-align: right"><small>لوحة التحكم < البيانات الاساسيه للعملاء </small></h1>
        </div>

        <br />
        <br />


        <br />
        <br />
        <div style="margin: 0px 0 0% 75%">




            <div class="row">
                <div class="col-md-3">
                    <asp:TextBox ID="TextBox17" runat="server" CssClass="form-control" Style="width: 45px; border-radius: unset; margin: -7px 0 0 -131px;"></asp:TextBox>

                </div>
                <div>
                    <asp:Label ID="Label17" runat="server" Text="الرقم" Style="margin: -2px 0 2px -133px; position: absolute;"></asp:Label>
                </div>
                <div class="col-md-5 ">
                    <asp:DropDownList ID="DropDownList4" runat="server" CssClass="form-control" Style="width: 160px; margin-left: -119px; margin-right: 0; margin-bottom: 0; margin: -8px 0 0 -112px;" AutoPostBack="true" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged">
                    </asp:DropDownList>

                </div>
                <div>
                    <asp:Label ID="Label1" runat="server" Text="الشركة" Style="margin: 0px 0px 0px -46px;"></asp:Label></div>

            </div>


        </div>

        <div style="margin: -22px 0px 19px 398px;">
            <asp:Label ID="Label5" runat="server" Text="الفرع" Style="position: absolute; margin: -12px 29px 2px -465px"></asp:Label>
            <asp:DropDownList ID="DropDownList5" runat="server" Style="width: 160px; position: absolute; margin: -9px 554px 0 -633px">
            </asp:DropDownList>
            <asp:Label ID="Label6" runat="server" Text="الرقم" Style="position: absolute; margin: -9px 0 0 -699px;"> </asp:Label>
            <asp:TextBox ID="TextBox26" runat="server" Style="width: 45px; border-radius: unset; position: absolute; margin: -11px 0 0 -756px;"></asp:TextBox>

        </div>
        <br />
        <br />

        <div>

            <div class="content" style="border-style: hidden;">

                <asp:Label ID="Label3" runat="server" Text="اسم العميل" Style="margin: 15px -1090px; position: absolute;"></asp:Label>

                <asp:TextBox Style="position: absolute; margin: 13px -1024px; border-radius: unset; height: 25px; width: 135px;" ID="TextBox28" runat="server"></asp:TextBox>

                <asp:Button ID="Button5" Style="padding: 3px; position: absolute; margin: 1% -66%;"
                    class="btn btn-primary" runat="server" Text="بحث" OnClick="Button5_Click" />

                <!-- Nav pills -->
                <ul class="nav nav-pills" role="tablist" style="margin: 22px 250px;">
                    <li class="nav-item">
                        <a class="nav-link active" data-toggle="pill" href="#basicinfo" style="font-size: 18px; margin: -1px -161px -74px 327px;">البيانات الاساسية</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-toggle="pill" href="#respppl" style="font-size: 18px; margin: -1px -240px 5px 192px;">الاشخاص المسؤلين</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" data-toggle="pill" href="#info" style="font-size: 18px; margin: -1px 0 0 -3px;">حركة البيانات</a>
                    </li>
                </ul>
                <div class="tab-content">
                    <div id="basicinfo" class="container tab-pane active">


                        <%--   <asp:Button ID="Button5" runat="server" Text="اضافة عميل جديد" OnClick="Button5_Click" Style="margin: -4% -59%; position: absolute; border-radius: unset; padding: 5px; width:115px; background: #c6d3e6; font-size: 15px;" />--%>

                        <asp:Button ID="Button2" runat="server" Text="إضافة" OnClick="Button2_Click" Style="margin: -265px 0px -67px 178px; background: dodgerblue; font-size: 15px;"
                            class="btn btn-success" />

                        <asp:HyperLink ID="HyperLink1" runat="server" class="btn btn-primary" data-target="#loginModal" data-toggle="modal" href="#" Style="background-color: darkred; margin: -106px -220px 0px -136px; position: absolute; width: 57px; padding: 7px; border color: unset;">حذف</asp:HyperLink>

                        <asp:Button ID="Button1" runat="server" Text="تعديل" OnClick="Button1_Click" Style="position: absolute; margin: -105px -151px 0px -196px; padding: 6px;" />

                        <asp:Button ID="Button3" runat="server" Text="طباعة" class="btn btn-success" Style="margin: -196px -76px 0px -264px; background: lightseagreen; font-size: 15px; padding: 6px;"
                            OnClick="Button3_Click" />

                        <div>


                            <asp:Label ID="Label2" runat="server" Text="نوع الحساب" Style="margin: 8px -472px; position: absolute;"></asp:Label>

                            <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" RepeatLayout="Table" Style="position: absolute; margin: -10px 682px;">
                                <asp:ListItem Value="0">رئيسي</asp:ListItem>
                                <asp:ListItem Value="1">فرعي</asp:ListItem>
                            </asp:RadioButtonList>

                        </div>

                        <div class="row">
                            <div class="col-xs-12">
                                <div style="height: 875px;">

                                    <!-- /.box-header -->
                                    <div style="margin-right: 35px">
                                        <div style="margin: 23px 86px;">
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label22" runat="server" Text="رقم المستوى" Style="position: absolute; margin: -75px -13px -10px 501px;"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox1" runat="server" Style="width: 45px; margin: 19px 80px; position: absolute;"></asp:TextBox>
                                                </td>
                                            </tr>

                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label4" runat="server" Text="رقم العميل"></asp:Label></td>
                                                <td>
                                                    <asp:TextBox ID="TextBox14" runat="server" Style="width: 71px; margin: 3px -179px 0px 0px; padding: 5px;"></asp:TextBox>
                                                </td>

                                                <td style="height: 24px">
                                                    <asp:Label ID="Label7" runat="server" Text="الدوله"></asp:Label></td>
                                                <td>
                                                    <asp:DropDownList ID="DropDownList3" Style="width: 110px; border: 1px solid lightblue;"
                                                        runat="server">
                                                    </asp:DropDownList></td>
                                            </tr>

                                            <br />
                                            <br />


                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label8" runat="server" Text="اسم العميلAR"></asp:Label></td>
                                                <td>
                                                    <asp:TextBox ID="TextBox15" runat="server" Style="width: 250px;"></asp:TextBox></td>


                                                <td>
                                                    <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>فئة العميل</td>
                                                <td>
                                                    <asp:DropDownList ID="DropDownList2" runat="server" Style="width: 110px;">
                                                    </asp:DropDownList></td>
                                            </tr>
                                            <tr>
                                                <td>EN   
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox2" runat="server" Style="width: 250px;"></asp:TextBox></td>
                                                <td>
                                                    <asp:Label ID="Label10" runat="server" Text="العمله"></asp:Label></td>
                                                <td>

                                                    <asp:DropDownList ID="DropDownList1" runat="server" Style="width: 110px;"></asp:DropDownList>

                                                </td>

                                            </tr>

                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label11" runat="server" Text="التليفون"></asp:Label></td>
                                                <td>
                                                    <asp:TextBox ID="TextBox6" runat="server" Style="width: 115px; margin: 0px -134px 0px 0px;"></asp:TextBox></td>

                                                <td>
                                                    <asp:Label ID="Label12" runat="server" Text="حدالائتمان"></asp:Label></td>
                                                <td>
                                                    <asp:TextBox ID="TextBox9" runat="server" Style="width: 110px;"></asp:TextBox></td>
                                            </tr>
                                            <tr>
                                                <td style="position: absolute; margin: -45px 147px;">
                                                    <asp:Label ID="Label13" runat="server" Text="رئيسى"></asp:Label></td>
                                                <td>
                                                    <asp:TextBox ID="TextBox7" runat="server" Style="width: 100px; margin: -50px 38px; position: absolute;"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="margin: 25px 139px; position: absolute;">رئيسي </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox27" runat="server" Style="width: 110px; margin: 21px 34px 0px 0px; position: absolute;"></asp:TextBox>
                                                </td>

                                            </tr>
                                            <tr>

                                                <td>
                                                    <asp:Label ID="Label14" runat="server" Text="الموبايل"></asp:Label></td>
                                                <td>
                                                    <asp:TextBox ID="TextBox8" runat="server" Style="width: 110px; margin: -5px -135px 0px 0px;"></asp:TextBox></td>

                                                <td>
                                                    <asp:Label ID="Label15" runat="server" Text="رقم الحساب"></asp:Label></td>
                                                <td>
                                                    <asp:TextBox ID="TextBox13" runat="server" Style="width: 110px;"></asp:TextBox></td>
                                            </tr>

                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label16" runat="server" Text="مدة السداد"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="TextBox10" runat="server" Style="width: 110px; margin: 0px -134px 0px 0px;"></asp:TextBox></td>
                                                <td>
                                                    <asp:Label ID="Label18" runat="server" Text="اول المده مدين"></asp:Label></td>
                                                <td>
                                                    <asp:TextBox ID="TextBox12" runat="server" Style="width: 110px;"></asp:TextBox></td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label19" runat="server" Text="بريد الكترونى"></asp:Label></td>
                                                <td>
                                                    <asp:TextBox ID="TextBox5" runat="server" Style="width: 250px;"></asp:TextBox></td>
                                                <td>
                                                    <asp:Label ID="Label20" runat="server" Text="دائن"></asp:Label></td>
                                                <td>
                                                    <asp:TextBox ID="TextBox11" runat="server" Style="width: 110px;"></asp:TextBox></td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label21" runat="server" Text="العنوان"></asp:Label></td>
                                                <td>
                                                    <asp:TextBox ID="TextBox16" runat="server" Style="width: 250px;"></asp:TextBox>

                                                </td>
                                            </tr>

                                            </tbody>
                                            </table>
                                        </div>
                                    </div>

                                </div>

                                <div>
                                    <asp:TreeView ID="TreeView1" runat="server" OnTreeNodePopulate="TreeView1_TreeNodePopulate" Font-Bold="False" Font-Size="Medium" OnSelectedNodeChanged="TreeView1_SelectedNodeChanged" Style="font-size: Medium; font-weight: normal; position: absolute; border: 1px solid #5423B5; margin: -1000px 90%; min-height: 1460px; width: 14%; direction: rtl;" ImageSet="BulletedList4" ShowExpandCollapse="False">
                                        <HoverNodeStyle Font-Underline="True" ForeColor="#5555DD" />
                                        <NodeStyle Font-Names="Tahoma" Font-Size="10pt" ForeColor="Black" HorizontalPadding="5px" NodeSpacing="0px" VerticalPadding="0px" />
                                        <ParentNodeStyle Font-Bold="False" />
                                        <SelectedNodeStyle Font-Underline="True" ForeColor="#5555DD" HorizontalPadding="0px" VerticalPadding="0px" />
                                    </asp:TreeView>
                                </div>

                            </div>
                            <!-- /.box-body -->
                        </div>
                        <!-- /.box -->

                        <!-- /.box -->
                    </div>
                    <!-- /.col -->



                    <div id="respppl" class="container tab-pane fade">


                        <div class="row" style="margin: 13px 304px; font-size: 16px;">
                            <div class="col-xs-6 col-sm-3" style="margin: 0px -289px 0px 158px;">
                                المسئول
                      <br />
                                <asp:TextBox ID="TextBox22" Style="width: 250px; margin: 10% 0 0 -37%; border-radius: 0px; height: 30px; border: 1px solid lightblue;" runat="server"></asp:TextBox>
                            </div>

                            <div class="col-xs-6 col-sm-3">
                                الوظيفه
                            <br />
                                <asp:TextBox ID="TextBox23" Style="width: 230px; margin: 9% -51% 0 0; position: absolute; border-radius: 0px; height: 30px; border: 1px solid lightblue;" runat="server"></asp:TextBox>
                            </div>

                            <div class="col-xs-6 col-sm-3" style="margin: -67px 346px;">
                                بريدالكترونى
                            <br />
                                <asp:TextBox ID="TextBox24" Style="width: 220px; margin: 15% -121% 0 -25%; position: absolute; border-radius: 0px; height: 30px; border: 1px solid lightblue;" runat="server"></asp:TextBox>
                            </div>

                            <div class="col-xs-6 col-sm-3" style="margin: -59px 122% -66px 0px;">
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

                        <div style="margin: 25px 387px;">
                            ملاحظات 

                         <asp:TextBox ID="TextBox60" runat="server" Style="margin: 6px 6px; border-radius: 0px; width: 510px; padding: 10px;"></asp:TextBox>
                        </div>

                    </div>

                    <div id="info" class="container tab-pane fade">
                        <div class="row" style="width: 1px; margin: 13px 304px; font-size: 16px;">
                            <div class="col-xs-6 col-sm-3">

                                <table style="margin: -11px -258px; position: absolute; font-size: 13px;">

                                    <tr>

                                        <td style="position: absolute; margin: -1% -60%;">رقم العميل</td>
                                        <td>
                                            <asp:TextBox ID="TextBox51" runat="server" Style="position: absolute; margin: 0% -117%; width: 60px; border-radius: 0px;"></asp:TextBox>
                                        </td>

                                        <td style="margin: 0% -67%; position: absolute;">اسم العميل </td>
                                        <td>
                                            <asp:TextBox ID="TextBox50" runat="server" Style="position: absolute; margin: -1% -23%; border-radius: 0px;"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="margin: 36px 80px; position: absolute;">EN</td>
                                        <td>
                                            <asp:TextBox ID="TextBox52" runat="server" Style="margin: 25% 78% 12% 0%; border-radius: 0px;"></asp:TextBox>
                                        </td>
                                        <td style="position: absolute; margin: -4% 115%;">أ.م دائن</td>
                                        <td>
                                            <asp:TextBox ID="TextBox53" runat="server" Style="margin: -44px 217px 0px 0px; position: absolute; border-radius: 0px;"></asp:TextBox>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td style="position: absolute; margin: -32% 211%;">مدين</td>
                                        <td>
                                            <asp:TextBox ID="TextBox54" runat="server" Style="border-radius: 0px; position: absolute; margin: -51px 220px"></asp:TextBox>
                                        </td>
                                    </tr>

                                </table>

                                <fieldset style="border: 1px solid; margin: -44% 1456%; padding: 10px; width: 223px; background-color: aliceblue; position: absolute;">
                                    <legend>اخر فاتورة مبيعات</legend>

                                    <table>
                                        <tr>
                                            <td>رقم فاتوره
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox3" Style="width: 140px; margin: 0 5px 6px 100%; border: 1px solid lightblue;" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>

                                            <td>تاريخ الفاتوره
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox4" Style="width: 140px; margin: 0 5px 6px 100%; border: 1px solid lightblue;" runat="server"></asp:TextBox>
                                            </td>

                                        </tr>
                                        <tr>
                                            <td>مبلغ الفاتوره
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox18" Style="width: 140px; margin: 0 5px 6px 100%; border: 1px solid lightblue; border-radius: 0px;" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                    </table>
                                </fieldset>
                                <fieldset style="border: 1px solid; margin: 564% 1450% 0 0; padding: 10px; background-color: aliceblue; width: 223px; position: absolute;">
                                    <legend>اخر سند قبض</legend>
                                    <table>
                                        <tr>
                                            <td>رقم سند 
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox19" Style="width: 140px; margin: 0 5px 6px 100%; border: 1px solid lightblue;" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>


                                        <tr>
                                            <td>تاريخ السند
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox20" Style="width: 140px; margin: 0 5px 6px 100%; border: 1px solid lightblue;" runat="server"></asp:TextBox>
                                            </td>

                                        </tr>

                                        <tr>
                                            <td>المبلغ
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox21" Style="width: 140px; margin: 0 5px 6px 100%; border-radius: 0px; height: 30px; border: 1px solid lightblue;" runat="server"></asp:TextBox>
                                            </td>

                                        </tr>
                                    </table>
                                </fieldset>


                                <div>
                                    <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped" BackColor="White" Style="font-size: 12px; margin: 97px 335px; width: 660px; text-align: center; border-color: #5bc0de;"></asp:GridView>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
