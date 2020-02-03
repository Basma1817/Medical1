<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="depstat.aspx.cs" Inherits="mid.depstat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <section class="content-header">
        <ol class="breadcrumb" style="width: 1050px;">
            <h1><small>اعدادات الاصول > طريقة الاهلاك
            </small></h1>
        </ol>
        <div style="margin:0 0 2% 55%">
        <asp:Label ID="Label2" runat="server" Text="اسم الشركة"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>--اختر--</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="wrapper" id="app" style="float: left; width: 100%; margin-right: 30px;">
            <div style="direction: rtl; padding: 10px 10px 10px 55px">
                <asp:Label ID="Label1" runat="server" Text="طريقة الإهلاك"></asp:Label>

                <asp:TextBox Style="height: 25px; width: 135px;" ID="TextBox1" runat="server"></asp:TextBox>

                <asp:Button ID="Button1" Style="padding: 3px;" class="btn btn-primary" runat="server" Text="بحث" OnClick="Button1_Click" />


                <asp:Button ID="Button2" runat="server" Text="إضافة" OnClick="Button2_Click" Style="margin-right: 47%; background-color: #af111c" class="btn btn-success" />

                <asp:Button ID="Button3" runat="server" Text="تقرير" class="btn btn-success" Style="margin-right: 15px; background-color: #075" OnClick="Button3_Click" />

            </div>
            <div style="width: 100px; position: center; height: 935px; justify-content: center; width: 100%; padding-left: 55px; padding-right: 40px; text-align: center;">
                <asp:GridView ID="GridView1" BackColor="White" CssClass="table table-striped" Style="direction: ltr; font-size: 14px;" GridLines="None" runat="server" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging" OnSelectedIndexChanging="GridView1_SelectedIndexChanging">
                    <Columns>
                        <asp:HyperLinkField ControlStyle-BackColor="red" ControlStyle-ForeColor="White" ControlStyle-CssClass="p-2" DataNavigateUrlFields="الرقم" DataNavigateUrlFormatString="depstat_delete.aspx?no={0}" HeaderText="حذف" NavigateUrl="~/depstat_delete.aspx" Text='<i class="fa fa-edit"></i>' />




                        <asp:HyperLinkField ControlStyle-BackColor="Green" ControlStyle-ForeColor="White" ControlStyle-CssClass="p-2" DataNavigateUrlFields="الرقم" DataNavigateUrlFormatString="updatedele_depstate.aspx?no={0}" HeaderText="تعديل" NavigateUrl="~/updatedele_depstate.aspx" Text='<i class="fa fa-edit"></i>' />



                        <asp:HyperLinkField ControlStyle-BackColor="#3c8dbc" ControlStyle-ForeColor="White" ControlStyle-CssClass="p-2" DataNavigateUrlFields="الرقم" DataNavigateUrlFormatString="depstate_show.aspx?no={0}" HeaderText="عرض" NavigateUrl="~/depstate_show.aspx" Text='<i class="fa fa-edit"></i>' />
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </section>
</asp:Content>
