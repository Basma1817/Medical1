<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="astcompany.aspx.cs" Inherits="mid.astcompany" %>

  <asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
         <section class="content-header">
         <div class="panel panel-default col-lg-12">
         <div class="panel-body">
            <h2 class="panel-title" style="font-size: 29px;">بيانات الشركات</h2>
        </div>
        </div>
            <div class="box-body">
                <div>
                    <div class="box-title" dir="rtl">
                        <asp:Label ID="Label2" runat="server" Text="اسم الشركة"></asp:Label>
                        &nbsp;
                        <asp:DropDownList ID="DropDownList1" runat="server">
                        </asp:DropDownList>

                    </div>
                    <br />
                    <div style="direction: rtl;">
                        <asp:Label ID="Label1" runat="server" Text="بيانات الشركات"></asp:Label>

                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

                        <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="بحث" OnClick="Button1_Click" />


                        <asp:Button ID="Button3" runat="server" Text="تقرير" class="btn btn-success" Style="border: none; float: left;" OnClick="Button3_Click" />


                        <asp:Button ID="Button2" runat="server" Text=" + إضافة" OnClick="Button2_Click" Style="float: left; margin: 0 5px; background-color: #af111c; border: none;" class="btn btn-success" />
                    </div>
                    <br />
                    <div>

                        <asp:GridView CssClass="table table-striped" ID="GridView1" BackColor="White" Style="direction: ltr; font-size: 14px;" GridLines="None" runat="server" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging" OnSelectedIndexChanging="GridView1_SelectedIndexChanging">

                            <Columns>
                                <asp:HyperLinkField ControlStyle-BackColor="red" ControlStyle-ForeColor="White" ControlStyle-CssClass="p-2" DataNavigateUrlFields="رقم_الشركة" DataNavigateUrlFormatString="astcompany_delete.aspx?no={0}" HeaderText="حذف" NavigateUrl="~/astcompany_delete.aspx" Text=' <i class="fa fa-trash" style="padding: 6px 5px 5px 5px;min-width: 26px;height: 30px;font-size:20px;background-color: #F00;color: white;border:none;"></i>' />


                                <asp:HyperLinkField ControlStyle-BackColor="Green" ControlStyle-ForeColor="White" ControlStyle-CssClass="p-2" DataNavigateUrlFields="رقم_الشركة" DataNavigateUrlFormatString="updatedele_astcompany.aspx?no={0}" HeaderText="تعديل" NavigateUrl="~/updatedele_astcompany.aspx" Text=' <i class="fa fa-edit" style="padding: 6px 5px 5px 5px;min-width: 26px;height: 30px;font-size:20px;background-color: #080;color: white;border:none;"></i>' />



                                <asp:HyperLinkField ControlStyle-BackColor="#3c8dbc" ControlStyle-ForeColor="White" ControlStyle-CssClass="p-2" DataNavigateUrlFields="رقم_الشركة" DataNavigateUrlFormatString="ast_company_show.aspx?no={0}" HeaderText="عرض" NavigateUrl="~/ast_company_show.aspx" Text=' <i class="fa fa-eye" style="padding: 6px 5px 5px 5px;min-width: 26px;height: 30px;font-size:20px;background-color: #3c8dbc;color: white;border:none;"></i>' />


                            </Columns>
                        </asp:GridView>

                    </div>
                </div>

            </div>
          
            
    </section>

</asp:Content>
