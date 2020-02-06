<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ast_market_show.aspx.cs" Inherits="mid.ast_market_show" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="panel panel-default col-lg-12">
        <div class="panel-body">
            <h2 class="panel-title" style="font-size: 29px;">عرض مندوبين تسويق</h2>
        </div>
    </div>

    <div class="row">
        <div class="col-lg-5" style="display: flex; justify-content: flex-end">
            <asp:Button ID="Button3" runat="server" type="submit" Text="تراجع" OnClick="Button3_Click" class="btn btn-success" />
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
                            <div class="col-lg-8 pull-right">
                                <div class="col-md-12" style="display: flex; margin-top: 10px">
                                    <asp:Label ID="Label6" runat="server" Text="الرقم" Style="width: 18%"></asp:Label>
                                    <asp:TextBox ID="TextBox1" Style="width: 10%" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                                <div class="col-md-12" style="display: flex; margin-top: 10px">
                                    <asp:Label ID="Label10" runat="server" Style="margin-left: 5px; width: 18%" Text="AR الاسم"></asp:Label>
                                    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" Style="width: 50%;"></asp:TextBox>
                                </div>
                                <div class="col-md-12" style="display: flex; margin-top: 10px">
                                    <asp:Label ID="Label11" runat="server" Style="margin-left: 5px; width: 18%" Text="EN"></asp:Label>
                                    <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" Style="width: 50%;"></asp:TextBox>
                                </div>
                                <div class="col-md-12" style="display: flex; margin-top: 10px">
                                    <asp:Label ID="Label1" runat="server" Style="margin-left: 5px; width: 18%" Text="رصيد اول المده مدين"></asp:Label>
                                    <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" Style="width: 18%;"></asp:TextBox>
                                </div>
                                <div class="col-md-12" style="display: flex; margin-top: 10px">
                                    <asp:Label ID="Label7" runat="server" Style="margin-left: 5px; width: 18%" Text="رصيد اول المده دائن"></asp:Label>
                                    <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" Style="width: 18%;"></asp:TextBox>
                                </div>
                                <div class="col-md-12" style="display: flex; margin-top: 10px">
                                    <asp:Label ID="Label2" runat="server" Style="margin-left: 5px; width: 18%" Text="الفرع للمندوب"></asp:Label>
                                    <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
                                </div>
                            </div>
                            <div>
                            </div>

                        </div>
                        <!-- /.box-body -->
                    </div>
                </div>
                <!-- /.col -->

            </div>
        </div>
    </div>



</asp:Content>