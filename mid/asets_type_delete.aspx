<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="asets_type_delete.aspx.cs" Inherits="mid.asets_type_delete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
       
         <div class="panel panel-default col-lg-12">
         <div class="panel-body">
            <h2 class="panel-title" style="font-size: 29px;">اضافة الاصول الثابتة</h2>
        </div>
        </div>
       
     <div class="row">
        <div class="col-lg-5" style="display: flex; justify-content: flex-end">
            <asp:Button ID="Button4" runat="server" type="submit" Text="حفظ" OnClick="Button4_Click" class="btn btn-success" />
            <asp:Button ID="Button3" runat="server" type="submit" Text="تراجع" OnClick="Button3_Click" class="btn btn-success" />
        </div>
          </div>

      <div class="row">
            <div class="col-xs-12">
                <div class="box" style="height: 875px">
                    <div class="box-header">
                        <h3 class="box-title"></h3>
                    </div>
                    <!-- /.box-header -->
                    <div style="margin-right: 35px">
                        <div class="box-body">
                            <table id="example2" class="table table-borderless">
                                <thead>
                                </thead>
                                <tbody>

                                    <tr>
                                        <td>
                                            <asp:Label ID="Label1" runat="server" Text="رقم الاصل"></asp:Label></td>
                                        <td>
                                            <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox></td>
                                        <td>
                                            <asp:Label ID="Label2" runat="server" Text="اسم الاصل"></asp:Label></td>
                                        <td>
                                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label3" runat="server" Text="الاهلاك"></asp:Label></td>
                                        <td>
                                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
                                        <td>
                                            <asp:Label ID="Label4" runat="server" Text="رقم الحساب"></asp:Label></td>
                                        <td>
                                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
                                    </tr>
                                
                            </table>
                        </div>
                        <div>
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