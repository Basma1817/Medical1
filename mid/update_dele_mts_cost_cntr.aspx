<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="update_dele_mts_cost_cntr.aspx.cs" Inherits="mid.update_dele_mts_cost_cntr" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="content-wrapper">
        <ol class="breadcrumb" style="width: 1050px;">
            <h1><small>البيانات الاساسية > تعديل مراكز التكلفه</small></h1>
        </ol>
        <div class="row">
            <div class="col-xs-12">
                <div class="box" style="height: 1100px; width: 28%; margin-right: 280px;">
                    <div class="box-header">
                        <h3 class="box-title"></h3>
                    </div>
                    <div style="margin-right: 20px">
                        <asp:TreeView ID="TreeView1" runat="server" OnTreeNodePopulate="TreeView1_TreeNodePopulate" Font-Bold="False" Font-Size="Medium" OnSelectedNodeChanged="TreeView1_SelectedNodeChanged" ShowLines="True" Style="font-size: Medium; font-weight: normal; position: absolute; border: 1px solid #5423B5; margin-right:-278px; min-height: 1150px; width: 27%">
                        </asp:TreeView>
                    </div>

                    <!-- /.box-header -->
                    <div style="margin-right: 35px">



                        <div class="box-body">
                            <table id="example2" class="table table-borderless" style="margin: 0px 33px;">
                                <thead>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td style="margin: 4px 93px; position: absolute;font-size: 12px; width: min-content;">
                                        <asp:CheckBox ID="CheckBox1" runat="server" Text="فعال"  style="width = 20px;" />
                                              </td>
                                    </tr>
                                    <tr>
                                        <td>رقم الحساب</td>
                                        <td>
                                            <asp:TextBox ID="TextBox1" runat="server" Style="width: 55px; margin: 0px -237px 0px 0px;"></asp:TextBox></td>
                                        <td>نوع الحساب</td>
                                        <td>
                                            <asp:DropDownList ID="DropDownList1" Style="width: 300px; border: 1px solid lightblue;" runat="server">
                                                <asp:ListItem Value="1">رئيسى</asp:ListItem>
                                                <asp:ListItem Value="0">فرعى</asp:ListItem>
                                            </asp:DropDownList></td>
                                    </tr>
                                    <tr>
                                        <td>حساب الترصيد</td>
                                        <td>
                                            <asp:DropDownList ID="DropDownList2" Style="width: 300px; border: 1px solid lightblue;" runat="server"></asp:DropDownList></td>
                                        <td>اسم الحساب </td>
                                        <td>
                                            <asp:TextBox ID="TextBox2" runat="server" Style="width: 300px"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>اسم الحساب </td>
                                        <td>
                                            <asp:TextBox ID="TextBox3" runat="server" Style="width: 300px"></asp:TextBox></td>
                                        <td>اول المده مدين</td>
                                        <td>
                                            <asp:TextBox ID="TextBox5" runat="server" Style="width: 300px"></asp:TextBox></td>
                                    </tr>
                                    <tr>

                                        <td>اول المده دائن</td>
                                        <td>
                                            <asp:TextBox ID="TextBox6" runat="server" Style="width: 300px"></asp:TextBox></td>
                                        <td>
                                            <asp:TextBox ID="TextBox4" Visible="false" runat="server" Style="width: 300px"></asp:TextBox></td>

                                    </tr>



                                    </tbody>
                            </table>
                        </div>
                        <div>
                             <asp:Button ID="Button1" Style="position: absolute; margin: 50px -19%; background-color: #dc3545; height: 38px; background-color: #007bff; width:68px" runat="server" Text="حفظ" OnClick="Button1_Click" />

                                            <asp:Button ID="Button3" Style="position: absolute; margin: 50px -12%; height: 38px; background-color: #dc3545;  width:68px" runat="server" Text="تراجع" OnClick="Button3_Click" />

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
