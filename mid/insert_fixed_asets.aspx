﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="insert_fixed_asets.aspx.cs" Inherits="mid.insert_fixed_asets" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="content-wrapper">
        <ol class="breadcrumb" style="width: 1050px;">
            <h1><small>البيانات الاساسية < الاضافه فى الاصول الثابته</small></h1>
        </ol>
        <div class="row">
            <div class="col-xs-12">
                <div class="box" style="height: 1100px;">
                    <div class="box-header">
                        <h3 class="box-title"></h3>
                    </div>
                    <%--                                   <div style="margin-right:20px">
                <asp:TreeView ID="TreeView1" runat="server" OnTreeNodePopulate="TreeView1_TreeNodePopulate" Font-Bold="False" Font-Size="Medium" OnSelectedNodeChanged="TreeView1_SelectedNodeChanged" ShowLines="True">
                </asp:TreeView>
            </div>--%>

                    <!-- /.box-header -->
                    <div style="margin-right: 35px">



                        <div class="box-body">
                            <table id="example2" class="table table-borderless">
                                <thead>
                                </thead>
                                <tbody>


                                    <tr>

                                        <td>نوع الاصل</td>
                                        <td>
                                            <asp:DropDownList ID="DropDownList1" Style="width: 333px; border: 1px solid lightblue;" runat="server">
                                                <asp:ListItem Value="0">رئيسى</asp:ListItem>
                                                <asp:ListItem Value="1">فرعى</asp:ListItem>
                                            </asp:DropDownList></td>
                                        <td>بيان الاصل</td>
                                        <td>
                                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                                    </tr>
                                    <tr>

                                        <td>حالة الاصل</td>
                                        <td>
                                            <asp:DropDownList ID="DropDownList2" runat="server"></asp:DropDownList></td>
                                        <td>تاريخ استلام الاصل</td>
                                        <td>
                                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
                                    </tr>
                                    <tr>

                                        <td>اهلاك سنوى</td>
                                        <td>
                                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
                                        <td>اهلاك شهرى</td>
                                        <td>
                                            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
                                    </tr>
                                    <tr>

                                        <td>مصاريف الاهلاك</td>
                                        <td>
                                            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox></td>
                                        <td>مجمع الاهلاك</td>
                                        <td>
                                            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox></td>
                                    </tr>
                                    <tr>

                                        <td>رقم المرجع</td>
                                        <td>
                                            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox></td>
                                        <td>قيمة الشراء</td>
                                        <td>
                                            <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox></td>
                                    </tr>
                                    <tr>

                                        <td>القيمه الدفتريه</td>
                                        <td>
                                            <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox></td>
                                        <td>فاتورة الشراء</td>
                                        <td>
                                            <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox></td>
                                    </tr>
                                    <tr>

                                        <td>تاريخ الشراء</td>
                                        <td>
                                            <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox></td>
                                        <td>تاريخ بداية الاهلاك</td>
                                        <td>
                                            <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox></td>
                                    </tr>
                                    <tr>

                                        <td>معدل الاهلاك الشهرى</td>
                                        <td>
                                            <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox></td>
                                        <td>قيمة معدل الاهلاك</td>
                                        <td>
                                            <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox></td>
                                    </tr>
                                    <tr>

                                        <td>الاهلاك الحالى للسنه شهريا</td>
                                        <td>
                                            <asp:TextBox ID="TextBox16" runat="server"></asp:TextBox></td>
                                        <td>قيمة الاهلاك الحالى للسنه</td>
                                        <td>
                                            <asp:TextBox ID="TextBox17" runat="server"></asp:TextBox></td>
                                    </tr>
                                    <tr>

                                        <td>اهلاك سنوات سابقه شهريا</td>
                                        <td>
                                            <asp:TextBox ID="TextBox18" runat="server"></asp:TextBox></td>
                                        <td>قيمة اهلاك سنوات سابقه</td>
                                        <td>
                                            <asp:TextBox ID="TextBox19" runat="server"></asp:TextBox></td>
                                    </tr>

                                    <tr>

                                        <td>مجمع الاهلاك شهريا</td>
                                        <td>
                                            <asp:TextBox ID="TextBox20" runat="server"></asp:TextBox></td>
                                        <td>قيمة مجمع الاهلاك</td>
                                        <td>
                                            <asp:TextBox ID="TextBox21" runat="server"></asp:TextBox></td>
                                    </tr>
                                    <tr>

                                        <td>الباقى من الاهلاك شهريا</td>
                                        <td>
                                            <asp:TextBox ID="TextBox22" runat="server"></asp:TextBox></td>
                                        <td>قيمة الباقى من الاهلاك</td>
                                        <td>
                                            <asp:TextBox ID="TextBox23" runat="server"></asp:TextBox></td>
                                    </tr>
                                    <tr>

                                        <td>الجهه المسجل عليها المورد</td>
                                        <td>
                                            <asp:DropDownList ID="DropDownList3" Style="width: 333px; border: 1px solid lightblue;" runat="server"></asp:DropDownList></td>
                                        <td>بداية الضمان</td>
                                        <td>
                                            <asp:TextBox ID="TextBox24" runat="server"></asp:TextBox></td>
                                    </tr>
                                    <tr>

                                        <td>نهاية الضمان</td>
                                        <td>
                                            <asp:TextBox ID="TextBox25" runat="server"></asp:TextBox></td>
                                    </tr>


                                    </tfoot>
                               
                        </div>
                        <div>
                            <asp:Button ID="Button1" Style="position: absolute; margin: 67% -33%; background-color: #dc3545; height: 38px; background-color: #007bff; width: 68px" runat="server" Text="حفظ" OnClick="Button1_Click" />

                            <asp:Button ID="Button2" Style="position: absolute; margin: 67% -26%; height: 38px; background-color: #dc3545; width: 68px" runat="server" Text="تراجع" OnClick="Button2_Click" />




                        </div>
                        <div>
                            <asp:TreeView ID="TreeView1" runat="server" OnTreeNodePopulate="TreeView1_TreeNodePopulate" Font-Bold="False" Font-Size="Medium" OnSelectedNodeChanged="TreeView1_SelectedNodeChanged" ShowLines="True" EnableTheming="True">
                            </asp:TreeView>



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
