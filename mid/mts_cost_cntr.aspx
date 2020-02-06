<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="mts_cost_cntr.aspx.cs" Inherits="mid.mts_cost_cntr1" %>

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
                    <div class="modal-footer" style="margin-right: 74%">
                        <asp:Button ID="Button6" runat="server" type="submit" class="btn btn-primary" Text="حذف" OnClick="Button6_Click"></asp:Button>
                        <button type="button" class="btn btn-primary"
                            data-dismiss="modal">
                            إغلاق</button>
                    </div>
                </div>
            </div>
        </div>
        <ol class="breadcrumb" style="width: 1200px;">

            <h1><small style="font-size: 80%; font-weight: 400; }">البيانات الاساسية  > دليل مراكز التكلفه</small></h1>
        </ol>
        <div class="wrapper" id="app" style="float: left; width: 100%; margin-right: 30px;">
            <div class="box-body" style="margin: 10px -2px 0 0; }">
                <table id="example2" class="table table-borderless">
                    <thead>
                    </thead>
                    <tbody>

                        <tr>
                            <td>
                                <asp:Label ID="Label1" runat="server" Style="position: absolute; margin:-28px -141px;" Text="اسم الشركة"></asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True"  Style="margin:-35px -379px; position: absolute; width: 245px;" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>
                            </td>
                            <td style="position: absolute; margin:-30px -312px 0px 0px;">حساب الترصيد</td>
                            <td>
                                <asp:DropDownList ID="DropDownList2" Style="width: 165px; border: 1px solid lightblue; position: absolute; margin:-31px -637px 0px 0px;" runat="server"></asp:DropDownList>
                          </td>
                        </tr>
                        <tr>

                            <asp:Button ID="Button2" runat="server" Text="إضافة" OnClick="Button2_Click" Style="margin-right: 555px; background: dodgerblue; font-size:15px;" class="btn btn-success" />
                            <asp:Button ID="Button5" runat="server" Text="تعديل" OnClick="Button5_Click" class="btn btn-success" Style="margin-right: 15px; background: green;font-size:15px;" />
                            <asp:HyperLink ID="HyperLink1" runat="server" class="btn btn-success" data-target="#loginModal" data-toggle="modal" href="#" Style="margin-right:15px; width:54px;background-color: darkred; font-size:15px;">حذف</asp:HyperLink>
                            <asp:Button ID="Button3" runat="server" Text="تقرير" class="btn btn-success" Style="margin-right: 15px; background: lightseagreen;font-size:15px;" OnClick="Button3_Click" />
                        </tr>
                        <tr>

                            <asp:CheckBox ID="CheckBox1" runat="server" Text="فعال"  style="margin:68px -446px; position: absolute;font-size: 12px;"/>
                        </tr>
                        <tr style="padding:5px;">
                           
                            <td>
                                <asp:Label ID="Label2" runat="server" Text="رقم الحساب" style="margin: 0px 96px 0px -330px;"></asp:Label></td>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server" Style="width: 4%; margin: -2px -35px; position: absolute;"></asp:TextBox>
                            </td>

                             <td style="position: absolute;margin: 5px 82px;">رقم المستوي</td>
                            <td>
                                <asp:TextBox ID="TextBox7" runat="server" Style="width: 39px; margin: 4px -246px; position: absolute" Enabled="false"></asp:TextBox>
                            </td>
                        </tr>
                        <tr style="padding:5px;">
                            <td style="position: absolute; margin:0px 281px;">نوع الحساب </td>
                            <td>

                                <asp:RadioButtonList ID="RadioButtonList1" runat="server" Style="width: 120px; display: flex; margin: 6px 149px; position:absolute" RepeatDirection="Horizontal" RepeatLayout="Flow" Width="50px">

                                    <asp:ListItem Value="0">رئيسي</asp:ListItem>
                                    <asp:ListItem Value="1">فرعي</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                        </tr>

                        <tr style="padding:5px;">

                            <td style="margin:14px 285px 0px 0px; position: absolute">اسم الحساب AR </td>
                            <td>
                                <asp:TextBox ID="TextBox2" runat="server" Style="width: 300px; position: absolute; margin:8px -44px;"></asp:TextBox></td>

                            <td style=" position: absolute; margin: 13px 78px;">أول المده مدين</td>
                            <td>
                                <asp:TextBox ID="TextBox5" runat="server" Style="width: 135px; margin-right: -359px; margin-bottom: 2px;"></asp:TextBox>
                            </td>
                        </tr>
                        <tr style="padding:5px;">
                            <td style="position: absolute; margin: -2px 284px;">EN </td>
                            <td>
                                <asp:TextBox ID="TextBox3" runat="server" Style="width: 300px; margin: -7px -44px; position:absolute"></asp:TextBox></td>
                            <td>دائن</td>
                            <td>
                                <asp:TextBox ID="TextBox6" runat="server" Style="width: 135px;position: absolute; margin: -13px -248px;"></asp:TextBox>
                            </td>
                        </tr>

                </table>
            </div>

            <div>
                <asp:TreeView ID="TreeView1" runat="server" OnTreeNodePopulate="TreeView1_TreeNodePopulate" Font-Bold="False" Font-Size="Medium" OnSelectedNodeChanged="TreeView1_SelectedNodeChanged" ShowLines="True" Style="font-size: Medium; font-weight: normal; position: absolute; border: 1px solid #5423B5; margin-right: 10px; margin-top: -157px;  min-height: 934px; width: 21%;">
                </asp:TreeView>



            </div>
             <div>
                  <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped" BackColor="White" Style="font-size: 12px; margin: 15px 277px; width: 660px; text-align: center; border-color: #5bc0de;"></asp:GridView>



                        </div>

        </div>
    </section>



















</asp:Content>
