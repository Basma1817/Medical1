<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="salesman.aspx.cs" Inherits="mid.salesman" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <section class="content-header">

        <ol class="breadcrumb" style="width: 1050px;">
            <h1 ><small>اعدادات المبيعات > مندوبين المبيعات</small></h1>
        </ol>
          <div style="margin:0 0 2% 51%">
        <asp:Label ID="Label3" runat="server" Text="اسم الشركة"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>--اختر--</asp:ListItem>
            </asp:DropDownList>
        </div>

        <div class="wrapper" id="app" style="float: left; width: 100%; margin-right: 30px;">
            <div style="direction: rtl; padding: 10px 10px 10px 55px">
                <asp:Label ID="Label2" runat="server" Text="مندوبين المبيعات"></asp:Label>

                <asp:Label ID="Label1" runat="server" Text="الرقم"></asp:Label>

                <asp:TextBox  Style="height: 25px; width: 135px;" ID="TextBox1" runat="server"></asp:TextBox>

                <asp:Button ID="Button1" Style="padding: 3px;" class="btn btn-primary" runat="server" Text="بحث" OnClick="Button1_Click" />


                <asp:Button ID="Button2" runat="server" Text="إضافة" OnClick="Button2_Click" Style="margin-right: 47%; background-color:#af111c" class="btn btn-success" />

                <asp:Button ID="Button3" runat="server" Text="تقرير" class="btn btn-success" Style="margin-right: 15px; background-color:#075" OnClick="Button3_Click" />

            </div>

            <div style="width: 100px; position: center; height: 935px; justify-content: center; width: 100%; padding-left: 55px; padding-right: 40px; text-align: center;">
                <asp:GridView ID="GridView1" CssClass="table table-striped" GridLines="None" BackColor="White" Style="direction: ltr; font-size: 14px;" runat="server" OnPageIndexChanging="GridView1_PageIndexChanging" AllowPaging="True">
                    <Columns>

                            <asp:HyperLinkField DataNavigateUrlFields="الرقم" ControlStyle-BackColor="red" ControlStyle-ForeColor="White" ControlStyle-CssClass="p-2" DataNavigateUrlFormatString="salesman_delete.aspx?no={0}" HeaderText="حذف" NavigateUrl="~/salesman_delete.aspx" Text='<i class="fa fa-trash"></i>' />



                        <asp:HyperLinkField DataNavigateUrlFields="الرقم" ControlStyle-BackColor="Green" ControlStyle-ForeColor="White" ControlStyle-CssClass="p-2" DataNavigateUrlFormatString="updatedelesalesman.aspx?no={0}" HeaderText="تعديل" NavigateUrl="~/updatedelesalesman.aspx" Text='<i class="fa fa-edit"></i>' />
                       

                         <asp:HyperLinkField ControlStyle-BackColor="#3c8dbc" ControlStyle-ForeColor="White" ControlStyle-CssClass="p-2" DataNavigateUrlFields="الرقم" DataNavigateUrlFormatString="salesman_show.aspx?no={0}" HeaderText="عرض" NavigateUrl="~/salesman_show.aspx" Text='<i class="fa fa-edit"></i>'>
                            <ControlStyle BackColor="#3C8DBC" CssClass="p-2" ForeColor="White"></ControlStyle>
                        </asp:HyperLinkField>
                    </Columns>
                </asp:GridView>
            </div>

        </div>
    </section>
</asp:Content>
