<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="activty_types_delete.aspx.cs" Inherits="mid.activty_types_delete" %>

  <asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
         <section class="content-header">
         <div class="panel panel-default col-lg-12">
         <div class="panel-body">
            <h2 class="panel-title" style="font-size: 29px;">حذف نشاط</h2>
        </div>
        </div>
     
                <div class="card-body">
                    <div>
                        <table class="table table-borderless">

                            <tbody>
                                <tr class="jsgrid-row">
                                    <td class="jsgrid-cell" style="width: 90px; font-size: 16px; font-weight:bold;">الرقم </td>
                                    <td class="jsgrid-cell jsgrid-align-right">
                                        <asp:TextBox ID="TextBox1" runat="server" Style="width: 60px; text-align: center; margin-left: 90%; border: 1px solid lightblue; height: 30px; padding-right: 10px;"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr class="jsgrid-row">
                                    <td class="jsgrid-cell" style="width: 90px; font-size: 16px; font-weight:bold;">البيان AR </td>
                                    <td class="jsgrid-cell jsgrid-align-center">
                                        <asp:TextBox ID="TextBox2" runat="server" Style="width: 300px; text-align: center; margin-left: 90%; border: 1px solid lightblue; height: 30px; padding-right: 10px;"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr class="jsgrid-row">
                                    <td class="jsgrid-cell" style="width: 90px; font-size: 16px; font-weight:bold;">البيان EN </td>
                                    <td class="jsgrid-cell jsgrid-align-right">
                                        <asp:TextBox ID="TextBox3" runat="server" Style="width: 300px; text-align: center; margin-left: 90%; border: 1px solid lightblue; height: 30px; padding-right: 10px;"></asp:TextBox>
                                </tr>

                                <tr class="jsgrid-row">
                                    <td class="jsgrid-cell">
                                        <asp:Button ID="Button4" Style="color:white; height: 30px; background-color: #dc3545; width: 52px;     margin: 0 40%; border:none;" runat="server" Text="حذف" OnClick="Button4_Click" /> 

                                    </td>
                                    <td class="jsgrid-cell jsgrid-align-right">
                                        <asp:Button ID="Button3" Style="color:white; height: 30px; background-color: #007bff; width: 52px; border:none;" runat="server" Text="تراجع" OnClick="Button3_Click" />
                                    </td>

                                </tr>



                            </tbody>
                        </table>
                    </div>
                </div>
                <!-- /.card-body -->
            </div>
            <!-- /.card -->
        </section>


    </div>

</asp:Content>
