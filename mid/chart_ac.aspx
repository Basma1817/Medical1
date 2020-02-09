<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="chart_ac.aspx.cs" Inherits="mid.chart_ac" EnableTheming="False" StylesheetTheme="" Theme="" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="panel panel-default col-lg-12">
        <div class="panel-body">
            <h2 class="panel-title" style="font-size: 29px;">دليل الحسابات</h2>
        </div>
    </div>


    <div class="row">
        <div class="col-lg-5">
        </div>
        <div class="col-lg-1">
            <div class="form-group" style="display: flex; justify-content: space-between">
                <asp:Label ID="Label17" runat="server" Text="الرقم"></asp:Label>
                <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" Style="display: flex;"></asp:TextBox>
            </div>
        </div>
        <div class="col-md-2">
            <div class="form-group" style="display: flex; justify-content: space-between">
                <asp:Label ID="Label4" runat="server" Text="النشاط"></asp:Label>
                <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control" AutoPostBack="true">
                </asp:DropDownList>
            </div>
        </div>
        <div class="col-lg-1">
            <div class="form-group" style="display: flex; justify-content: space-between">
                <asp:Label ID="Label12" runat="server" Text="الرقم"></asp:Label>
                <asp:TextBox ID="TextBox20" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <div class="col-lg-3">
            <div class="form-group" style="display: flex; justify-content: space-between">
                <asp:Label ID="Label5" runat="server" Text="الشركة"></asp:Label>
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control"
                    AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
            </div>
        </div>
    </div>
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
                    <div class="modal-footer" style="margin-right: 74%">
                        <asp:Button ID="Button4" runat="server" type="submit" class="btn btn-primary" Text="حذف" OnClick="Button4_Click"></asp:Button>
                        <button type="button" class="btn btn-primary"
                            data-dismiss="modal">
                            إغلاق</button>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-5" style="display: flex; justify-content: flex-end">
                <asp:Button ID="Button2" runat="server" type="submit" Text="إضافة" OnClick="Button2_Click" class="btn btn-primary" />
                <asp:Button ID="Button1" runat="server" type="submit" Text="تعديل" OnClick="Button1_Click" class="btn btn-success" />
                <asp:HyperLink ID="HyperLink1" runat="server" class="btn btn-primary" data-target="#loginModal" data-toggle="modal" href="#" Style="background-color: darkred;">حذف</asp:HyperLink>

                <asp:Button ID="Button3" runat="server" Text="طباعة" OnClick="Button3_Click" class="btn btn-dark" />
            </div>
            <div class="col-lg-3">
            </div>

        </div>

        <div class="row">
            <div class="col-md-9">
                <table class="table table-striped">
                    <tbody>
                        <tr>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text="رقم الحساب"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox5" runat="server" Style="width: 25%;"></asp:TextBox>
                            </td>
                            <td>
                                <asp:Label ID="Label2" runat="server" Text="رقم المستوى"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox9" runat="server" Style="width: 25%;"></asp:TextBox>
                            </td>
                            <td>
                                <asp:Label ID="Label23" runat="server" Text="نوع المستوى"></asp:Label>
                                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal">
                                    <asp:ListItem Text="رئيسي" Selected="True" />
                                    <asp:ListItem Text="فرعي" />
                                </asp:RadioButtonList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label8" runat="server" Text=" اسم الحساب AR"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                            </td>
                            <td></td>
                            <td></td>
                            <td>
                                <asp:Label ID="Label3" runat="server" Text="طبيعة الحساب"></asp:Label>
                                <asp:RadioButtonList ID="RadioButtonList2" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal">
                                    <asp:ListItem Text="رئيسي" Selected="True" />
                                    <asp:ListItem Text="فرعي" />
                                </asp:RadioButtonList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label6" runat="server" Text=" اسم الحسابEn"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                            </td>
                            <td></td>

                            <td>
                                <asp:Label ID="Label7" runat="server" Text="أول المدة دائن"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                            </td>
                       
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label9" runat="server" Text="مركز تكلفة"></asp:Label>
                                <asp:CheckBox ID="CheckBox1" runat="server" />
                            </td>
                            <td>
                                <asp:DropDownList ID="DropDownList4" runat="server" CssClass="form-control"
                                    AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                </asp:DropDownList>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox12" runat="server" Style="width: 30%;"></asp:TextBox>
                            </td>
                            <td>
                                <asp:Label ID="Label10" runat="server" Text="أول المدة مدين"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label11" runat="server" Text="بند الميزانية"></asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="DropDownList3" runat="server" CssClass="form-control"
                                    AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                </asp:DropDownList>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox2" runat="server" Style="width: 30%;"></asp:TextBox>
                            </td>
                            <td>
                                <asp:Label ID="Label13" runat="server" Text="رصيد تقديرى"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                          <tr>
                            <td>
                                <asp:Label ID="Label14" runat="server" Text="قائمة الدخل"></asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="DropDownList5" runat="server" CssClass="form-control"
                                    AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                </asp:DropDownList>
                            </td>
                               <td>
                                <asp:TextBox ID="TextBox3" runat="server" Style="width: 30%;"></asp:TextBox>
                            </td>
                    </tbody>
                </table>
                <div>
                    <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped" BackColor="White" Style="font-size: 12px; width: 660px; text-align: center; border-color: #5bc0de;"></asp:GridView>
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
        </div>
    </section>

</asp:Content>
