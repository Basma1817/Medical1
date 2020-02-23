<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="insert_mtsitem_unit.aspx.cs" Inherits="mid.insert_mtsitem_unit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <section class="content-header">

        <div class="panel panel-default col-lg-12">
            <div class="panel-body">
                <h2 class="panel-title" style="font-size: 29px;">اضافة وحدة</h2>
            </div>
        </div>

        



        <div class="col-lg-12">
            <div class="col-lg-5" style="display: flex; justify-content: flex-end">
                <asp:Button ID="Button1" runat="server" type="submit" Text="حفظ" OnClick="Button1_Click" class="btn btn-success" />
                <asp:Button ID="Button2" runat="server" type="submit" Text="تراجع" OnClick="Button2_Click" class="btn btn-primary" />
            </div>
        </div>

        <div class="box-body">
            <div class="row">
                <div class="col-lg-9 pull-right">
                    <div class="col-md-12" style="display: flex; margin-top: 10px">
                        <asp:Label ID="Label1" runat="server" Text="رقم الوحدة" Style="width: 10%"></asp:Label>
                        <asp:TextBox ID="TextBox3" Style="width: 7%" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-md-12" style="display: flex; margin-top: 10px">
                        <asp:Label ID="Label8" runat="server" Style="margin-left: 5px; width: 10%" Text="AR اسم الوحدة"></asp:Label>
                        <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" Style="width: 30%"></asp:TextBox>
                    </div>
                    <div class="col-md-12" style="display: flex; margin-top: 10px">
                        <asp:Label ID="Label7" runat="server" Style="margin-left: 5px; width: 10%" Text="EN اسم الوحدة"></asp:Label>
                        <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" Style="width: 30%"></asp:TextBox>
                    </div>

                </div>
            </div>
        </div>
    </section>
</asp:Content>
