<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="mtsitem_unit.aspx.cs" Inherits="mid.mtsitem_unit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <section class="content-header">
       
    <div class="panel panel-default col-lg-12">
        <div class="panel-body">
            <h2 class="panel-title" style="font-size: 29px;">الوحدات للأصناف</h2>
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
       <%--  <div class="wrapper" id="app" style="float: left; width: 100%; margin-right: 30px;">--%>
            <div style="direction: rtl; padding: 10px 10px 10px 55px">
                <asp:Label ID="Label1" runat="server" Text="رقم الوحدة"  Style="color: aliceblue;"></asp:Label>

                <asp:TextBox  Style="border-radius: 25px; height: 25px; width: 135px;" ID="TextBox3" runat="server"></asp:TextBox>

                <asp:Button ID="Button1" Style="padding: 3px;" class="btn btn-primary" runat="server" Text="بحث" OnClick="Button1_Click" />


                <asp:Button ID="Button2" runat="server" Text="إضافة" OnClick="Button2_Click" Style="margin-right: 555px;" class="btn btn-success" />

                <asp:Button ID="Button3" runat="server" Text="تقرير" class="btn btn-success" Style="margin-right: 15px;" OnClick="Button3_Click" />

         </div>


                <div>

                    <asp:GridView ID="GridView1" CssClass="table table-striped" runat="server" Style="direction: ltr; font-size: 14px;" GridLines="None" OnPageIndexChanging="GridView1_PageIndexChanging" BackColor="White">
                        <Columns>
                            <asp:HyperLinkField ControlStyle-BackColor="red" ControlStyle-ForeColor="White" ControlStyle-CssClass="p-2" DataNavigateUrlFields="الرقم" DataNavigateUrlFormatString="mts_emp_cntract_delete.aspx?no={0}" HeaderText="حذف" NavigateUrl="~/mts_emp_cntract_delete.aspx" Text='<i class="fa fa-trash"></i>' />

                            <asp:HyperLinkField ControlStyle-BackColor="Green" ControlStyle-ForeColor="White" ControlStyle-CssClass="p-2" DataNavigateUrlFields="الرقم" DataNavigateUrlFormatString="update_mts_emp_cntrct.aspx?no={0}" HeaderText="تعديل" NavigateUrl="~/update_mts_emp_cntrct.aspx" Text='<i class="fa fa-edit"></i>' />

                            <asp:HyperLinkField ControlStyle-BackColor="#3c8dbc" ControlStyle-ForeColor="White" ControlStyle-CssClass="p-2" DataNavigateUrlFields="الرقم" DataNavigateUrlFormatString="mts_emp_contrct_show.aspx?no={0}" HeaderText="عرض" NavigateUrl="~/mts_emp_contrct_show.aspx" Text='<i class="fa fa-edit"></i>' />
                        </Columns>
                    </asp:GridView>
                </div>

            </div>
      
    </section>
</asp:Content>
