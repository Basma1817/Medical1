<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="glast_acn_bnk_delete.aspx.cs" Inherits="mid.glast_acn_bnk_delete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <div class="content-wrapper">
        <ol class="breadcrumb" style="width: 1050px;">
            <h1><small>اعدادات الحسابات < حذف بيانات البنوك و الصندوق </small></h1>
        </ol>

        <div class="row">
            <div class="col-xs-12">
                <div class="box" style="height: 875px">
                    <div class="box-header">
                        <h3 class="box-title"></h3>
                    </div>
                    <!-- /.box-header -->
                    <div>



                        <div>
                            <table id="example2" class="table table-borderless">
                                <thead>
                                    <tr>
                                        <td>رقم الحساب</td>
                                        <td>
                                            <asp:TextBox ID="TextBox1" runat="server" Style="width: 60px; text-align: center; margin-left: 90%;"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label2" runat="server" Text=" اسم الحساب  "></asp:Label></td>
                                        <td>
                                            <asp:TextBox ID="TextBox2" runat="server" Style="margin-bottom: 10px;"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label4" runat="server" Text="AR " Style="margin-right: -128px"></asp:Label></td>

                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label5" runat="server" Text=" "></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label6" runat="server" Text="EN " Style="margin-right: -128px"></asp:Label></td>

                                    </tr>
                                    <tr>
                                        <td>الحساب بالبنك</td>
                                        <td>
                                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>سندات صرف الشيك</td>
                                        <td>
                                            <asp:CheckBox ID="CheckBox2" runat="server" Text="" /></td>
                                    </tr>
                                    <tr>
                                        <td>جمع النقدية</td>
                                        <td>
                                            <asp:CheckBox ID="CheckBox1" runat="server" Text="" /></td>
                                    </tr>
                                    <tr>
                                        <td>البنوك</td>
                                        <td>
                                            <asp:CheckBox ID="CheckBox3" runat="server" Text="" /></td>
                                    </tr>
                                    <tr>
                                        <td>الصندوق</td>
                                        <td>
                                            <asp:CheckBox ID="CheckBox4" runat="server" Text="" /></td>

                                    </tr>

                                     <tr>
                                    <td>
                                        <asp:Button ID="Button4" runat="server" type="submit" class="btn btn-primary" Text="حذف" OnClick="Button4_Click" Style="margin: -3px 113%; height: 30px;  background-color: #dc3545; width: 52px"></asp:Button>
                                    </td>
                                    <td>
                                         <asp:Button ID="Button3" Style="margin: -3px -94% 50px 67%; height: 30px; background-color: #007bff; width: 52px" runat="server" Text="تراجع" OnClick="Button3_Click" />
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
