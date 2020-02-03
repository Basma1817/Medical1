<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="insert_mtsitem_unit.aspx.cs" Inherits="mid.insert_mtsitem_unit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<section class="content-header">
       
    <div class="panel panel-default col-lg-12">
        <div class="panel-body">
            <h2 class="panel-title" style="font-size: 29px;">اضافة وحدة</h2>
        </div>
    </div>
     
         <div class="row">

        <div class="col-lg-5" style="display: flex; justify-content: flex-end">
          
        </div>
         <div class="col-lg-1">
            <div class="form-group">
                <asp:Label ID="Label17" runat="server" Text="رقم النشاط"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <div  class="col-md-2">
            <div class="form-group">
                <asp:Label ID="Label3" runat="server" Text="النشاط"></asp:Label>
                <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control" AutoPostBack="true">
                </asp:DropDownList>
            </div>
        </div>

        <div class="col-lg-1">
            <div class="form-group">
                <asp:Label ID="Label12" runat="server" Text="رقم الشركة"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <div class="col-lg-3">
            <div class="form-group">
                <asp:Label ID="Label4" runat="server" Text="أسم الشركة"></asp:Label>
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control"
                AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
            </div>
        </div>
    </div>
     <div class="wrapper" id="app" style="float: left; width: 100%; margin-right: 30px;">
            <div style="direction: rtl; padding: 10px 10px 10px 55px">
              
                <asp:Button ID="Button1" Style="padding: 3px;" class="btn btn-primary" runat="server" Text="حفظ" OnClick="Button1_Click" />


                <asp:Button ID="Button2" runat="server" Text="تراجع" OnClick="Button2_Click" Style="margin-right: 555px;" class="btn btn-success" />
         </div>

          <div class="row">
                </div>
    </section>
</asp:Content>
