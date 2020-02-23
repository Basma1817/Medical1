<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="activity_types.aspx.cs" Inherits="mid.activity_types" %>

  <asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
      <div class="row">
        <div class="col-md-12">
            <section class="content-header">
                <h1>
                    <a href="basic_settings.aspx"><i class="fa fa-dashboard"></i>اعدادات لوحة التحكم </a>
                    <small><small>
                        <asp:Label ID="Label2" runat="server" Text=""></asp:Label></small></small>
                </h1>
                <ol class="breadcrumb">
                    <li><a href="Dashboard.aspx"><i class="fa fa-dashboard"></i>Dashboard </a></li>
                    <li><a href="basic_settings.aspx">اعدادات لوحة التحكم</a></li>
                      <li><a href="activity_types.aspx">انواع الانشطة</a></li>
                 
                </ol>
            </section>
        </div>
    </div>
         <section class="content-header">
         <div class="panel panel-default col-lg-12">
         <div class="panel-body">
            <h2 class="panel-title" style="font-size: 29px;">انواع الانشطة</h2>
        </div>
        </div>
       <div class="row">
        <div class="col-lg-5">
        </div>
         <div class="col-lg-1">
            <div class="form-group" style="display: flex; justify-content: space-between">
                <asp:Label ID="Label17" runat="server" Text="الرقم"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" style="display: flex;"></asp:TextBox>
            </div>
        </div>
        <div  class="col-md-2">
            <div class="form-group"style="display: flex; justify-content: space-between">
                <asp:Label ID="Label4" runat="server" Text="النشاط"></asp:Label>
                <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control" AutoPostBack="true">
                </asp:DropDownList>
            </div>
        </div>
        <div class="col-lg-1">
            <div class="form-group" style="display: flex; justify-content: space-between">
                <asp:Label ID="Label12" runat="server" Text="الرقم"></asp:Label>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
          </div>
            <div class="col-lg-3">
            <div class="form-group" style="display: flex; justify-content: space-between">
                <asp:Label ID="Label5" runat="server" Text="الشركة"></asp:Label>
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control"
                AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
            </div>
        </div>
            </div>
                    <br />
                    <div style="direction: rtl; ">
                <asp:Label ID="Label1" runat="server" Text="الانشطه بالشركه"></asp:Label>

                <asp:TextBox  ID="TextBox1" runat="server"></asp:TextBox>

                <asp:Button ID="Button1"  class="btn btn-primary" runat="server" Text="بحث" OnClick="Button1_Click" />
                
                <asp:Button ID="Button3" runat="server" Text="تقرير" class="btn btn-success" Style="border: none; float:left; margin:0 5px;" OnClick="Button3_Click" />
    

                <asp:Button ID="Button2" runat="server" Text=" + إضافة" OnClick="Button2_Click" Style=" float:left; background-color: #af111c; border: none;" class="btn btn-success" />
            </div>
                    <br />
                    <div>
                        <asp:GridView CssClass="table table-striped" ID="GridView1" BackColor="White" Style="direction: ltr; font-size: 14px;" GridLines="None" runat="server" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging" OnSelectedIndexChanging="GridView1_SelectedIndexChanging" >
                    <Columns>
                            <asp:HyperLinkField ControlStyle-BackColor="red" ControlStyle-ForeColor="White" ControlStyle-CssClass="p-2" DataNavigateUrlFields="الرقم" DataNavigateUrlFormatString="activty_types_delete.aspx?no={0}" HeaderText="حذف" NavigateUrl="~/activty_types_delete.aspx" Text=' <i class="fa fa-trash" style="padding: 6px 5px 5px 5px;min-width: 26px;height: 30px;font-size:20px;background-color: #F00;color: white;border:none;"></i>' /> 
                        <asp:HyperLinkField ControlStyle-BackColor="Green" ControlStyle-ForeColor="White" ControlStyle-CssClass="p-2" DataNavigateUrlFields="الرقم" DataNavigateUrlFormatString="updatedeleactivties_types.aspx?no={0}" HeaderText="تعديل" NavigateUrl="~/updatedeleactivties_types.aspx" Text=' <i class="fa fa-edit" style="padding: 6px 5px 5px 5px;min-width: 26px;height: 30px;font-size:20px;background-color: #080;color: white;border:none;"></i>' >

                            <ControlStyle BackColor="Green" CssClass="p-2" ForeColor="White"></ControlStyle>
                        </asp:HyperLinkField>

                        <asp:HyperLinkField ControlStyle-BackColor="#3c8dbc" ControlStyle-ForeColor="White" ControlStyle-CssClass="p-2" DataNavigateUrlFields="الرقم" DataNavigateUrlFormatString="activty_types_show.aspx?no={0}" HeaderText="عرض" NavigateUrl="~/activty_types_show.aspx" Text=' <i class="fa fa-eye" style="padding: 6px 5px 5px 5px;min-width: 26px;height: 30px;font-size:20px;background-color: #3c8dbc;color: white;border:none;"></i>' >
                            <ControlStyle BackColor="#3C8DBC" CssClass="p-2" ForeColor="White"></ControlStyle>
                        </asp:HyperLinkField>
                    
                    </Columns>
                  
                </asp:GridView>
                    </div>
                </div>




            </div>
            <!-- /.box-body -->
            <div class="box-footer">
                <nav aria-label="...">
                    <ul class="pagination">
                        <li class="page-item disabled">
                            <span class="page-link">Previous</span>
                        </li>
                        <li class="page-item active"><a class="page-link" href="#">1</a></li>
                        <li class="page-item">
                            <span class="page-link">2
                        <span class="sr-only">(current)</span>
                            </span>
                        </li>
                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                        <li class="page-item">
                            <a class="page-link" href="#">Next</a>
                        </li>
                    </ul>
                </nav>
            </div>
            <!-- /.box-footer-->
        </div>
        <!-- /.box -->

    </section>

