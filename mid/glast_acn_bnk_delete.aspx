﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="glast_acn_bnk_delete.aspx.cs" Inherits="mid.glast_acn_bnk_delete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="panel panel-default col-lg-12">
        <div class="panel-body">
            <h2 class="panel-title" style="font-size: 29px;">حذف بيانات البنوك والصندوق </h2>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-5" style="display: flex; justify-content: flex-end">
            <asp:Button ID="Button4" runat="server" type="submit" Text="حفظ" OnClick="Button4_Click" class="btn btn-success" />
            <asp:Button ID="Button3" runat="server" type="submit" Text="تراجع" OnClick="Button3_Click" class="btn btn-success" />
        </div>



                        <div class="box-body">
                            <div class="row">
                                <div class="col-lg-9 pull-right">
                                    <div class="col-md-12" style="display: flex; margin-top: 10px">
                                        <asp:Label ID="Label1" runat="server" Text="رقم الحساب" Style="width: 10%"></asp:Label>
                                        <asp:TextBox ID="TextBox1" Style="width: 5%" CssClass="form-control" runat="server"></asp:TextBox>
                                    </div>
                                    <div class="col-md-12" style="display: flex; margin-top: 10px">
                                        <asp:Label ID="Label8" runat="server" Style="margin-left: 5px; width: 10%" Text="ARاسم الحساب"></asp:Label>
                                        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" Style="width: 30%"></asp:TextBox>
                                    </div>
                                    <div class="col-md-12" style="display: flex; margin-top: 10px">
                                        <asp:Label ID="Label7" runat="server" Style="margin-left: 5px; width: 10%" Text="EN"></asp:Label>
                                        <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" Style="width: 30%"></asp:TextBox>
                                    </div>
                                    <div class="col-md-12" style="display: flex; margin-top: 10px">
                                        <asp:Label ID="Label3" runat="server" Style="margin-left: 5px; width: 10%" Text="الحساب بالبنك"></asp:Label>
                                        <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" Style="width: 30%"></asp:TextBox>
                                    </div>

                                    <div class="col-md-12" style="display: flex; margin-top: 10px">
                                        <asp:Label ID="Label9" runat="server" Style="margin-left: 5px; width: 10%" Text="سندات صرف الشيك"></asp:Label>

                                        <asp:CheckBox ID="CheckBox2" runat="server" />
                                    </div>
                                    <div class="col-md-12" style="display: flex; margin-top: 10px">
                                        <asp:Label ID="Label10" runat="server" Style="margin-left: 5px; width: 10%" Text="جمع النقدية"></asp:Label>

                                        <asp:CheckBox ID="CheckBox1" runat="server" />
                                    </div>
                                    <div class="col-md-12" style="display: flex; margin-top: 10px">
                                        <asp:Label ID="Label11" runat="server" Style="margin-left: 5px; width: 10%" Text="البنوك"></asp:Label>

                                        <asp:CheckBox ID="CheckBox3" runat="server" />
                                    </div>
                                    <div class="col-md-12" style="display: flex; margin-top: 10px">
                                        <asp:Label ID="Label12" runat="server" Style="margin-left: 5px; width: 10%" Text="الصندوق"></asp:Label>

                                        <asp:CheckBox ID="CheckBox4" runat="server" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                
</asp:Content>
