<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="insert_acn_bnk.aspx.cs" Inherits="mid.insert_acn_bnk" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="content-wrapper">

        <ol class="breadcrumb" style="width: 1050px;">
            <h1><small>اعدادات الحسابات < اضافة بيانات البنوك والصندوق </small></h1>
        </ol>

        <div class="row">
            <div class="col-xs-12">
                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title"></h3>
                    </div>
                    <!-- /.box-header -->
                    <div style="margin-right: 35px">



                        <div class="box-body">
                            <table id="example2" class="table table-borderless">
                                <thead>
                                    <tr>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>رقم الحساب</td>
                                        <td>
                                            <asp:TextBox ID="TextBox1" runat="server" Style="width: 60px; text-align: center; margin-left: 90%;"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label2" runat="server" Text=" اسم الحساب  "></asp:Label></td>
                                        <td>
                                            <asp:TextBox ID="TextBox2" runat="server" Style="margin-bottom: 10px;"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label4" runat="server" Text="AR " Style="margin-right: -128px"></asp:Label></td>

                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label5" runat="server" Text=" "></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label6" runat="server" Text="EN " Style="margin-right: -128px"></asp:Label></td>

                                    </tr>
                                    <tr>
                                        <td>الحساب بالبنك</td>
                                        <td>
                                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>سندات صرف الشيك</td>
                                        <td>
                                            <asp:CheckBox ID="CheckBox2" runat="server" Text="" /></td>
                                    </tr>
                                    <tr>
                                        <td>جمع النقدية</td>
                                        <td>
                                            <asp:CheckBox ID="CheckBox1" runat="server" Text="" /></td>
                                    </tr>
                                    <tr>
                                        <td>البنوك</td>
                                        <td>
                                            <asp:CheckBox ID="CheckBox3" runat="server" Text="" /></td>
                                    </tr>
                                    <tr>
                                        <td>الصندوق</td>
                                        <td>
                                            <asp:CheckBox ID="CheckBox4" runat="server" Text="" /></td>

                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Button ID="Button3" Style="margin: -3px 113%; height: 30px; background-color: #007bff; width: 52px" runat="server" Text="حفظ" OnClick="Button1_Click" />
                                        </td>
                                        <td>
                                            <asp:Button ID="Button2" Style="margin: -3px -94% 50px -42%; height: 30px; background-color: #dc3545; width: 52px" runat="server" Text="تراجع" OnClick="Button2_Click" />
                                        </td>
                                    </tr>
                            </table>
                        </div>

                    </div>
                    <!-- /.box-body -->
                </div>
                <!-- /.box -->


                <!-- /.box -->
            </div>
            <!-- /.col -->
        </div>
        <!-- /.row -->











        <%--<table class="grid">
        
        
        <tr><td>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td><td>
            <asp:Label ID="Label2" runat="server" Text="إسم الحساب بالعربي"></asp:Label></td></tr>
        <tr><td>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td><td>
            <asp:Label ID="Label3" runat="server" Text="إسم الحساب بالإنجليزي"></asp:Label></td></tr>
        <tr><td>
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td><td>
            <asp:Label ID="Label4" runat="server" Text="الحساب بالبنك"></asp:Label></td></tr>
        <tr><td>
            <asp:CheckBox ID="CheckBox1" runat="server" Text="جمع النقدية" /></td><td>
                <asp:CheckBox ID="CheckBox2" runat="server" Text="سندات صرف الشيك" /></td>
            <td>
                <asp:CheckBox ID="CheckBox3" runat="server" Text="البنوك" /></td>
            <td>
                <asp:CheckBox ID="CheckBox4" runat="server" Text="الصندوق" /></td></tr>
        <tr><td>
            <asp:Button ID="Button1" runat="server" Text="insert" OnClick="Button1_Click" />
        </td></tr>
    </table>--%>
</asp:Content>
