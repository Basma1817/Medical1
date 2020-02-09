<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="mts_emp_cntract_delete.aspx.cs" Inherits="mid.mts_emp_cntract_delete" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="panel panel-default col-lg-12">
        <div class="panel-body">
            <h2 class="panel-title" style="font-size: 29px;">حذف بيانات الموظفين</h2>
        </div>
    </div>

    <div class="row">

        <div class="col-lg-5" style="display: flex; justify-content: flex-end">
        </div>
        <div class="col-lg-1">
            <div class="form-group">
                <asp:Label ID="Label35" runat="server" Text="رقم النشاط"></asp:Label>
                <asp:TextBox ID="TextBox26" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <div class="col-md-2">
            <div class="form-group">
                <asp:Label ID="Label36" runat="server" Text="النشاط"></asp:Label>
                <asp:DropDownList ID="DropDownList8" runat="server" CssClass="form-control" AutoPostBack="true">
                </asp:DropDownList>
            </div>
        </div>

        <div class="col-lg-1">
            <div class="form-group">
                <asp:Label ID="Label37" runat="server" Text="رقم الشركة"></asp:Label>
                <asp:TextBox ID="TextBox27" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <div class="col-lg-3">
            <div class="form-group">
                <asp:Label ID="Label38" runat="server" Text="أسم الشركة"></asp:Label>
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control"
                    AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-lg-5" style="display: flex; justify-content: flex-end">
            <asp:Button ID="Button4" runat="server" type="submit" Text="حذف" OnClick="Button4_Click" class="btn btn-success" />
            <asp:Button ID="Button3" runat="server" type="submit" Text="تراجع" OnClick="Button3_Click" class="btn btn-success" />
        </div>
    </div>

    <div class="row">
        <div class="col-xs-12">
            <div class="box">
                <div class="box-header">
                    <h3 class="box-title"></h3>
                </div>
                <!-- /.box-header -->
                <div style="margin-right: 35px">
                    <div class="box-body">
                        <table class="table table-striped">
                            <thead>
                            </thead>
                            <tbody>
                                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label3" runat="server" Text="رقم الموظف"></asp:Label></td>
                                    <td>
                                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label39" runat="server" Text="اسم الموظف AR"></asp:Label></td>

                                    <td>
                                        <asp:TextBox ID="TextBox2" runat="server" Style="width: 160%"></asp:TextBox></td>
                                </tr>

                                <tr>
                                    <td>
                                        <asp:Label ID="Label4" runat="server" Text="EN"></asp:Label></td>
                                    <td>
                                        <asp:TextBox ID="TextBox3" runat="server" Style="width: 160%"></asp:TextBox></td>
                                </tr>

                                <tr>
                                    <td>
                                        <asp:Label ID="Label5" runat="server" Text="بداية التعاقد"></asp:Label></td>
                                    <td>
                                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
                                    <td>
                                        <asp:Label ID="Label6" runat="server" Text="نهاية التعاقد"></asp:Label></td>
                                    <td>
                                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
                                    <td>
                                        <asp:Label ID="Label7" runat="server" Text="تاريخ تجديد التعاقد"></asp:Label></td>
                                    <td>
                                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox></td>
                                </tr>

                                <tr>
                                    <td>
                                        <asp:Label ID="Label8" runat="server" Text="حساب الراتب"></asp:Label></td>
                                    <td>
                                        <asp:RadioButtonList ID="RadioButtonList1" runat="server">

                                            <asp:ListItem Value="1">يومي</asp:ListItem>
                                            <asp:ListItem Value="2">شهري</asp:ListItem>
                                        </asp:RadioButtonList>
                                    </td>

                                    <td>
                                        <asp:Label ID="Label9" runat="server" Text="الحالة الوظفية"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList2" runat="server" Style="width: 81%;">
                                        </asp:DropDownList></td>

                                    <td>
                                        <asp:Label ID="Label10" runat="server" Text="الاداره او القسم"></asp:Label></td>

                                    <td>
                                        <asp:DropDownList ID="DropDownList3" runat="server" Style="width: 81%;"></asp:DropDownList></td>
                                </tr>


                                <tr>
                                    <td>
                                        <asp:Label ID="Label11" runat="server" Text="راتب اساسى"></asp:Label></td>
                                    <td>
                                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox></td>
                                    <td>
                                        <asp:Label ID="Label12" runat="server" Text="طريقة دفع الراتب"></asp:Label></td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList4" runat="server" Style="width: 81%;"></asp:DropDownList></td>
                                    <td>
                                        <asp:Label ID="Label13" runat="server" Text="البنك للشركة"></asp:Label></td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList5" runat="server" Style="width: 81%"></asp:DropDownList></td>

                                </tr>
                                <tr>

                                    <td>
                                        <asp:Label ID="Label14" runat="server" Text="بدل انتقال"></asp:Label></td>
                                    <td>
                                        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox></td>
                                    <td>
                                        <asp:Label ID="Label15" runat="server" Text="عدد ساعات العمل"></asp:Label></td>
                                    <td>
                                        <asp:TextBox ID="TextBox23" runat="server"></asp:TextBox></td>
                                    <td>
                                        <asp:Label ID="Label16" runat="server" Text="حساب الشركة بالبنك"></asp:Label></td>
                                    <td>
                                        <asp:TextBox ID="TextBox24" runat="server"></asp:TextBox></td>
                                </tr>


                                <tr>
                                    <td>
                                        <asp:Label ID="Label17" runat="server" Text="بدل السكن"></asp:Label></td>
                                    <td>
                                        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                                    </td>

                                    <td>
                                        <asp:Label ID="Label18" runat="server" Text="تكلفة ساعة العمل"></asp:Label></td>
                                    <td>
                                        <asp:TextBox ID="TextBox25" runat="server"></asp:TextBox></td>

                                    <td>
                                        <asp:Label ID="Label19" runat="server" Text="البنك للموظف"></asp:Label></td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList6" runat="server" Style="width: 81%"></asp:DropDownList></td>
                                </tr>

                                <tr>

                                    <td>
                                        <asp:Label ID="Label20" runat="server" Text="بدل غدا"></asp:Label>ء</td>
                                    <td>
                                        <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox></td>
                                    <td>
                                        <asp:Label ID="Label21" runat="server" Text="تذاكر الموظف"></asp:Label></td>
                                    <td>
                                        <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox></td>
                                    <td>
                                        <asp:Label ID="Label22" runat="server" Text="حساب الموظف بالبنك"></asp:Label></td>
                                    <td>
                                        <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox></td>


                                </tr>
                                <tr>

                                    <td>
                                        <asp:Label ID="Label23" runat="server" Text="بدلات اخرى"></asp:Label></td>
                                    <td>
                                        <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label24" runat="server" Text="درجة التذكرة"></asp:Label></td>
                                    <td>
                                        <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox></td>
                                    <td>
                                        <asp:Label ID="Label25" runat="server" Text="فرع البنك للموظف"></asp:Label></td>
                                    <td>
                                        <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox></td>
                                </tr>

                                <tr>
                                    <td>
                                        <asp:Label ID="Label26" runat="server" Text="نوع الدوام"></asp:Label></td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList7" runat="server" Style="width: 81%"></asp:DropDownList></td>

                                    <td>
                                        <asp:Label ID="Label27" runat="server" Text="تذاكر اولاد الموظف"></asp:Label></td>
                                    <td>
                                        <asp:TextBox ID="TextBox16" runat="server"></asp:TextBox>
                                    </td>

                                    <td>
                                        <asp:Label ID="Label28" runat="server" Text="اول المدة مدين"></asp:Label></td>
                                    <td>
                                        <asp:TextBox ID="TextBox17" runat="server"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label29" runat="server" Text="عدد ساعات الراحة">
                                        </asp:Label><asp:CheckBox ID="CheckBox1" runat="server" />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox18" runat="server"></asp:TextBox>
                                    </td>



                                    <td>
                                        <asp:Label ID="Label30" runat="server" Text="نسبة موظف المبيعات%"></asp:Label></td>

                                    <td>
                                        <asp:TextBox ID="TextBox19" runat="server" Style="width: 25%"></asp:TextBox></td>

                                    <td>
                                        <asp:Label ID="Label2" runat="server" Text="اول مدة دائن"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox20" runat="server"></asp:TextBox></td>
                                </tr>


                                <tr>
                                    <td>
                                        <asp:CheckBox ID="CheckBox2" runat="server" /></td>

                                    <td>
                                        <asp:Label ID="Label31" runat="server" Text="يحسب له اضافي"></asp:Label></td>

                                    <td>
                                        <asp:Label ID="Label32" runat="server" Text="الرقم بالمبيعات"></asp:Label></td>
                                    <td>
                                        <asp:TextBox ID="TextBox21" runat="server"></asp:TextBox></td>

                                    <td>
                                        <asp:Label ID="Label33" runat="server" Text="حساب الذمم للموظف"></asp:Label></td>
                                    <td>
                                        <asp:TextBox ID="TextBox22" runat="server"></asp:TextBox></td>

                                </tr>

                                <tr>
                                </tr>
                            </tbody>

                        </table>
                    </div>
                    <div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
