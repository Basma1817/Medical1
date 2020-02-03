<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" EnableEventValidation="true" AutoEventWireup="true" CodeBehind="insert_chart_ac.aspx.cs" Inherits="mid.insert_chart_ac" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="content-wrapper">
        <ol class="breadcrumb" style="width: 100%;">
            <h1><small>دليل الحسابات < اضافة دليل للحسابات</small></h1>
        </ol>

        <div class="row" style="height: 875px;">
            <div class="col-xs-12" style="width: 70%; margin-right: 275px;">
                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title"></h3>
                    </div>
                    <!-- /.box-header -->

                    <%--<div style="margin-right:20px">
                <asp:TreeView ID="TreeView1" runat="server" OnTreeNodePopulate="TreeView1_TreeNodePopulate" Font-Bold="False" Font-Size="Medium" OnSelectedNodeChanged="TreeView1_SelectedNodeChanged" ShowLines="True">
                </asp:TreeView>
            </div>--%>


                    <div style="margin-right: 235px">



                        <div class="box-body">
                            <table id="example2" class="table table-borderless" style="margin-right: -31%;">
                                <thead>
                                </thead>
                                <tbody>

                                      <tr>

                                    <td>
                                        <asp:Button ID="Button1" Style="margin: -3px 239%; border: none; background-color: #007bff; width: 57px;" runat="server" Text="حفظ" OnClick="Button1_Click" />
                                    </td>
                                    <td>
                                        <asp:Button ID="Button2" Style="border: none; margin: -3px 977% 0 0; background-color: #F00; width: 52px" runat="server" Text="تراجع" OnClick="Button2_Click" />

                                    </td>
                                </tr>
                                    <tr>

                                        <td>رقم الحساب</td>
                                        <td>
                                            <asp:TextBox ID="TextBox2" runat="server" Style="width: 150px; margin-right: -140px;"></asp:TextBox>
                                        </td>

                                        <td style="position: absolute; margin: 0 -45px">رقم المستوي</td>
                                        <td>
                                            <asp:TextBox ID="TextBox9" runat="server" Style="width: 39px; margin: 0px -72px; position: absolute;" Enabled="false"></asp:TextBox>
                                        </td>

                                        <td style="position: absolute; margin: 0 -9px;">نوع المستوى</td>
                                        <td>
                                            <%--<asp:DropDownList ID="DropDownList1" runat="server" Style="width: 150px">
                                                <asp:ListItem Value="0">رئيسى</asp:ListItem>
                                                <asp:ListItem Value="1">فرعى</asp:ListItem>
                                            </asp:DropDownList>--%>

                                            <asp:RadioButtonList ID="RadioButtonList1" runat="server" Style="width: 120px; display: flex; margin: 6px 187px;" RepeatDirection="Horizontal" RepeatLayout="Flow" Width="50px">
                                                <%--Style="position: absolute; margin: -2% 50%; display: flex;"--%>
                                                <asp:ListItem Value="0">رئيسي</asp:ListItem>
                                                <asp:ListItem Value="1">فرعي</asp:ListItem>
                                            </asp:RadioButtonList>


                                        </td>
                                    </tr>


                                    <tr>

                                        <td>اسم الحساب عربى</td>
                                        <td>
                                            <asp:TextBox ID="TextBox3" runat="server" Style="width: 300px; margin: 0 -145px; position: absolute;" required="true"></asp:TextBox>
                                        </td>
                                    </tr>

                                    <tr>

                                        <td>EN</td>
                                        <td>
                                            <asp:TextBox ID="TextBox4" runat="server" Style="width: 300px; margin: 0 -145px; position: absolute;" required="true"></asp:TextBox>
                                        </td>

                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:CheckBox ID="CheckBox1" runat="server" Text="مركز تكلفه" /></td>
                                        <td>
                                            <asp:DropDownList ID="DropDownList2" Style="border: 1px solid lightblue; width: 300px; margin: 0 -145px; position: absolute;" runat="server">
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>بند الميزانيه</td>
                                        <td>
                                            <asp:DropDownList ID="DropDownList3" Style="border: 1px solid lightblue; height: 30px; width: 150px; margin: 0 -145px; position: absolute;"
                                                runat="server" Enabled="false">
                                            </asp:DropDownList>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox1" runat="server" Style="width: 30px; margin: 0 0 0 100px;"></asp:TextBox>
                                        </td>

                                    </tr>
                                    <tr>
                                        <td>قائمة الدخل</td>
                                        <td>
                                            <asp:DropDownList ID="DropDownList1" Style="border: 1px solid lightblue; width: 150px; margin: 0 -145px 0 0; position: absolute;" runat="server" Enabled="false"></asp:DropDownList>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox10" runat="server" Style="width: 30px; margin: 0 0 0 100px;"></asp:TextBox>
                                        </td>

                                    </tr>



                                </tbody>
                                <tfoot style="width: 28%; position: absolute; margin: -256px 584px;">
                                    <tr>
                                        <td>طبيعة الحساب</td>
                                        <td>
                                            <asp:RadioButtonList ID="RadioButtonList2" runat="server" Style="width: 90px; display: flex; margin: 6px 50px;" RepeatDirection="Horizontal" RepeatLayout="Flow" Width="50px">
                                                <asp:ListItem Value="0">دائن</asp:ListItem>
                                                <asp:ListItem Value="1">مدين</asp:ListItem>
                                            </asp:RadioButtonList>
                                            <%-- <asp:DropDownList ID="DropDownList4" Style="border: 1px solid lightblue; width: 150px" runat="server">
                                                    <asp:ListItem Value="0">دائن</asp:ListItem>
                                                    <asp:ListItem Value="1">مدين</asp:ListItem>

                                                </asp:DropDownList>--%>
                                        </td>
                                    </tr>
                                    <tr>

                                        <td>اول المده مدين</td>
                                        <td>
                                            <asp:TextBox ID="TextBox5" runat="server" Style="width: 150px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>اول المده دائن</td>
                                        <td>
                                            <asp:TextBox ID="TextBox6" runat="server" Style="width: 150px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>رصيد تقديري
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox11" runat="server" Style="width: 150px" Enabled="false"></asp:TextBox>
                                        </td>
                                    </tr>
                                </tfoot>



                              
                            </table>
                        </div>
                        <div>

                            <br />
                            <br />

                        </div>
                        <div style="position: absolute; margin: -28% -45%;">
                            <%--<asp:HyperLink ID="HyperLink1" runat="server" ></asp:HyperLink>--%>
                            <asp:Button ID="Button3" runat="server" Width="25%" Text="دليل الحسابات" OnClick="Button3_Click" />
                            <asp:TextBox Style="height: 25px; width: 23%;" ID="TextBox7" runat="server" Enabled="False"></asp:TextBox>

                            <asp:TextBox Style="height: 25px; width: 23%;" ID="TextBox8" runat="server" Enabled="False"></asp:TextBox>
                        </div>
                        <div>
                            <asp:TreeView ID="TreeView1" runat="server" OnTreeNodePopulate="TreeView1_TreeNodePopulate" Font-Bold="False" Font-Size="Medium" OnSelectedNodeChanged="TreeView1_SelectedNodeChanged" ShowLines="True" EnableTheming="True" Style="font-size: Medium;height: 100%; font-weight: normal; position: absolute; border: 1px solid #5423B5; margin: -338px -482px; min-height: 265px; width: 23.1%; word-wrap: break-word; top: 47%;" BorderStyle="None">
                            </asp:TreeView>
                        </div>
                        <div>
                            <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped" BackColor="White" Style="font-size: 12px; margin: -43px -155px; text-align:center;border-color: #5bc0de;"></asp:GridView>



                        </div>
                    </div>

                    <!-- /.box-body -->
                </div>
                <!-- /.box -->


                <!-- /.box -->
            </div>
            <!-- /.col -->
        </div>
        <!-- /.row -->
    </div>


</asp:Content>
