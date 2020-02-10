<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="insert_deduction_type.aspx.cs" Inherits="mid.insert_deduction_type" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
  
        <div class="panel panel-default col-lg-12">
            <div class="panel-body">
                <h2 class="panel-title" style="font-size: 29px;">أضافة أنواع الاستقطاعات</h2>
            </div>
        </div>

     <div class="row">
        <div class="col-lg-5" style="display: flex; justify-content: flex-end">
            <asp:Button ID="Button1" runat="server" type="submit" Text="حفظ" OnClick="Button1_Click" class="btn btn-success" />
            <asp:Button ID="Button4" runat="server" type="submit" Text="تراجع" OnClick="Button2_Click" class="btn btn-success" />
        </div>

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
                                
                                <tbody>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label1" runat="server" Text="الرقم"></asp:Label></td>
                                        <td>
                                            <asp:TextBox ID="TextBox1" runat="server" style="width:5%"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label2" runat="server" Text=" ARاسم  "></asp:Label></td>
                                        <td>
                                            <asp:TextBox ID="TextBox2" runat="server" ></asp:TextBox>
                                        </td>
                                       
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label6" runat="server" Text="EN" ></asp:Label></td>
                                        <td>
                                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                        </td>
                                       
                                    </tr>
                                    </tbody>
                            </table>
                        </div>
                        <div>
                        </div>
                    </div>
                    <!-- /.box-body -->
                </div>
       
                <!-- /.box -->
            </div>
            <!-- /.col -->
        </div>
        <!-- /.row -->


    </div>

</asp:Content>
