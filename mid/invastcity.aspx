<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="invastcity.aspx.cs" Inherits="mid.invastcity" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

 <div class="row">
        <div class="col-md-12">
            <section class="content-header">
                <h1>
                    <a href="sale_settings.aspx"><i class="fa fa-dashboard"></i>اعدادات المبيعات </a>
                    <small><small>
                        <asp:Label ID="Label3" runat="server" Text=""></asp:Label></small></small>
                </h1>
                <ol class="breadcrumb">
                    <li><a href="Dashboard.aspx"><i class="fa fa-dashboard"></i>Dashboard </a></li>
                    <li><a href="basic_settings2.aspx">الاعدادات</a></li>
                    <li ><a href="sale_settings.aspx">اعدادات المبيعات</a></li>
                     <li ><a href="invastcity.aspx">المدن الرئيسية</a></li>
                </ol>
            </section>
        </div>
    </div>

    
    <div class="panel panel-default col-lg-12">
         <div class="panel-body">
            <h2 class="panel-title" style="font-size: 29px;">المدن الرئيسية </h2>
        </div>
        </div>

        <div style="margin:0 0 2% 55%">
        <asp:Label ID="Label2" runat="server" Text="اسم الشركة"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>--اختر--</asp:ListItem>
            </asp:DropDownList>
        </div>
      
              <div style="direction: rtl; padding: 10px 10px 10px 55px">
            <asp:Label ID="Label1" runat="server" Text="المدن الرئيسية"></asp:Label>
                
           <asp:TextBox  Style="height: 25px; width: 135px;" ID="TextBox1" runat="server"></asp:TextBox>

                <asp:Button ID="Button1" Style="padding: 3px;" class="btn btn-primary" runat="server" Text="بحث" OnClick="Button1_Click" />


                <asp:Button ID="Button2" runat="server" Text="إضافة" OnClick="Button2_Click" Style="margin-right: 47%; background-color:#af111c" class="btn btn-success" />

                <asp:Button ID="Button3" runat="server" Text="تقرير" class="btn btn-success" Style="margin-right: 15px; background-color:#075" OnClick="Button3_Click" />
                      
            

         
  </div>
   
<div style="width: 100px; position: center; height: 935px; justify-content: center; width: 100%; padding-left: 55px;padding-right: 40px;text-align: center;">
    <asp:GridView ID="GridView1" BackColor="White" CssClass="table table-striped" Style="direction: ltr; font-size: 14px;" GridLines="None" runat="server" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging">
        <Columns>
            <asp:HyperLinkField ControlStyle-BackColor="red" ControlStyle-ForeColor="White" ControlStyle-CssClass="p-2" DataNavigateUrlFields="الرقم" DataNavigateUrlFormatString="~/invacity_delete.aspx?no={0}" HeaderText="حذف" NavigateUrl="~/invacity_delete.aspx"  Text='<i class="fa fa-trash"></i>' />



            <asp:HyperLinkField ControlStyle-BackColor="Green" ControlStyle-ForeColor="White" ControlStyle-CssClass="p-2" DataNavigateUrlFields="الرقم" DataNavigateUrlFormatString="~/updatedeleinvastcity.aspx?no={0}" HeaderText="تعديل" NavigateUrl="~/updatedeleinvastcity.aspx"  Text='<i class="fa fa-edit"></i>' />

           <asp:HyperLinkField ControlStyle-BackColor="#3c8dbc" ControlStyle-ForeColor="White" ControlStyle-CssClass="p-2" DataNavigateUrlFields="الرقم" DataNavigateUrlFormatString="invacity_show.aspx?no={0}" HeaderText="عرض" NavigateUrl="~/invacity_show.aspx" Text='<i class="fa fa-edit"></i>'>
                            <ControlStyle BackColor="#3C8DBC" CssClass="p-2" ForeColor="White"></ControlStyle>
                        </asp:HyperLinkField>
        </Columns>
    </asp:GridView>
    </div>
            </div>
         </section> 
</asp:Content>
