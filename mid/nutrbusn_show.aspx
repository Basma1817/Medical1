<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="nutrbusn_show.aspx.cs" Inherits="mid.nutrbusn_show" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="content-wrapper">
        <ol class="breadcrumb" style="width: 1050px;">
            <h1><small>اعدادات المبيعات < عرض الأنشطة التجارية </small></h1>
        </ol>

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
                                            <asp:Label ID="Label2" runat="server" Text="الكود"></asp:Label></td>
                                        <td>
                                            <asp:TextBox ID="TextBox2" Enabled="false" runat="server" Style="width: 60px; text-align: center; margin-left: 90%;"></asp:TextBox></td>

                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Labei" runat="server" Text="الاسم بالاختصار"></asp:Label></td>
                                        <td>
                                            <asp:TextBox ID="TextBox1" ReadOnly="true" runat="server"></asp:TextBox></td>

                                    </tr>
                                   
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label3" runat="server" Text=" طبيعة العمل  "></asp:Label></td>
                                        <td>
                                            <asp:TextBox ID="TextBox3" ReadOnly="true" runat="server" Style="margin-bottom: 10px;"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label4" runat="server" Text="AR " Style="margin-right: -128px"></asp:Label></td>

                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label5" runat="server" Text=" "></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox4" ReadOnly="true" runat="server"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label6" runat="server" Text="EN " Style="margin-right: -128px"></asp:Label></td>

                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Button ID="Button3" Style="margin: -3px -94% 50px -255%; height: 30px; width: 52px; background-color: #dc3545;" runat="server" Text="تراجع" OnClick="Button3_Click" />
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