</asp:Content>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <section class="content-header">
  

<div class="col-sm-6">
<ol class="breadcrumb float-sm-right">
                  <li class="breadcrumb-item active">انواع الانشطة</li>

             <li class="breadcrumb-item"><a href="#">لوحة التحكم</a></li>
        </ol>
</div>
        <div style="margin:0 0 0% 78%; font-size:18px" >
            <asp:DropDownList ID="DropDownList1" runat="server">
            </asp:DropDownList>
                    <asp:Label ID="Label2" runat="server" Text="اسم الشركة"></asp:Label>

        </div>


        <div class="wrapper" id="app" style="float: left; width: 100%; margin-right: 30px;">
            <div style="direction: rtl; padding: 10px 10px 10px 55px">
                <asp:Label ID="Label1" runat="server" Text="الانشطه بالشركه" style="color:White"></asp:Label>

                <asp:TextBox Style="height: 25px; width: 135px;" ID="TextBox1" runat="server"></asp:TextBox>

                <asp:Button ID="Button1" Style="padding: 3px;" class="btn btn-primary" runat="server" Text="بحث" OnClick="Button1_Click" />


                <asp:Button ID="Button2" runat="server" Text="إضافة" OnClick="Button2_Click"  Style="margin-right: 55%; background-color:#af111c" class="btn btn-success" />

                <%--<asp:HyperLink ID="HyperLink1" runat="server" class="btn btn-primary" data-target="#loginModal" data-toggle="modal" style="background-color:red;border:none;" href="#">حذف</asp:HyperLink>

                <asp:Button ID="Button3" runat="server" Text="تقرير" class="btn btn-success" Style="margin-right: 15px; background-color:#075" OnClick="Button3_Click" />
            </div>


            <div style="padding-left: 10px; padding-right: 10px; ">
                <asp:GridView CssClass="table table-striped" ID="GridView1" BackColor="White" Style="direction: ltr; font-size: 14px;" GridLines="None" runat="server" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging" OnSelectedIndexChanging="GridView1_SelectedIndexChanging" >
                    <Columns>
                            <asp:HyperLinkField ControlStyle-BackColor="red" ControlStyle-ForeColor="White" ControlStyle-CssClass="p-2" DataNavigateUrlFields="الرقم" DataNavigateUrlFormatString="activty_types_delete.aspx?no={0}" HeaderText="حذف" NavigateUrl="~/activty_types_delete.aspx" Text='<i class="fa fa-trash" ></i>'>
                                </asp:HyperLinkField>
                        <asp:HyperLinkField ControlStyle-BackColor="Green" ControlStyle-ForeColor="White" ControlStyle-CssClass="p-2" DataNavigateUrlFields="الرقم" DataNavigateUrlFormatString="updatedeleactivties_types.aspx?no={0}" HeaderText="تعديل" NavigateUrl="~/updatedeleactivties_types.aspx" Text='<i class="fa fa-edit"></i>'>

                            <ControlStyle BackColor="Green" CssClass="p-2" ForeColor="White"></ControlStyle>
                        </asp:HyperLinkField>

                        <asp:HyperLinkField ControlStyle-BackColor="#3c8dbc" ControlStyle-ForeColor="White" ControlStyle-CssClass="p-2" DataNavigateUrlFields="الرقم" DataNavigateUrlFormatString="activty_types_show.aspx?no={0}" HeaderText="عرض" NavigateUrl="~/activty_types_show.aspx" Text='<i class="fa fa-edit"></i>'>
                            <ControlStyle BackColor="#3C8DBC" CssClass="p-2" ForeColor="White"></ControlStyle>
                        </asp:HyperLinkField>
                    
                    </Columns>
                  
                </asp:GridView>
            </div>

        </div>
    </section>
</asp:Content>--%>
