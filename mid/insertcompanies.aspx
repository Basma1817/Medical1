<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="insertcompanies.aspx.cs" Inherits="mid.insertcompanies" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <section class="content-header">
         <div class="panel panel-default col-lg-12">
         <div class="panel-body">
            <h2 class="panel-title" style="font-size: 29px;">اضافة بيانات الشركه</h2>
        </div>
        </div>

  
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
             
                <div class="card-body">
                    <div>
                        <table class="table table-borderless">

                            <tbody>
                                <tr class="jsgrid-row">
                                    <td class="jsgrid-cell">رقم الشركه</td>
                                    <td class="jsgrid-cell jsgrid-align-right">
                                        <asp:TextBox ID="TextBox1" runat="server" Style="width: 60px; text-align: center; margin-left: 90%; border:1px solid lightblue; height: 30px; padding-right: 10px;"></asp:TextBox></td>
                                    <td class="jsgrid-cell">اعداد سند القبض اليا بالمبيعات النقديه</td>
                                    <td class="jsgrid-cell jsgrid-align-center">
                                        <asp:CheckBox ID="CheckBox9" runat="server" />
                                    </td>
                                </tr>


                                <tr class="jsgrid-alt-row">
                                    <td class="jsgrid-cell" style="width: 100px;">  اسم الشركه &nbsp; AR</td>
                                    <td class="jsgrid-cell jsgrid-align-right" style="width: 150px; ">
                                        <asp:TextBox ID="TextBox3" runat="server"
                                            Style="margin-bottom: 10px; direction: rtl; width: 313px; border:1px solid lightblue; height: 30px; padding-right: 10px;"></asp:TextBox></td>
                                    <td class="jsgrid-cell" style="width: 200px;">نماذج سندات القبض والصرف بالصندوق</td>
                                    <td class="jsgrid-cell jsgrid-align-center" style="width: 100px;">
                                        <asp:CheckBox ID="CheckBox1" runat="server" /></td>
                                </tr>

                                <tr class="jsgrid-alt-row">
                                    <td class="jsgrid-cell" style="width: 100px;">اسم الشركه &nbsp; EN</td>
                                    <td class="jsgrid-cell jsgrid-align-right" style="width: 150px;">
                                        <asp:TextBox ID="TextBox4" runat="server" Style="width: 313px; border:1px solid lightblue; height: 30px; padding-right: 10px;"></asp:TextBox></td>
                                    <td class="jsgrid-cell" style="width: 200px;"></td>
                                    <td class="jsgrid-cell jsgrid-align-center" style="width: 100px;"></td>
                                </tr>

                                <tr class="jsgrid-alt-row">
                                    <td class="jsgrid-cell" style="width: 100px;">الاسم الفرعى &nbsp; AR</td>
                                    <td class="jsgrid-cell jsgrid-align-right" style="width: 150px;">
                                        <asp:TextBox ID="TextBox5" runat="server"
                                            Style="margin-bottom: 10px; direction: rtl; width: 313px; border:1px solid lightblue; height: 30px; padding-right: 10px;"></asp:TextBox></td>
                                    <td class="jsgrid-cell" style="width: 200px;">نماذج فاتورة المبيعات</td>
                                    <td class="jsgrid-cell jsgrid-align-center" style="width: 100px;">
                                        <asp:CheckBox ID="CheckBox2" runat="server" /></td>
                                </tr>


                                <tr class="jsgrid-alt-row">
                                    <td class="jsgrid-cell" style="width: 100px;">الاسم الفرعى &nbsp; EN</td>
                                    <td class="jsgrid-cell jsgrid-align-right" style="width: 150px;">
                                        <asp:TextBox ID="TextBox6" runat="server" Style="width: 313px; border:1px solid lightblue; height: 30px; padding-right: 10px;"></asp:TextBox></td>
                                    <td class="jsgrid-cell" style="width: 200px;"></td>
                                    <td class="jsgrid-cell jsgrid-align-center" style="width: 100px;"></td>
                                </tr>


                                <tr class="jsgrid-alt-row">
                                    <td class="jsgrid-cell" style="width: 100px;">عنوان الشركه&nbsp; AR</td>
                                    <td class="jsgrid-cell jsgrid-align-right" style="width: 150px;">
                                        <asp:TextBox ID="TextBox7" runat="server"
                                            Style="margin-bottom: 10px; direction: rtl; width: 313px; border:1px solid lightblue; height: 30px; padding-right: 10px;"></asp:TextBox></td>
                                    <td class="jsgrid-cell" style="width: 200px;">نماذج فاتورة الشراء</td>
                                    <td class="jsgrid-cell jsgrid-align-center" style="width: 100px;">
                                        <asp:CheckBox ID="CheckBox3" runat="server" /></td>
                                </tr>

                                <tr class="jsgrid-alt-row">
                                    <td class="jsgrid-cell" style="width: 100px;">عنوان الشركه&nbsp; EN</td>
                                    <td class="jsgrid-cell jsgrid-align-right" style="width: 150px;">
                                        <asp:TextBox ID="TextBox8" runat="server" Style="width: 313px; border:1px solid lightblue; height: 30px; padding-right: 10px;"></asp:TextBox></td>
                                    <td class="jsgrid-cell" style="width: 200px;"></td>
                                    <td class="jsgrid-cell jsgrid-align-center" style="width: 100px;"></td>
                                </tr>


                                <tr class="jsgrid-alt-row">
                                    <td class="jsgrid-cell" style="width: 100px;">البريد الاكترونى</td>
                                    <td class="jsgrid-cell jsgrid-align-right" style="width: 150px;">
                                        <asp:TextBox ID="TextBox9" runat="server" Style="width: 313px; border:1px solid lightblue; height: 30px; padding-right: 10px;"></asp:TextBox></td>
                                    <td class="jsgrid-cell" style="width: 200px;">نماذج سند الادخال والتسليم بالمستودع</td>
                                    <td class="jsgrid-cell jsgrid-align-center" style="width: 100px;">
                                        <asp:CheckBox ID="CheckBox4" runat="server" /></td>
                                </tr>


                                <tr class="jsgrid-alt-row">
                                    <td class="jsgrid-cell" style="width: 100px;">التليفون</td>
                                    <td class="jsgrid-cell jsgrid-align-right" style="width: 150px;">
                                        <asp:TextBox ID="TextBox10" runat="server" Style="width: 313px; border:1px solid lightblue; height: 30px; padding-right: 10px;"></asp:TextBox></td>
                                    <td class="jsgrid-cell" style="width: 200px;">سندات القبض والصرف ترحل للحسابات</td>
                                    <td class="jsgrid-cell jsgrid-align-center" style="width: 100px;">
                                        <asp:CheckBox ID="CheckBox5" runat="server" /></td>
                                </tr>

                                <tr class="jsgrid-alt-row">
                                    <td class="jsgrid-cell" style="width: 100px;">رقم الفاكس</td>
                                    <td class="jsgrid-cell jsgrid-align-right" style="width: 150px;">
                                        <asp:TextBox ID="TextBox11" runat="server" Style="width: 313px; border:1px solid lightblue; height: 30px; padding-right: 10px;"></asp:TextBox></td>
                                    <td class="jsgrid-cell" style="width: 200px;">اصدار سند الادخال بالمستودع</td>
                                    <td class="jsgrid-cell jsgrid-align-center" style="width: 100px;">
                                        <asp:CheckBox ID="CheckBox6" runat="server" /></td>
                                </tr>


                                <tr class="jsgrid-alt-row">
                                    <td class="jsgrid-cell" style="width: 100px;">الفرع</td>
                                    <td class="jsgrid-cell jsgrid-align-right" style="width: 150px;">
                                        <asp:DropDownList ID="DropDownList1" runat="server" Style="width: 313px; height:25px; border:1px solid lightblue; height: 30px; padding-right: 10px;"></asp:DropDownList></td>
                                    <td class="jsgrid-cell" style="width: 200px;">اصدار سند التسليم بالمستودع</td>
                                    <td class="jsgrid-cell jsgrid-align-center" style="width: 100px;">
                                        <asp:CheckBox ID="CheckBox7" runat="server" /></td>
                                </tr>


                                <tr class="jsgrid-alt-row">
                                    <td class="jsgrid-cell" style="width: 100px;">الرقم الضريبى</td>
                                    <td class="jsgrid-cell jsgrid-align-right" style="width: 150px;">
                                        <asp:TextBox ID="TextBox2" runat="server" Style="width: 313px; border:1px solid lightblue; height: 30px; padding-right: 10px;"></asp:TextBox></td>
                                    <td class="jsgrid-cell" style="width: 200px;">اصدار فاتورة المبيعات قبل تسليم البضاعه</td>
                                    <td class="jsgrid-cell jsgrid-align-center" style="width: 100px;">
                                        <asp:CheckBox ID="CheckBox8" runat="server" /></td>
                                </tr>


                                <tr class="jsgrid-alt-row">
                                    <td class="jsgrid-cell" style="width: 100px;">اصدار فاتورة الشراء قبل سند الادخال</td>
                                    <td class="jsgrid-cell jsgrid-align-right" style="width: 150px; ">
                                        <asp:CheckBox ID="CheckBox10" runat="server" /></td>
                                    <td class="jsgrid-cell" style="width: 200px;">اعداد سند الصرف اليا بالمشتريات النقديه</td>
                                    <td class="jsgrid-cell jsgrid-align-center" style="width: 100px;">
                                        <asp:CheckBox ID="CheckBox11" runat="server" /></td>
                                </tr>


                                <tr class="jsgrid-alt-row">
                                    <td class="jsgrid-cell" style="width: 100px;">التكلفه لا تعتمد على سند التسليم</td>
                                    <td class="jsgrid-cell jsgrid-align-right" style="width: 150px;">
                                        <asp:CheckBox ID="CheckBox12" runat="server" /></td>

                                    <td class="jsgrid-cell" style="width: 200px;">تسلسل قيود اليوميه اليا حسب الشهر</td>
                                    <td class="jsgrid-cell jsgrid-align-center" style="width: 100px;">
                                        <asp:CheckBox ID="CheckBox13" runat="server" /></td>
                                </tr>


                                <tr class="jsgrid-alt-row">
                                    <td class="jsgrid-cell" style="width: 100px;">التكلفه لا تعتمد على سند الادخال</td>
                                    <td class="jsgrid-cell jsgrid-align-right" style="width: 150px;">
                                        <asp:CheckBox ID="CheckBox14" runat="server" /></td>

                                    <td class="jsgrid-cell" style="width: 200px;">ترحيل صافى المبيعات للحسابات</td>
                                    <td class="jsgrid-cell jsgrid-align-center" style="width: 100px;">
                                        <asp:CheckBox ID="CheckBox15" runat="server" /></td>
                                </tr>

                                <tr class="jsgrid-alt-row">
                                    <td class="jsgrid-cell" style="width: 100px;">البحث باستخدام المرجع للصنف</td>
                                    <td class="jsgrid-cell jsgrid-align-right" style="width: 150px;">
                                        <asp:CheckBox ID="CheckBox16" runat="server" /></td>

                                    <td class="jsgrid-cell" style="width: 200px;">الحركه بالتاريخ الهجرى</td>
                                    <td class="jsgrid-cell jsgrid-align-center" style="width: 100px;">
                                        <asp:CheckBox ID="CheckBox17" runat="server" />
                                </tr>

                                <tr class="jsgrid-alt-row">
                                    <td class="jsgrid-cell">
                                        <asp:Button ID="Button3" Style="color:white; height: 30px; background-color: #007bff; width: 52px;     margin: 0 60%; border:none;" runat="server" Text="حفظ" OnClick="Button1_Click" /></td>

                                    <td class="jsgrid-cell jsgrid-align-right">
                                        <asp:Button ID="Button2" Style="color:white; height: 30px; background-color: #dc3545; width: 52px; border:none;" runat="server" Text="تراجع" OnClick="Button2_Click" /></td>

                                </tr>





                            </tbody>
                        </table>
                    </div>
                </div>
                <!-- /.card-body -->
            </div>
            <!-- /.card -->
        </section>


    </div>

</asp:Content>
