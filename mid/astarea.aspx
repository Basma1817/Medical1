<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="astarea.aspx.cs" Inherits="mid.astarea" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <section class="content-header">

        <ol class="breadcrumb">
            <h1 style="padding-left: 680px;"><small>اعدادات المبيعات > المناطق بالمدن</small></h1>
        </ol>
          <div style="margin:0 0 2% 51%">
        <asp:Label ID="Label2" runat="server" Text="اسم الشركة"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>--اختر--</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="wrapper" id="app" style="float: left; width: 100%; margin-right: 30px;">
            <div style="direction: rtl; padding: 10px 10px 10px 55px">
                <asp:Label ID="Label1" runat="server" Text="المناطق بالمدن"></asp:Label>

                <asp:TextBox  Style="height: 25px; width: 135px;" ID="TextBox1" runat="server"></asp:TextBox>

                <asp:Button ID="Button1" Style="padding: 3px;" class="btn btn-primary" runat="server" Text="بحث" OnClick="Button1_Click" />


                <asp:Button ID="Button2" runat="server" Text="إضافة" OnClick="Button2_Click" Style="margin-right: 47%; background-color:#af111c" class="btn btn-success" />

                <asp:Button ID="Button3" runat="server" Text="تقرير" class="btn btn-success" Style="margin-right: 15px; background-color:#075" OnClick="Button3_Click" />
            </div>

            <div style="width: 100px; position: center; height: 935px; justify-content: center; width: 100%; padding-left: 55px; padding-right: 40px; text-align: center;">
                <asp:GridView ID="GridView1" BackColor="White" CssClass="table table-striped" Style="direction: ltr; font-size: 14px;" GridLines="None" runat="server" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging">
                    <Columns>
                           <asp:HyperLinkField ControlStyle-BackColor="red" ControlStyle-ForeColor="White" ControlStyle-CssClass="p-2" DataNavigateUrlFields="رقم_المنطقة" DataNavigateUrlFormatString="ast_area_delete.aspx?no={0}" HeaderText="حذف" NavigateUrl="~/ast_area_delete.aspx" Text='<i class="fa fa-trash"></i>' />


                        <asp:HyperLinkField ControlStyle-BackColor="Green" ControlStyle-ForeColor="White" ControlStyle-CssClass="p-2" DataNavigateUrlFields="رقم_المنطقة" DataNavigateUrlFormatString="updatedelea_area.aspx?no={0}" HeaderText="تعديل" NavigateUrl="~/updatedelea_area.aspx" Text='<i class="fa fa-edit"></i>' />

                       <asp:HyperLinkField ControlStyle-BackColor="#3c8dbc" ControlStyle-ForeColor="White" ControlStyle-CssClass="p-2" DataNavigateUrlFields="رقم_المنطقة" DataNavigateUrlFormatString="ast_area_show.aspx?no={0}" HeaderText="عرض" NavigateUrl="~/ast_area_show.aspx" Text='<i class="fa fa-edit"></i>'>
                            <ControlStyle BackColor="#3C8DBC" CssClass="p-2" ForeColor="White"></ControlStyle>
                        </asp:HyperLinkField>
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </section>
</asp:Content>
