<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ast_sup_ctg_show.aspx.cs" Inherits="mid.ast_sup_ctg_show" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="content-wrapper">
        <ol class="breadcrumb" style="width: 1050px;">
            <h1><small> اعدادات المبيعات < عرض  تصنيف الموردين والعملاء</small></h1>
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
                                        <td>الرقم</td>
                                        <td>
                                            <asp:TextBox Enabled="false" ID="TextBox1" runat="server" style="width: 60px;text-align: center;margin-left: 90%;"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>النوع</td>
                                        <td>
                                            <asp:DropDownList Enabled="false" ID="DropDownList1" runat="server">
                                                <asp:ListItem Value="1">عملاء</asp:ListItem>
                                                <asp:ListItem Value="2">موردين</asp:ListItem>
                                            </asp:DropDownList></td>
                                    </tr>

                                    <tr>
                                        <td>
                                            <asp:Label ID="Label2" runat="server" Text="اسم  "></asp:Label></td>
                                        <td>
                                            <asp:TextBox ID="TextBox2" ReadOnly="true" runat="server" Style="margin-bottom: 10px;"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label4" runat="server" Text="AR " Style="margin-right: -128px"></asp:Label></td>

                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label3" runat="server" Text=" "></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox3" ReadOnly="true" runat="server"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label5" runat="server" Text="EN " Style="margin-right: -128px"></asp:Label></td>

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
