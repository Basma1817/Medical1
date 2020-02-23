<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="mts_emp_cntrct.aspx.cs" Inherits="mid.mts_emp_cntrct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-12">
            <section class="content-header">
                <h1>
                    <a href="basic_info.aspx"><i class="fa fa-dashboard"></i>البيانات الاساسية </a>
                    <small><small>
                        <asp:Label ID="Label15" runat="server" Text=""></asp:Label></small></small>
                </h1>
                <ol class="breadcrumb">
                    <li><a href="Dashboard.aspx"><i class="fa fa-dashboard"></i>Dashboard </a></li>
                    <li><a href="basic_info.aspx">البيانات الاساسية</a></li>
                  <li><a href="mts_emp_cntrct.aspx">البيانات الاساسية للموظفين</a></li>
                </ol>
            </section>
        </div>
    </div>

    <section class="content-header">
        <div class="panel panel-default col-lg-12">
        <div class="panel-body">
            <h2 class="panel-title" style="font-size: 29px;">البيانات الاساسية للموظفين</h2>
        </div>
    </div>
     
         <div class="row">

        <div class="col-lg-5" style="display: flex; justify-content: flex-end">
          
        </div>
         <div class="col-lg-1">
            <div class="form-group">
                <asp:Label ID="Label17" runat="server" Text="رقم النشاط"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <div  class="col-md-2">
            <div class="form-group">
                <asp:Label ID="Label3" runat="server" Text="النشاط"></asp:Label>
                <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                </asp:DropDownList>
            </div>
        </div>

        <div class="col-lg-1">
            <div class="form-group">
                <asp:Label ID="Label12" runat="server" Text="رقم الشركة"></asp:Label>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
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
            
        <div class="row">
            <div style="direction: rtl; padding: 10px 10px 10px 55px">
                <asp:Label ID="Label1" runat="server" Text="رقم الموظف" Style="color: aliceblue;"></asp:Label>

                <asp:TextBox  Style="border-radius: 25px; height: 25px; width: 135px;" ID="TextBox1" runat="server"></asp:TextBox>

                <asp:Button ID="Button1" Style="padding: 3px;" class="btn btn-primary" runat="server" Text="بحث" OnClick="Button1_Click" />


                <asp:Button ID="Button2" runat="server" Text="إضافة" OnClick="Button2_Click" Style="margin-right: 555px;" class="btn btn-success" />

                <asp:Button ID="Button3" runat="server" Text="تقرير" class="btn btn-success" Style="margin-right: 15px;" OnClick="Button3_Click" />

            </div>

            <div>
                <asp:GridView ID="GridView1" CssClass="table table-striped" runat="server" Style="direction: ltr; font-size: 14px;" GridLines="None" OnPageIndexChanging="GridView1_PageIndexChanging" BackColor="White"  >
                    <Columns>
                         <asp:HyperLinkField ControlStyle-BackColor="red" ControlStyle-ForeColor="White" ControlStyle-CssClass="p-2" DataNavigateUrlFields="الرقم" DataNavigateUrlFormatString="mts_emp_cntract_delete.aspx?no={0}" HeaderText="حذف" NavigateUrl="~/mts_emp_cntract_delete.aspx" Text='<i class="fa fa-trash"></i>' />

                        <asp:HyperLinkField ControlStyle-BackColor="Green" ControlStyle-ForeColor="White" ControlStyle-CssClass="p-2" DataNavigateUrlFields="الرقم" DataNavigateUrlFormatString="update_mts_emp_cntrct.aspx?no={0}" HeaderText="تعديل" NavigateUrl="~/update_mts_emp_cntrct.aspx" Text='<i class="fa fa-edit"></i>' />


                           <asp:HyperLinkField ControlStyle-BackColor=#3c8dbc ControlStyle-ForeColor="White" ControlStyle-CssClass="p-2" DataNavigateUrlFields="الرقم" DataNavigateUrlFormatString="mts_emp_contrct_show.aspx?no={0}" HeaderText="عرض" NavigateUrl="~/mts_emp_contrct_show.aspx" Text='<i class="fa fa-edit"></i>' />
                    </Columns>
                </asp:GridView>

            </div>



        </div>
    </section>

</asp:Content>
