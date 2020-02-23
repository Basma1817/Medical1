<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="mts_lc.aspx.cs" Inherits="mid.mts_lc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-12">
            <section class="content-header">
                <h1>
                    <a href="basic_info.aspx"><i class="fa fa-dashboard"></i>البيانات الاساسية </a>
                    <small><small>
                        <asp:Label ID="Label15" runat="server" Text=""></asp:Label></small></small>
                </h1>
                <ol class="breadcrumb">
                    <li><a href="Dashboard.aspx"><i class="fa fa-dashboard"></i>Dashboard </a></li>
                    <li><a href="basic_info.aspx">البيانات الاساسية</a></li>
                     <li><a href="mts_lc.aspx">البيانات الأساسية للإعتمادات</a></li>
                  
                </ol>
            </section>
        </div>
    </div>

    <section class="content-header">
        <div class="panel panel-default col-lg-12">
        <div class="panel-body">
            <h2 class="panel-title" style="font-size: 29px;">البيانات الأساسية للإعتمادات</h2>
        </div>
    </div>

        <div style="margin:0 0 2% 55%">
        <asp:Label ID="Label2" runat="server" Text="اسم الشركة"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>--اختر--</asp:ListItem>
            </asp:DropDownList>
        </div>
       
            <div style="direction: rtl; padding: 10px 10px 10px 55px">

                <asp:Label ID="Label1" runat="server" Text="الرقم"></asp:Label>

                <asp:TextBox Style="border-radius: 25px; height: 25px; width: 135px;" ID="TextBox1" runat="server"></asp:TextBox>

                <asp:Button ID="Button1" Style="padding: 3px;" class="btn btn-primary" runat="server" Text="بحث" OnClick="Button1_Click" />


                <asp:Button ID="Button2" runat="server" Text="إضافة" OnClick="Button2_Click" Style="margin-right: 555px;" class="btn btn-success" />

                <asp:Button ID="Button3" runat="server" Text="تقرير" class="btn btn-success" Style="margin-right: 15px;" OnClick="Button3_Click" />
            </div>


            <div style="width: 100px; position: center; height: 935px; justify-content: center; width: 100%; padding-left: 55px; padding-right: 40px; text-align: center;">
                <asp:GridView ID="GridView1" CssClass="table table-striped" runat="server" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging" BackColor="White" Style="direction: ltr; font-size: 14px;" GridLines="None">
                    <Columns>
                        <asp:HyperLinkField ControlStyle-BackColor="Green" ControlStyle-ForeColor="White" ControlStyle-CssClass="p-2" DataNavigateUrlFields="الرقم" DataNavigateUrlFormatString="updatedele_mts_lc.aspx?no={0}" HeaderText="تعديل " NavigateUrl="~/updatedele_mts_lc.aspx" Text='<i class="fa fa-edit"></i>' />

                        <asp:HyperLinkField ControlStyle-BackColor="Red" ControlStyle-ForeColor="White" ControlStyle-CssClass="p-2" DataNavigateUrlFields="الرقم" DataNavigateUrlFormatString="updatedele_mts_lc.aspx?no={0}" HeaderText="حذف" NavigateUrl="~/updatedele_mts_lc.aspx" Text='<i class="fa fa-trash"></i>' />

                    </Columns>
                </asp:GridView>
            </div>

        </div>
    </section>













</asp:Content>
