<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="astbank.aspx.cs" Inherits="mid.astbank" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <section class="content-header">
       <%-- <div class="modal fade" tabindex="-1" id="loginModal"
                data-keyboard="false" data-backdrop="static">
                <div class="modal-dialog" style="width:55%">
                    <div class="modal-content" style="direction: ltr;">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" style="margin-right: 75%;">
                                &times;
                            </button>
                            <h4 class="modal-title">حذف سجل</h4>
                        </div>
                        <div class="modal-body">
                                <h4 style="margin-left: 59%;">هل انت متأكد من الحذف؟</h4>
                        </div>
                        <div class="modal-footer" style="margin-right: 74%">
                            <asp:Button ID="Button4" runat="server" type="submit" class="btn btn-primary" Text="حذف" OnClick="Button4_Click"></asp:Button>
                            <button type="button" class="btn btn-primary"
                                data-dismiss="modal">
                                إغلاق</button>
                        </div>
                    </div>
                </div>
            </div>--%>
        <ol class="breadcrumb"> 
             <h1 style="padding-left: 800px;">  <small style="font-size: 80%; font-weight: 400;">الاعدادات للحسابات > البيانات الاساسيه للبنوك</small></h1>
        </ol>
           <div style="margin:0 0 2% 55%">
        <asp:Label ID="Label2" runat="server" Text="اسم الشركة"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>--اختر--</asp:ListItem>
            </asp:DropDownList>
        </div>
   <div class="wrapper" id="app" style="float: left; width: 100%; margin-right: 30px;">
            <div style="direction: rtl; padding: 10px 10px 10px 55px">
                <asp:Label ID="Label1" runat="server" Text="البيانات الاساسيه للبنوك"></asp:Label>

                <asp:TextBox  Style="height: 25px; width: 135px;" ID="TextBox1" runat="server"></asp:TextBox>

                <asp:Button ID="Button1" Style="padding: 3px;" class="btn btn-primary" runat="server" Text="بحث" OnClick="Button1_Click" />


                <asp:Button ID="Button2" runat="server" Text="إضافة" OnClick="Button2_Click" Style="margin-right: 47%; background-color:#af111c" class="btn btn-success" />
             <%--    <asp:HyperLink ID="HyperLink1" runat="server" class="btn btn-primary" data-target="#loginModal" data-toggle="modal" href="#">حذف</asp:HyperLink>--%>

                <asp:Button ID="Button3" runat="server" Text="تقرير" class="btn btn-success" Style="margin-right: 15px; background-color:#075" OnClick="Button3_Click" />

            </div>

    <div style="width: 100px; position: center; height: 935px; justify-content: center; width: 100%; padding-left: 55px;padding-right: 40px;text-align: center;">
                <asp:GridView CssClass="table table-striped" ID="GridView1" BackColor="White" Style="direction: ltr; font-size: 14px;" GridLines="None" runat="server" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging" OnSelectedIndexChanging="GridView1_SelectedIndexChanging">

        <%--<Columns>
            <asp:HyperLinkField DataNavigateUrlFields="رقم_البنك" DataNavigateUrlFormatString="updatedele_bank.aspx?no={0}" HeaderText="تعديل و حذف" 
            NavigateUrl="~/updatedele_bank.aspx" Text="تعديل و حذف" />
        </Columns>--%>


        <Columns>
 
              <asp:HyperLinkField ControlStyle-BackColor="red" ControlStyle-ForeColor="White" ControlStyle-CssClass="p-2" DataNavigateUrlFields="رقم_البنك" DataNavigateUrlFormatString="ast_bank_delete.aspx?no={0}" HeaderText="حذف" NavigateUrl="~/ast_bank_delete.aspx" Text='<i class="fa fa-trash"></i>' />

        <asp:HyperLinkField ControlStyle-BackColor="Green" ControlStyle-ForeColor="White" ControlStyle-CssClass="p-2" DataNavigateUrlFields="رقم_البنك" DataNavigateUrlFormatString="updatedele_bank.aspx?no={0}" HeaderText="تعديل" NavigateUrl="~/updatedele_bank.aspx" Text='<i class="fa fa-edit"></i>' />


        

   
            
           <asp:HyperLinkField ControlStyle-BackColor="#3c8dbc" ControlStyle-ForeColor="White" ControlStyle-CssClass="p-2" DataNavigateUrlFields="رقم_البنك" DataNavigateUrlFormatString="bank_show.aspx?no={0}" HeaderText="عرض" NavigateUrl="~/bank_show.aspx" Text='<i class="fa fa-edit"></i>' />
             </Columns>
    </asp:GridView>
        </div>
       </div>
    </section>
</asp:Content>
