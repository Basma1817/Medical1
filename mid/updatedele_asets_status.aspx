<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="updatedele_asets_status.aspx.cs" Inherits="mid.updatedele_asets_status" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
         
         <div class="panel panel-default col-lg-12">
         <div class="panel-body">
            <h2 class="panel-title" style="font-size: 29px;"> تعديل حالة الاصول الثابتة</h2>
        </div>
        </div>


    <div class="row">
        <div class="col-lg-5" style="display: flex; justify-content: flex-end">
            <asp:Button ID="Button1" runat="server" type="submit" Text="حفظ" OnClick="Button1_Click" class="btn btn-success" />
            <asp:Button ID="Button3" runat="server" type="submit" Text="تراجع" OnClick="Button3_Click" class="btn btn-success" />
        </div>
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
                                <thead>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label2" runat="server" Text=" رقم الاصل "></asp:Label></td>
                                        <td>
                                            <asp:TextBox ID="TextBox1" runat="server" style="width:5%" ></asp:TextBox>
                                        </td>
                                       </tr>
                                    <tr>
                                        <td>
                                             <asp:Label ID="Label4" runat="server" Text="AR البيان" style="margin-right:-128px"></asp:Label></td>
                                        <td>
                                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label5" runat="server" Text=" EN البيان"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                            </table>
                        </div>
                        <div>
                        </div>
                    </div>
                   
                </div>
                
            </div>
            <!-- /.col -->
        </div>
     <div>
                        </div>
                  
        
</asp:Content>
