<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="insert_mts_cost_centr.aspx.cs" Inherits="mid.insert_mts_cost_centr" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="content-wrapper">
        <ol class="breadcrumb" style="width: 1050px;">
            <h1><small>البيانات الاساسية < اضافة مركز تكلفه</small></h1>
        </ol>
        <div class="row">
            <div class="col-xs-12">
                <div class="box" style="height: 1100px; margin-right: 280px; width: 65%;">
                    <div class="box-header">
                        <h3 class="box-title"></h3>
                    </div>
                    <!-- /.box-header -->
                    <div>
                        <div class="box-body" style="margin: 10px -2px 0 0; }">
                            <table id="example2" class="table table-borderless">
                                <thead>
                                </thead>
                                <tbody>

                                    <tr>
                                        <td>
                                            <asp:Label ID="Label1" runat="server" Style="position: absolute; margin: 12px -311px 0px 0px;" Text="اسم الشركة"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Style="margin: 7px -470px 0px 0px; position: absolute; width: 245px;"></asp:DropDownList>
                                        </td>
                                        <td style="position: absolute; margin: 9px -320px 0px 0px;">حساب الترصيد</td>
                                        <td>
                                            <asp:DropDownList ID="DropDownList2" Style="width: 165px; border: 1px solid lightblue; position: absolute; margin: 5px -387px 0px 0px;" runat="server"></asp:DropDownList>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td>
                                            <asp:Button ID="Button1" Style="margin: -35px 533px; position: absolute; background-color: #dc3545; height: 38px; background-color: #007bff; width: 68px" runat="server" Text="حفظ" OnClick="Button1_Click" ToolTip="اضافة" />
                                        </td>
                                        <td>
                                            <asp:Button ID="Button2" Style="margin: -35px 394px; height: 38px; position: absolute; background-color: #dc3545; width: 68px" runat="server" Text="تراجع" OnClick="Button2_Click" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="margin: 19px 185px; position: absolute;font-size: 12px; width: min-content;">
                                        <asp:CheckBox ID="CheckBox1" runat="server" Text="فعال"  style="width = 20px;" />
                                              </td>
                                    </tr>
                                    <tr>
                                       
                                        <td>
                                            <asp:Label ID="Label2" runat="server" Text="رقم الحساب" style="margin: 0px 26px"></asp:Label></td>
                                        <td>
                                            <asp:TextBox ID="TextBox1" runat="server" Style="width: 4%; margin: 6px -150px; position: absolute;"></asp:TextBox>
                                        </td>
                                         <td style="position: absolute;margin: 32px -13px;">رقم المستوي</td>
                                        <td>
                                            <asp:TextBox ID="TextBox7" runat="server" Style="width: 39px;margin: 26px -66px; position: absolute" Enabled="false"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="position: absolute; margin: 4px -9px;">نوع الحساب </td>
                                        <td>
                                            <asp:RadioButtonList ID="RadioButtonList1" runat="server" Style="width: 120px; display: flex; margin: 6px 0px;" RepeatDirection="Horizontal" RepeatLayout="Flow" Width="50px">

                                                <asp:ListItem Value="0">رئيسي</asp:ListItem>
                                                <asp:ListItem Value="1">فرعي</asp:ListItem>
                                            </asp:RadioButtonList>
                                        </td>
                                    </tr>

                                    <tr>

                                        <td>AR اسم الحساب </td>
                                        <td>
                                            <asp:TextBox ID="TextBox2" runat="server" Style="width: 300px"></asp:TextBox></td>

                                        <td>أول المده مدين</td>
                                        <td>
                                            <asp:TextBox ID="TextBox5" runat="server" Style="width: 135px; margin: 10px -150px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>EN </td>
                                        <td>
                                            <asp:TextBox ID="TextBox3" runat="server" Style="width: 300px"></asp:TextBox></td>
                                        <td>دائن</td>
                                        <td>
                                            <asp:TextBox ID="TextBox6" runat="server" Style="width: 135px; margin: 10px -150px;"></asp:TextBox>
                                        </td>
                                    </tr>

                            </table>
                        </div>

                        <div>
                            <asp:TreeView ID="TreeView1" runat="server" OnTreeNodePopulate="TreeView1_TreeNodePopulate" Font-Bold="False" Font-Size="Medium" OnSelectedNodeChanged="TreeView1_SelectedNodeChanged" ShowLines="True" EnableTheming="True" Style="font-size: Medium; font-weight: normal; position: absolute; border: 1px solid #5423B5; margin: -217px -252px; min-height: 1170px; width: 21%">
                            </asp:TreeView>
                        </div>

                        <div>
                            <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped" BackColor="White" Style="font-size: 12px; margin: 17px 32px 0px -171px; text-align: center; border-color: #5bc0de;"></asp:GridView>



                        </div>
                    </div>
                    <!-- /.box-body -->
                </div>
                <!-- /.box -->


                <!-- /.box -->
            </div>
            <!-- /.col -->
        </div>
    </div>



















</asp:Content>
