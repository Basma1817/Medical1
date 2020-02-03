<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="update_delete_mts_custm.aspx.cs" Inherits="mid.update_delete_mts_custm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="content-wrapper">
        <ol class="breadcrumb" style="width: 1050px;">
            <h1><small>البيانات الاساسيه < تعديل البيانات الاساسيه للعملاء </small></h1>
        </ol>
 <div style="margin: 0px 0 0% 75%">


            <asp:Label ID="Label1" runat="server" Text="الشركة"></asp:Label>

            <asp:DropDownList ID="DropDownList4" runat="server" Style="width: 160px;" AutoPostBack="true" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged">
            </asp:DropDownList>

            <asp:Label ID="Label17" runat="server" Text="الرقم"></asp:Label>
            <asp:TextBox ID="TextBox17" runat="server" Style="width: 45px; border-radius: unset;"></asp:TextBox>

        </div>

        <div style="margin: -22px 0px 19px 398px;">
            <asp:Label ID="Label5" runat="server" Text="الفرع" Style="margin: 11px -611px 0px 10px;"></asp:Label>
            <asp:DropDownList ID="DropDownList5" runat="server" Style="width: 160px;"></asp:DropDownList>
            <asp:Label ID="Label6" runat="server" Text="الرقم"></asp:Label>
            <asp:TextBox ID="TextBox26" runat="server" Style="width: 45px; border-radius: unset;"></asp:TextBox>

        </div>

        <div class="wrapper" id="app" style="float: left; width: 100%; margin-right: 43px;">

            <div class="content" style="border-style: hidden;">


                <!-- Nav pills -->
                <ul class="nav nav-pills" role="tablist" style="margin: 22px 250px;">
                    <li class="nav-item">
                        <a class="nav-link active" data-toggle="pill" href="#basicinfo" style="font-size: 18px;">البيانات الاساسية</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-toggle="pill" href="#respppl" style="font-size: 18px;">الاشخاص المسؤلين</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" data-toggle="pill" href="#info" style="font-size: 18px;">حركة البيانات</a>
                    </li>
                </ul>
                <div class="tab-content">
                    <div id="basicinfo" class="container tab-pane active">

                        
                 <%--   <asp:Button ID="Button5" runat="server" Text="اضافة عميل جديد" OnClick="Button5_Click" Style="margin: -4% -59%; position: absolute; border-radius: unset; padding: 5px; width:115px; background: #c6d3e6; font-size: 15px;" />--%>

                         <div style="margin: -466px 0px 0px -486px;">
                             <asp:Button ID="Button1" Style="position: absolute; margin: 25% -56%; background-color: #dc3545; height: 38px; background-color: #007bff; width:68px" runat="server" Text="حفظ" OnClick="Button1_Click" />

                                            <asp:Button ID="Button2" Style="position: absolute; margin: 25% -50%; height: 38px; background-color: #dc3545;  width:68px" runat="server" Text="تراجع" OnClick="Button2_Click" />

                      

                        <tr>
                            <td>
                                <asp:Label ID="Label2" runat="server" Text="نوع الحساب" Style="margin: 8px -472px; position: absolute;"></asp:Label>
                            </td>
                            <td>
                                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" RepeatLayout="Table" Style="position: absolute; margin: -10px 682px;">
                                    <asp:ListItem Value="0">رئيسي</asp:ListItem>
                                    <asp:ListItem Value="1">فرعي</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                        </tr>

                        <div class="row">
                            <div class="col-xs-12">
                                <div class="box" style="height: 875px;">
                                    <div class="box-header">
                                        <h3 class="box-title"></h3>
                                    </div>
                                    <!-- /.box-header -->
                                    <div style="margin-right: 35px">



                                        <div class="box-body" style="margin: 510px 86px;">
                                            <table id="example2" class="table table-borderless" style="width: 1px; margin: 13px 304px;">
                                                <thead>
                                                </thead>

                                                <tbody>
                                                    <tr>
                                                        <td style="margin: 22px 142px; position: absolute;">رقم المستوى </td>
                                                        <td>
                                                            <asp:TextBox ID="TextBox1" runat="server" Style="width: 45px; margin: 19px 80px; position: absolute;"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>رقم العميل</td>
                                                        <td>
                                                            <asp:TextBox ID="TextBox14" runat="server" Style="width: 71px; margin: 3px -179px 0px 0px; padding: 5px;"></asp:TextBox>
                                                        </td>

                                                        <td style="height: 24px">الدوله</td>
                                                        <td>
                                                            <asp:DropDownList ID="DropDownList3" Style="width: 110px; border: 1px solid lightblue;"
                                                                runat="server">
                                                            </asp:DropDownList></td>
                                                    </tr>
                                                    <tr>
                                                        <td>اسم العميلAR</td>
                                                        <td>
                                                            <asp:TextBox ID="TextBox15" runat="server" Style="width: 250px;"></asp:TextBox></td>


                                                        <td>فئة العميل</td>
                                                        <td>
                                                            <asp:DropDownList ID="DropDownList2" runat="server" Style="width: 110px;">
                                                            </asp:DropDownList></td>
                                                    </tr>
                                                    <tr>
                                                        <td>EN   
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="TextBox2" runat="server" Style="width: 250px;"></asp:TextBox></td>
                                                        <td>العمله</td>
                                                        <td>

                                                            <asp:DropDownList ID="DropDownList1" runat="server" Style="width: 110px;"></asp:DropDownList>

                                                        </td>

                                                    </tr>

                                                    <tr>
                                                        <td>التليفون</td>
                                                        <td>
                                                            <asp:TextBox ID="TextBox6" runat="server" Style="width: 115px; margin: 0px -134px 0px 0px;"></asp:TextBox></td>

                                                        <td>حدالائتمان</td>
                                                        <td>
                                                            <asp:TextBox ID="TextBox9" runat="server" Style="width: 110px;"></asp:TextBox></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="position: absolute; margin: -45px 147px;">رئيسى</td>
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

                                                        <td>الموبايل</td>
                                                        <td>
                                                            <asp:TextBox ID="TextBox8" runat="server" Style="width: 110px; margin: -5px -135px 0px 0px;"></asp:TextBox></td>

                                                        <td>رقم الحساب</td>
                                                        <td>
                                                            <asp:TextBox ID="TextBox13" runat="server" Style="width: 110px;"></asp:TextBox></td>
                                                    </tr>

                                                    <tr>
                                                        <td>مدة السداد </td>
                                                        <td>
                                                            <asp:TextBox ID="TextBox10" runat="server" Style="width: 110px; margin: 0px -134px 0px 0px;"></asp:TextBox></td>
                                                        <td>اول المده مدين</td>
                                                        <td>
                                                            <asp:TextBox ID="TextBox12" runat="server" Style="width: 110px;"></asp:TextBox></td>
                                                    </tr>
                                                    <tr>
                                                        <td>بريد الكترونى</td>
                                                        <td>
                                                            <asp:TextBox ID="TextBox5" runat="server" Style="width: 250px;"></asp:TextBox></td>
                                                        <td>دائن</td>
                                                        <td>
                                                            <asp:TextBox ID="TextBox11" runat="server" Style="width: 110px;"></asp:TextBox></td>
                                                    </tr>
                                                    <tr>
                                                        <td>العنوان</td>
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
                                    <asp:TreeView ID="TreeView1" runat="server" OnTreeNodePopulate="TreeView1_TreeNodePopulate" Font-Bold="False" Font-Size="Medium" OnSelectedNodeChanged="TreeView1_SelectedNodeChanged" ShowLines="True" Style="font-size: Medium; font-weight: normal; position: absolute; border: 1px solid #5423B5; margin-right: -8px; margin-top: -923px; min-height: 1460px; width: 33%;">
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

                                        <td style="position: absolute;margin: -1% -60%;">رقم العميل</td>
                                        <td>
                                            <asp:TextBox ID="TextBox51" runat="server" Style="position: absolute; margin: 0% -117%; width: 60px; border-radius: 0px;"></asp:TextBox>
                                        </td>

                                        <td style="margin: 0% -67%; position: absolute;">اسم العميل </td>
                                        <td>
                                            <asp:TextBox ID="TextBox50" runat="server" Style="position: absolute;margin: -1% -23%; border-radius: 0px;"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="margin: 36px 80px; position: absolute;">EN</td>
                                        <td>
                                            <asp:TextBox ID="TextBox52" runat="server" Style="margin: 25% 78% 12% 0%; border-radius: 0px;"></asp:TextBox>
                                        </td>
                                        <td style="position: absolute;margin: -4% 115%;"> أ.م دائن</td>
                                        <td>
                                            <asp:TextBox ID="TextBox53" runat="server" Style="margin:-44px 217px 0px 0px; position: absolute; border-radius: 0px;"></asp:TextBox>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td style="position: absolute;margin: -32% 211%;">مدين</td>
                                        <td>
                                            <asp:TextBox ID="TextBox54" runat="server" Style="border-radius: 0px; position: absolute; margin: -51px 220px"></asp:TextBox></td>
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
                                    <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped" BackColor="White" Style="font-size: 12px; margin:97px 335px; width: 660px; text-align: center; border-color: #5bc0de;"></asp:GridView>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</asp:Content>
