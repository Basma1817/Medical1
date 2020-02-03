<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ast_market_show.aspx.cs" Inherits="mid.ast_market_show" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
 <div class="content-wrapper">
        <ol class="breadcrumb" style="width: 1050px;">
            <h1><small>الاعدادات العامة < عرض مندوبين تسويق</small></h1>
        </ol>

        <div class="row" style="height: 875px;">
            <div class="col-xs-12">
                <div class="box">
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
                                            <asp:Label ID="Label1" runat="server" Text="رقم المندوب"></asp:Label></td>
                                        <td>
                                            <asp:TextBox ID="TextBox1" ReadOnly="true" runat="server" style="width: 60px;text-align: center;margin-left: 90%;"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label2" runat="server" Text=" الاسم "></asp:Label></td>
                                        <td>
                                            <asp:TextBox ID="TextBox2" ReadOnly="true" runat="server" Style="margin-bottom: 10px;"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label4" runat="server" Text="AR " Style="margin-right: -128px"></asp:Label></td>

                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label5" runat="server" Text=" "></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox3" ReadOnly="true" runat="server"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label6" runat="server" Text="EN " Style="margin-right: -128px"></asp:Label></td>

                                    </tr>

                                    <tr>
                                        <td>
                                            <asp:Label ID="Label3" runat="server" Text="الفرع للمندوب"></asp:Label></td>
                                        <td>
                                            <asp:DropDownList Enabled="false" ID="DropDownList1" runat="server"></asp:DropDownList></td>
                                    </tr>

                                    <tr>
                                        <td>
                                           <asp:Button ID="Button3" Style="margin:  -3px -94% 50px -255%; height: 30px;  width:52px; background-color: #dc3545;" runat="server" Text="تراجع" OnClick="Button3_Click" />
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


    </div>

</asp:Content>
