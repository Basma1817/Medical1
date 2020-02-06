<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="branches_show.aspx.cs" Inherits="mid.branches_show" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


     <section class="content-header">
         <div class="panel panel-default col-lg-12">
         <div class="panel-body">
            <h2 class="panel-title" style="font-size: 29px;">عرض بيانات الفروع</h2>
        </div>
        </div>
     
                <div class="card-body">
                    <div>
                        <table class="table table-borderless">

                            <tbody>
                                <tr class="jsgrid-row">
                                    <td class="jsgrid-cell">رقم الفرع</td>
                                    <td class="jsgrid-cell jsgrid-align-right">
                                        <asp:TextBox ID="TextBox2" runat="server" Style="width: 60px; text-align: center; margin-left: 90%; border: 1px solid lightblue;"></asp:TextBox>

                                    </td>
                                    <td class="jsgrid-cell">اعداد سند القبضاسم الفرع</td>
                                    <td class="jsgrid-cell jsgrid-align-center">
                                        <asp:TextBox ID="TextBox27" runat="server" Style="width:300px ;margin-left: 90%; border: 1px solid lightblue; height: 30px; padding-right: 10px;"></asp:TextBox>

                                    </td>
                                </tr>


                                <tr class="jsgrid-row">
                                    <td class="jsgrid-cell">العنوان </td>
                                    <td class="jsgrid-cell jsgrid-align-right">
                                        <asp:TextBox ID="TextBox3" runat="server" Style="width:300px ;margin-left: 90%; border: 1px solid lightblue; height: 30px; padding-right: 10px;"></asp:TextBox>

                                    </td>
                                    <td class="jsgrid-cell">البريد الالكترونى </td>
                                    <td class="jsgrid-cell jsgrid-align-center">
                                        <asp:TextBox ID="TextBox4" runat="server" Style="width:300px ;margin-left: 90%; border: 1px solid lightblue; height: 30px; padding-right: 10px;"></asp:TextBox>
                                    </td>
                                </tr>

                                <tr class="jsgrid-row">
                                    <td class="jsgrid-cell">تليفون </td>
                                    <td class="jsgrid-cell jsgrid-align-right">
                                        <asp:TextBox ID="TextBox5" runat="server" Style="width:300px ;margin-left: 90%; border: 1px solid lightblue; height: 30px; padding-right: 10px;"></asp:TextBox>

                                    </td>
                                    <td class="jsgrid-cell">الشركه </td>
                                    <td class="jsgrid-cell jsgrid-align-center">

                                        <asp:DropDownList ID="DropDownList2" runat="server" Style="width:300px ;margin-left: 90%; border: 1px solid lightblue; height: 30px; padding-right: 10px;"></asp:DropDownList>
                                    </td>
                                </tr>

                                <tr class="jsgrid-row">
                                    <td class="jsgrid-cell">الضريبه المضافه مصروفات </td>
                                    <td class="jsgrid-cell jsgrid-align-right">
                                        <asp:TextBox ID="TextBox6" runat="server" Style="width:300px ;margin-left: 90%; border: 1px solid lightblue; height: 30px; padding-right: 10px;"></asp:TextBox>


                                    </td>
                                    <td class="jsgrid-cell">الضريبه المضافه ايرادات </td>
                                    <td class="jsgrid-cell jsgrid-align-center">
                                        <asp:TextBox ID="TextBox7" runat="server" Style="width:300px ;margin-left: 90%; border: 1px solid lightblue; height: 30px; padding-right: 10px;"></asp:TextBox>
                                    </td>
                                </tr>

                                <tr class="jsgrid-row">
                                    <td class="jsgrid-cell">مبيعات اجله </td>
                                    <td class="jsgrid-cell jsgrid-align-right">
                                        <asp:TextBox ID="TextBox8" runat="server" Style="width:300px ;margin-left: 90%; border: 1px solid lightblue; height: 30px; padding-right: 10px;"></asp:TextBox>

                                    </td>
                                    <td class="jsgrid-cell">مرتجع المبيعات </td>
                                    <td class="jsgrid-cell jsgrid-align-center">
                                        <asp:TextBox ID="TextBox9" runat="server" Style="width:300px ;margin-left: 90%; border: 1px solid lightblue; height: 30px; padding-right: 10px;"></asp:TextBox>
                                    </td>
                                </tr>



                                <tr class="jsgrid-row">
                                    <td class="jsgrid-cell">حساب الصندوق </td>
                                    <td class="jsgrid-cell jsgrid-align-right">
                                        <asp:TextBox ID="TextBox10" runat="server" Style="width:300px ;margin-left: 90%; border: 1px solid lightblue; height: 30px; padding-right: 10px;"></asp:TextBox>

                                    </td>
                                    <td class="jsgrid-cell">محاسبة عملاء </td>
                                    <td class="jsgrid-cell jsgrid-align-center">
                                        <asp:TextBox ID="TextBox11" runat="server" Style="width:300px ;margin-left: 90%; border: 1px solid lightblue; height: 30px; padding-right: 10px;"></asp:TextBox>
                                    </td>
                                </tr>



                                <tr class="jsgrid-row">
                                    <td class="jsgrid-cell">خصم نقدى مسموح </td>
                                    <td class="jsgrid-cell jsgrid-align-right">
                                        <asp:TextBox ID="TextBox12" runat="server" Style="width:300px ;margin-left: 90%; border: 1px solid lightblue; height: 30px; padding-right: 10px;"></asp:TextBox>

                                    </td>
                                    <td class="jsgrid-cell">مبيعات نقديه </td>
                                    <td class="jsgrid-cell jsgrid-align-center">
                                        <asp:TextBox ID="TextBox13" runat="server" Style="width:300px ;margin-left: 90%; border: 1px solid lightblue; height: 30px; padding-right: 10px;"></asp:TextBox>
                                    </td>
                                </tr>




                                <tr class="jsgrid-row">
                                    <td class="jsgrid-cell">محاسبة موردين </td>
                                    <td class="jsgrid-cell jsgrid-align-right">
                                        <asp:TextBox ID="TextBox14" runat="server" Style="width:300px ;margin-left: 90%; border: 1px solid lightblue; height: 30px; padding-right: 10px;"></asp:TextBox>

                                    </td>
                                    <td class="jsgrid-cell">مشتريات اجله </td>
                                    <td class="jsgrid-cell jsgrid-align-center">
                                        <asp:TextBox ID="TextBox15" runat="server" Style="width:300px ;margin-left: 90%; border: 1px solid lightblue; height: 30px; padding-right: 10px;"></asp:TextBox>
                                    </td>
                                </tr>



                                <tr class="jsgrid-row">
                                    <td class="jsgrid-cell">مرتجع مبيعات </td>
                                    <td class="jsgrid-cell jsgrid-align-right">
                                        <asp:TextBox ID="TextBox16" runat="server" Style="width:300px ;margin-left: 90%; border: 1px solid lightblue; height: 30px; padding-right: 10px;"></asp:TextBox>

                                    </td>
                                    <td class="jsgrid-cell">خصم نقدى مسموح </td>
                                    <td class="jsgrid-cell jsgrid-align-center">
                                        <asp:TextBox ID="TextBox17" runat="server" Style="width:300px ;margin-left: 90%; border: 1px solid lightblue; height: 30px; padding-right: 10px;"></asp:TextBox>
                                    </td>
                                </tr>




                                <tr class="jsgrid-row">
                                    <td class="jsgrid-cell">مرتجع مشتريات </td>
                                    <td class="jsgrid-cell jsgrid-align-right">
                                        <asp:TextBox ID="TextBox18" runat="server" Style="width:300px ;margin-left: 90%; border: 1px solid lightblue; height: 30px; padding-right: 10px;"></asp:TextBox>

                                    </td>
                                    <td class="jsgrid-cell">الشراء نقدا  </td>
                                    <td class="jsgrid-cell jsgrid-align-center">
                                        <asp:TextBox ID="TextBox19" runat="server" Style="width:300px ;margin-left: 90%; border: 1px solid lightblue; height: 30px; padding-right: 10px;"></asp:TextBox>
                                    </td>
                                </tr>




                                <tr class="jsgrid-row">
                                    <td class="jsgrid-cell">تكلفة المبيعات </td>
                                    <td class="jsgrid-cell jsgrid-align-right">
                                        <asp:TextBox ID="TextBox20" runat="server" Style="width:300px ;margin-left: 90%; border: 1px solid lightblue; height: 30px; padding-right: 10px;"></asp:TextBox>

                                    </td>
                                    <td class="jsgrid-cell">المخزون بالتكلفه </td>
                                    <td class="jsgrid-cell jsgrid-align-center">
                                        <asp:TextBox ID="TextBox21" runat="server" Style="width:300px ;margin-left: 90%; border: 1px solid lightblue; height: 30px; padding-right: 10px;"></asp:TextBox>
                                    </td>
                                </tr>


                                <tr class="jsgrid-row">
                                    <td class="jsgrid-cell">خصم نقدى </td>
                                    <td class="jsgrid-cell jsgrid-align-right">
                                        <asp:TextBox ID="TextBox22" runat="server" Style="width:300px ;margin-left: 90%; border: 1px solid lightblue; height: 30px; padding-right: 10px;"></asp:TextBox>

                                    </td>
                                    <td class="jsgrid-cell">المخزون تحت التشغيل </td>
                                    <td class="jsgrid-cell jsgrid-align-center">
                                        <asp:TextBox ID="TextBox23" runat="server" Style="width:300px ;margin-left: 90%; border: 1px solid lightblue; height: 30px; padding-right: 10px;"></asp:TextBox>
                                    </td>
                                </tr>

                                <tr class="jsgrid-row">
                                    <td class="jsgrid-cell">ارباح غير محققه </td>
                                    <td class="jsgrid-cell jsgrid-align-right">
                                        <asp:TextBox ID="TextBox24" runat="server" Style="width:300px ;margin-left: 90%; border: 1px solid lightblue; height: 30px; padding-right: 10px;"></asp:TextBox>

                                    </td>
                                    <td class="jsgrid-cell">مخزون المواد الخام </td>
                                    <td class="jsgrid-cell jsgrid-align-center">
                                        <asp:TextBox ID="TextBox25" runat="server" Style="width:300px ;margin-left: 90%; border: 1px solid lightblue; height: 30px; padding-right: 10px;"></asp:TextBox>
                                    </td>
                                </tr>


                                <tr class="jsgrid-row">
                                    <td class="jsgrid-cell">مخزون الانتاج التام </td>
                                    <td class="jsgrid-cell jsgrid-align-right">
                                        <asp:TextBox ID="TextBox26" runat="server" Style="width:300px ;margin-left: 90%; border: 1px solid lightblue; height: 30px; padding-right: 10px;"></asp:TextBox>
                                    </td>

                                </tr>

                                <tr class="jsgrid-row">

                                    <td class="jsgrid-cell jsgrid-align-right">
                                        <asp:Button ID="Button3"  Style="color:white; height: 30px; background-color: #F00; width: 52px;     margin: 0 110% 0 0; border:none;" runat="server" Text="تراجع" OnClick="Button3_Click" />

                                    </td>

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
