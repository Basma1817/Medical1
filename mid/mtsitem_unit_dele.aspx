<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="mtsitem_unit_dele.aspx.cs" Inherits="mid.mtsitem_unit_dele" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    
        <div class="panel panel-default col-lg-12">
        <div class="panel-body">
            <h2 class="panel-title" style="font-size: 29px;">حذف وحدة </h2>
        </div>
        </div>


      <div class="row">
        <div class="col-lg-5" style="display: flex; justify-content: flex-end">
            <asp:Button ID="Button1" runat="server" type="submit" Text="حذف" OnClick="Button1_Click" class="btn btn-success" />
            <asp:Button ID="Button2" runat="server" type="submit" Text="تراجع" OnClick="Button2_Click" class="btn btn-success" />
        </div>
          </div>
    <div class="row">
            <div class="col-md-12">
                <table class="table table-striped">
                    <tbody>
                        <tr>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text="رقم الوحدة"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox3" runat="server" Style="width: 5%;"></asp:TextBox>
                            </td>
                        </tr>


                        <tr>
                            <td>
                                <asp:Label ID="Label2" runat="server" Text="اسم الوحدة"></asp:Label>
                            </td>

                            <td>
                                <asp:TextBox ID="TextBox4" runat="server" Style="width: 25%;"></asp:TextBox>
                            </td>
                        </tr>
                         <tr>
                        <td>
                              <asp:Label ID="Label5" runat="server" Text="اسم الوحدة"></asp:Label>
                            </td>

                            <td>
                                <asp:TextBox ID="TextBox5" runat="server" Style="width: 25%;"></asp:TextBox>
                            </td>
                              </tr>

                </table>
            </div>
        </div>


</asp:Content>
