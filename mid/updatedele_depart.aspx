<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="updatedele_depart.aspx.cs" Inherits="mid.updatedele_depart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="content-wrapper">

        <ol class="breadcrumb" style="width: 1050px;">
            <h1><small>اعدادات الموظفين > تعديل قسم للشركه </small></h1>
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
                          
                                <tbody>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label1" runat="server" Text="رقم الاداره"></asp:Label></td>
                                        <td>
                                            <asp:TextBox ID="TextBox1" runat="server"  Style="width: 60px; text-align: center; margin-left: 90%;"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label2" runat="server" Text=" اسم الادارة  "></asp:Label></td>
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
                                        <td>
                                            <asp:Label ID="Label3" runat="server" Text="عدد الموظفين"></asp:Label></td>
                                        <td>
                                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                      <tr>
                                        <td>
                                            <asp:Button ID="Button1" Style="margin: -3px 113%;  height: 30px; width:52px; background-color: #007bff;" runat="server" Text="حفظ" OnClick="Button1_Click" />
                                        </td>
                                        <td>
                                            <asp:Button ID="Button3" Style="margin:  -3px -94% 50px -42%; height: 30px;  width:52px; background-color: #dc3545;" runat="server" Text="تراجع" OnClick="Button3_Click" />
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


    <%-- <table class="grid">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="رقم الاداره"></asp:Label></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
        </tr>
                <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="اسم الاداره"></asp:Label></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
                <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="عدد الموظفين"></asp:Label></td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        </tr>
              <tr>
              
                  <td>
                      <asp:Button ID="Button1" runat="server" Text="update" OnClick="Button1_Click" />
                       </td>  
            
                  <td>
                      <asp:Button ID="Button2" runat="server" Text="delete" OnClick="Button2_Click" />
                       </td>
        </tr>
    </table>--%>
</asp:Content>
