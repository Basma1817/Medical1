﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="insertreftype.aspx.cs" Inherits="mid.insertreftype" %>

  <asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        
         <div class="panel panel-default col-lg-12">
         <div class="panel-body">
            <h2 class="panel-title" style="font-size: 29px;"> اضافة مرجع الفرعى للسندات </h2>
        </div>
        </div>

       <div class="row">

        <div class="col-lg-5" style="display: flex; justify-content: flex-end">
            <asp:Button ID="Button1" runat="server" type="submit" Text="حفظ" OnClick="Button1_Click" class="btn btn-success" />
            <asp:Button ID="Button2" runat="server" type="submit" Text="تراجع" OnClick="Button2_Click" class="btn btn-success" />
        </div>
    </div>
      
    <div class="row">
        <div class="col-xs-12">
            <div class="box">
                <div class="box-header">
                    <h3 class="box-title"></h3>
                </div>
               
                <div style="margin-right: 35px">
                      <div class="box-body">
                        <div class="row">
                            <div class="col-lg-8 pull-right">
                                <div class="col-md-12" style="display: flex; margin-top: 10px">
                                    <asp:Label ID="Label7" runat="server" Text="الرقم" Style="width: 18%"></asp:Label>
                                    <asp:TextBox ID="TextBox1" Style="width: 10%" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                                 <div class="col-md-12" style="display: flex; margin-top: 10px">
                                    <asp:Label ID="Label12" runat="server" Style="margin-left: 5px; width: 18%" Text="المرجع الرئيسى"></asp:Label>
                                    <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
                                </div>
                                <div class="col-md-12" style="display: flex; margin-top: 10px">
                                    <asp:Label ID="Label10" runat="server" Style="margin-left: 5px; width: 18%" Text="AR البيان"></asp:Label>
                                    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" Style="width: 50%;"></asp:TextBox>
                                </div>
                                <div class="col-md-12" style="display: flex; margin-top: 10px">
                                    <asp:Label ID="Label11" runat="server" Style="margin-left: 5px; width: 18%" Text="EN"></asp:Label>
                                    <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" Style="width: 50%;"></asp:TextBox>
                                </div>
                               
                            </div>
                            <div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>