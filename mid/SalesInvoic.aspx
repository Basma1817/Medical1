<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SalesInvoic.aspx.cs" Inherits="mid.SalesInvoic" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .row{
            margin-top:30px;
        }
        th{
            text-align:right;
        }
     HeaderText{
         text-align:left;
     }
     #GridView1
     {
         text-align:right;
     }
    </style>
     <div class="panel panel-default col-lg-12">
        <div class="panel-body">
            <h2 class="panel-title" style="font-size: 29px;">فاتورة المبيعات </h2>
        </div>
    </div>
    <!--start company and activity-->
  <div class="row">
            <div class="col-md-6">
                <div class="form-group" style="display: flex">
                     <asp:Label ID="Label1" runat="server" Text="الشركات" style="width: 25%" ></asp:Label>
                    <asp:DropDownList ID="ddl_company" runat="server"  style="width: 50%"  AutoPostBack="true"></asp:DropDownList>

                 
                  
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group" style="display: flex">
                    <asp:Label ID="Label3" runat="server" Text="النشاط" style="width: 25%" ></asp:Label>
                    <asp:DropDownList ID="ddl_activity" runat="server"  style="width: 50%" AutoPostBack="true" OnSelectedIndexChanged="ddl_activity_SelectedIndexChanged"></asp:DropDownList>

                </div>
            </div>

        </div>

    <!--start company and activity-->


    <div class="row">
         <div class="col-md-4">
             <asp:Button ID="btn_addpill" runat="server" Text="إضافة فاتورة جديدة" class="btn btn-primary btn-lg" OnClick="btn_addpill_click" />
             

        </div>
         <div class="col-md-4">

        </div>
       
         <div class="col-md-4">
              <asp:Label ID="Label2" runat="server" Text="Search" style="width: 25%" ></asp:Label>
              <asp:TextBox ID="txt_doc" runat="server"></asp:TextBox>
            
            
        </div>
       

    </div>
   <!--new grid view-->  
     
    <asp:GridView ID="GridView1" runat="server" GridLines="None" CssClass="table table-borderless"  Style="direction: ltr;   font-size: 14px;" BackColor="White" AllowPaging="True"  OnPageIndexChanging="GridView1_PageIndexChanging" OnRowDeleting="GridView1_RowDeleting"

                 HeaderStyle-HorizontalAlign="Center"
                HeaderStyle-VerticalAlign="Middle"
                RowStyle-HorizontalAlign="Center"
                RowStyle-VerticalAlign="Middle"
        >

        
                            <Columns>
                                <%--<asp:HyperLinkField ControlStyle-BackColor="Red"  ControlStyle-ForeColor="White" ControlStyle-CssClass="p-2" DataNavigateUrlFields="رقم_الفاتورة" DataNavigateUrlFormatString="Sales_Delete.aspx?Doc_No={0}" HeaderText="حذف"  NavigateUrl="~/Sales_Delete.aspx" Text=' <i class="fa fa-trash" style="padding: 6px 5px 5px 5px;min-width: 26px;height: 30px;font-size:20px;background-color: #F00;color: white;border:none;"></i>' />--%> 
                                <asp:HyperLinkField ControlStyle-BackColor="Green" ControlStyle-ForeColor="White" ControlStyle-CssClass="p-2"   DataNavigateUrlFormatString="Sales_Edit.aspx?Doc_No={0}" HeaderText="تعديل" NavigateUrl="~/Sales_Edit.aspx" Text=' <i class="fa fa-edit" style="padding: 6px 5px 5px 5px;min-width: 26px;height: 30px;font-size:20px;background-color: #080;color: white;border:none;"></i>' >
<ControlStyle BackColor="Green" CssClass="p-2" ForeColor="White"></ControlStyle>
                                </asp:HyperLinkField>
                                <asp:HyperLinkField ControlStyle-BackColor="#3c8dbc" ControlStyle-ForeColor="White" ControlStyle-CssClass="p-2"  DataNavigateUrlFormatString=".aspx?Doc_No={0}" HeaderText="عرض" NavigateUrl="~/branches_show.aspx" Text=' <i class="fa fa-eye" style="padding: 6px 5px 5px 5px;min-width: 26px;height: 30px;font-size:20px;background-color: #3c8dbc;color: white;border:none;"></i>' >

<ControlStyle BackColor="#3C8DBC" CssClass="p-2" ForeColor="White"></ControlStyle>
                                </asp:HyperLinkField>
                                <asp:CommandField ShowDeleteButton="True"  ButtonType="Button" ControlStyle-ForeColor="red" HeaderText="حذف">

<ControlStyle ForeColor="Red"></ControlStyle>
                                </asp:CommandField>

                            </Columns>

    </asp:GridView>
                   <%--<asp:GridView ID="GridView1" GridLines="None" CssClass="table table-borderless"
                            Style="direction: ltr; font-size: 14px;" runat="server" BackColor="White" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging">
                            <Columns>
                                <asp:HyperLinkField ControlStyle-BackColor="red" ControlStyle-ForeColor="White" ControlStyle-CssClass="p-2" DataNavigateUrlFields="رقم_الفرع" DataNavigateUrlFormatString=".aspx?Brn_No={0}" HeaderText="حذف" NavigateUrl="~/branchs_delete.aspx"  Text=' <i class="fa fa-trash" style="padding: 6px 5px 5px 5px;min-width: 26px;height: 30px;font-size:20px;background-color: #F00;color: white;border:none;"></i>' /> 

                                <asp:HyperLinkField ControlStyle-BackColor="Green" ControlStyle-ForeColor="White" ControlStyle-CssClass="p-2" DataNavigateUrlFields="رقم_الفرع" DataNavigateUrlFormatString="updatebranches.aspx?Brn_No={0}" HeaderText="تعديل" NavigateUrl="~/updatebranches.aspx" Text=' <i class="fa fa-edit" style="padding: 6px 5px 5px 5px;min-width: 26px;height: 30px;font-size:20px;background-color: #080;color: white;border:none;"></i>' />



                                <asp:HyperLinkField ControlStyle-BackColor="#3c8dbc" ControlStyle-ForeColor="White" ControlStyle-CssClass="p-2" DataNavigateUrlFields="رقم_الفرع" DataNavigateUrlFormatString="branches_show.aspx?Brn_No={0}" HeaderText="عرض" NavigateUrl="~/branches_show.aspx" Text=' <i class="fa fa-eye" style="padding: 6px 5px 5px 5px;min-width: 26px;height: 30px;font-size:20px;background-color: #3c8dbc;color: white;border:none;"></i>' />
                            </Columns>
                        </asp:GridView>--%>

   <!--new grid view-->

      <%-- <div class="row">
        <asp:GridView ID="gv_data" runat="server" CellPadding="15" Width="100%" ForeColor="#333333"  CellSpacing="10">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
            
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
            
        </asp:GridView>
          
    </div>
   --%>


</asp:Content>
