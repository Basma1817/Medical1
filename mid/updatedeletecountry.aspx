<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="updatedeletecountry.aspx.cs" Inherits="mid.updatedeletecountry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
        <div class="panel panel-default col-lg-12">
        <div class="panel-body">
            <h2 class="panel-title" style="font-size: 29px;">تعديل بيانات الدول </h2>
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
                             <div class="row">
                        <div class="col-lg-9 pull-right">
                            <div class="col-md-12" style="display: flex; margin-top: 10px">
                                <asp:Label ID="Label6" runat="server" Text="رقم الدولة" Style ="width:18%" ></asp:Label>
                                <asp:TextBox ID="TextBox1" Style="width: 20%" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-md-12" style="display: flex; margin-top: 10px">
                                <asp:Label ID="Label7" runat="server" Style="margin-left: 5px; width:18%" Text="AR اسم الدولة" ></asp:Label>
                                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="col-md-12" style="display: flex; margin-top: 10px">
                                <asp:Label ID="Label8" runat="server" Style="margin-left: 5px; width:18%" Text="EN"></asp:Label>
                                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>

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
    </div>
</asp:Content>
