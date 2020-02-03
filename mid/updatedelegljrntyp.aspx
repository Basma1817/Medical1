<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="updatedelegljrntyp.aspx.cs" Inherits="mid.updatedelegljrntyp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="content-wrapper">
        <ol class="breadcrumb" style="width: 1050px;">
            <h1><small>اعدادات الحسابات > تعديل القيود اليومية </small></h1>
        </ol>

        <div class="row">
            <div class="col-xs-12">
                <div class="box" style="height: 875px;">
                    <div class="box-header">
                        <h3 class="box-title"></h3>
                    </div>
                    <!-- /.box-header -->
                    <div style="margin-right: 35px">



                        <div class="box-body">
                            <table id="example2" class="table table-borderless">
                                <tbody>

                                    <tr>
                                        <td>
                                            <asp:Label ID="Label2" runat="server" Text="رقم القيد"></asp:Label></td>
                                        <td>
                                            <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" Style="width: 60px; text-align: center; margin-left: 90%;"></asp:TextBox></td>

                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label3" runat="server" Text=" وصف القيد  "></asp:Label></td>
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
                                        <td>
                                            <asp:Button ID="Button1" Style="margin: -3px 113%;  height: 30px; width:52px; background-color: #007bff;" runat="server" Text="حفظ" OnClick="Button1_Click" />
                                        </td>
                                        <td>
                                            <asp:Button ID="Button3" Style="margin:  -3px -94% 50px -42%; height: 30px;  width:52px; background-color: #dc3545;" runat="server" Text="تراجع" OnClick="Button3_Click" />
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















        <%-- <table>
        <tr>
            <td><asp:Label ID="Label1" runat="server" Text="انواع القيود اليومية"></asp:Label></td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox></td>
            <td>
                <asp:Label ID="Label2" runat="server" Text="نوع القيد"></asp:Label></td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox> </td>
            <td>
                <asp:Label ID="Label3" runat="server" Text="وصف القيد بالعربية"></asp:Label> </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
            <td>
                <asp:Label ID="Label4" runat="server" Text="وصف القيد بالإنجليزية"></asp:Label></td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Update" OnClick="Button1_Click" />
            
                &nbsp;&nbsp;
            
                <asp:Button ID="Button2" runat="server" Text="Delete" OnClick="Button2_Click" /></td>
        </tr>
    </table>--%>
</asp:Content>
