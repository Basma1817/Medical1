<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="astmarket.aspx.cs" Inherits="mid.astmarket" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <section class="content-header">

        <ol class="breadcrumb">
            <h1 style="padding-left: 729px;"><small>اعدادات المبيعات > مندوبين التسويق</small></h1>
        </ol>
          <div style="margin:0 0 2% 51%">
        <asp:Label ID="Label2" runat="server" Text="اسم الشركة"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>--اختر--</asp:ListItem>
            </asp:DropDownList>
        </div>

        <div class="wrapper" id="app" style="float: left; width: 100%; margin-right: 30px;">
            <div style="direction: rtl; padding: 10px 10px 10px 55px">
                <asp:Label ID="Label1" runat="server" Text="مندوبين التسويق"></asp:Label>

                <asp:TextBox  Style="border-radius: 25px; height: 25px; width: 135px;" ID="TextBox1" runat="server"></asp:TextBox>

                <asp:Button ID="Button1" Style="padding: 3px;" class="btn btn-primary" runat="server" Text="بحث" OnClick="Button1_Click" />


                <asp:Button ID="Button2" runat="server" Text="إضافة" OnClick="Button2_Click" Style="margin-right: 47%; background-color:#af111c" class="btn btn-success" />

                <asp:Button ID="Button3" runat="server" Text="تقرير" class="btn btn-success" Style="margin-right: 15px; background-color:#075" OnClick="Button3_Click" />
            </div>

            <div style="width: 100px; position: center; height: 935px; justify-content: center; width: 100%; padding-left: 55px; padding-right: 40px; text-align: center;">
                <asp:GridView ID="GridView1" CssClass="table table-striped" BackColor="White" Style="direction: ltr; font-size: 14px;" GridLines="None" runat="server" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging" OnSelectedIndexChanging="GridView1_SelectedIndexChanging">
                    <Columns>
                          <asp:HyperLinkField DataNavigateUrlFields="الرقم" DataNavigateUrlFormatString="astmarket_delete.aspx?no={0}" ControlStyle-BackColor="red" ControlStyle-ForeColor="White" ControlStyle-CssClass="p-2" HeaderText="حذف" NavigateUrl="~/astmarket_delete.aspx" Text='<i class="fa fa-trash"></i>'/> 



                        <asp:HyperLinkField DataNavigateUrlFields="الرقم" DataNavigateUrlFormatString="updatedeleastmarket.aspx?no={0}" ControlStyle-BackColor="Green" ControlStyle-ForeColor="White" ControlStyle-CssClass="p-2" HeaderText="تعديل" NavigateUrl="~/updatedeleastmarket.aspx" Text='<i class="fa fa-edit"></i>'/>
                        

                          <asp:HyperLinkField DataNavigateUrlFields="الرقم" DataNavigateUrlFormatString="ast_market_show.aspx?no={0}" ControlStyle-BackColor="#3c8dbc" ControlStyle-ForeColor="White" ControlStyle-CssClass="p-2" HeaderText="عرض" NavigateUrl="~/ast_market_show.aspx" Text='<i class="fa fa-edit"></i>'/>
                    </Columns>
                </asp:GridView>
            </div>
        </div>
</asp:Content>
