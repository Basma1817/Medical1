<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="invacity_delete.aspx.cs" Inherits="mid.invacity_delete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

 <div class="content-wrapper">
        <ol class="breadcrumb" style="width: 1050px;">
            <h1><small>اعدادات المبيعات < حذف المدن الرئيسية </small></h1>
        </ol>

        <div class="row">
            <div class="col-xs-12">
                <div class="box" style="height: 875px;">
                    <div class="box-header">
                        <h3 class="box-title"></h3>
                    </div>
                    <!-- /.box-header -->
                    <div style="margin-right: 35px">



                        <div class="box-body">
                            <table id="example2" class="table table-borderless">
                                <thead>
                                    <tr>
                                    </tr>
                                </thead>
                                <tbody>

                                    <tr>

                                        <td class="text-center">
                                            <asp:Label ID="Label2" runat="server" Text="رقم"></asp:Label></td>
                                        <td class="text-center">
                                            <asp:TextBox ID="TextBox1" runat="server" Style="width: 60px; text-align: center; margin-left: 90%;"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label3" runat="server" Text=" اسم  "></asp:Label></td>
                                        <td>
                                            <asp:TextBox ID="TextBox2" runat="server" Style="margin-bottom: 10px;"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label4" runat="server" Text="AR " Style="margin-right: -128px"></asp:Label></td>

                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label7" runat="server" Text=" "></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label8" runat="server" Text="EN " Style="margin-right: -128px"></asp:Label></td>

                                    </tr>
                                    <tr>

                                        <td>
                                            <asp:Label ID="Label5" runat="server" Text="الدولة"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>

                                        <td>
                                            <asp:Label ID="Label6" runat="server" Text="الفرع"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="DropDownList2" runat="server"></asp:DropDownList>
                                        </td>
                                    </tr>
                                   <tr>
                                    <td>
                                        <asp:Button ID="Button4" runat="server" type="submit" class="btn btn-primary" Text="حذف" OnClick="Button4_Click" Style="margin: -3px 113%; height: 30px;  background-color: #dc3545; width: 52px"></asp:Button>
                                    </td>
                                    <td>
                                         <asp:Button ID="Button3" Style="margin: -3px -94% 50px -42%; height: 30px; background-color: #007bff; width: 52px" runat="server" Text="تراجع" OnClick="Button3_Click" />
                                    </td>
                                </tr>
                            </table>
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










































</asp:Content>
