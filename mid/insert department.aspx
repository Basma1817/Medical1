﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="insert department.aspx.cs" Inherits="mid.insert_department" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
         
         <div class="panel panel-default col-lg-12">
         <div class="panel-body">
            <h2 class="panel-title" style="font-size: 29px;"> أضافة اقسام الشركة</h2>
        </div>
        </div>
      <div class="row">
        <div class="col-lg-5" style="display: flex; justify-content: flex-end">
            <asp:Button ID="Button3" runat="server" type="submit" Text="حفظ" OnClick="Button3_Click" class="btn btn-success" />
            <asp:Button ID="Button2" runat="server" type="submit" Text="تراجع" OnClick="Button2_Click" class="btn btn-success" />
        </div>
          </div>

        <div class="row">
            <div class="col-xs-12">
                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title"></h3>
                    </div>
                    <!-- /.box-header -->
                    <div style="margin-right: 35px">



                        <div class="box-body">
                            <table id="example2" class="table table-borderless">

                                <tr>
                                    <td>
                                        <asp:Label ID="Label1" runat="server" Text="رقم الاداره"></asp:Label></td>
                                    <td>
                                        <asp:TextBox ID="TextBox1" runat="server" style="width: 5%;"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label2" runat="server" Text=" اسم الادارة  "></asp:Label></td>
                                    <td>
                                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label4" runat="server" Text="AR"></asp:Label></td>

                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label5" runat="server" Text=" "></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label6" runat="server" Text="EN " ></asp:Label></td>

                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label3" runat="server" Text="عدد الموظفين"></asp:Label></td>
                                    <td>
                                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                    </td>
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


    </div>
















    <%--  <table class="grid">
        
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
                      <asp:Button ID="Button1" runat="server" Text="insert" OnClick="Button1_Click" />
                       </td>  
           
        </tr>
    </table>--%>
</asp:Content>
