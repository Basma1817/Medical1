<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Pur_Invoic.aspx.cs" Inherits="mid.Pur_Invoic" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
         <section class="content-header">
         <div class="panel panel-default col-lg-12">
         <div class="panel-body">
            <h2 class="panel-title" style="font-size: 29px;">فواتير الشراء</h2>
        </div>
        </div>

      <%--  <div class="wrapper" id="app" style="float: left; width: 100%; margin-right: 30px;">--%>
            <div style="direction: rtl; padding: 10px 10px 10px 55px">
                <asp:Label ID="Label1" runat="server" Text="الفرع"></asp:Label>

                <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>

                <asp:Button ID="Button1" Style="padding: 3px;" class="btn btn-primary" runat="server" Text="بحث" OnClick="Button1_Click" />


                <asp:Button ID="Button2" runat="server" Text="إضافة" OnClick="Button2_Click" Style="margin-right: 555px;" class="btn btn-success" />

                <asp:Button ID="Button3" runat="server" Text="تقرير" class="btn btn-success" Style="margin-right: 15px;"/>
            </div>

          <%--   <div style="width: 100px; position: center; height: 935px; justify-content: center; width: 100%; padding-left: 55px;padding-right: 40px;text-align: center;">--%>
                 <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped" BackColor="White" Style="direction: ltr; font-size: 14%;" GridLines="None"  AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging">
                     <Columns>
                        <asp:HyperLinkField ControlStyle-BackColor="Green" ControlStyle-ForeColor="White" ControlStyle-CssClass="p-2" DataNavigateUrlFields="الرقم" DataNavigateUrlFormatString="searchInovice.aspx?no={0}" HeaderText="تعديل" NavigateUrl="~/searchInovice.aspx" Text='<i class="fa fa-edit"></i>' />
                         <asp:HyperLinkField ControlStyle-BackColor="Silver" ControlStyle-ForeColor="White" ControlStyle-CssClass="p-2" DataNavigateUrlFields="الرقم" DataNavigateUrlFormatString="viewInovice.aspx?no={0}" HeaderText="عرض" NavigateUrl="~/viewInovice.aspx" Text='<i class="fa fa-edit"></i>' />
                        <%--<asp:HyperLinkField ControlStyle-BackColor="Red" ControlStyle-ForeColor="White" ControlStyle-CssClass="p-2" DataNavigateUrlFields="الرقم" DataNavigateUrlFormatString="updatedeleactivties_types.aspx?no={0}" HeaderText="حذف" NavigateUrl="~/updatedeleactivties_types.aspx" Text = '<i class="fa fa-trash"></i>' />--%>
                    </Columns>
                 </asp:GridView>
           <%--  </div>
            </div>--%>
             </section>
           </asp:Content>
