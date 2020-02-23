<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Sales_Delete.aspx.cs" Inherits="mid.Sales_Delete" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        * {
            padding: 0;
            margin: 0;
        }
        #mybtn{
            text-align:center;
        }
    </style>
    <div class="container">
        <div class="row">
            <!--start nav bar-->
            <div class="panel panel-default col-lg-12">
                <div class="panel-body">
                    <h2 class="panel-title" style="font-size: 29px;">حذف فاتورة مبيعات </h2>
                </div>
            </div>
            <!--end nav bar-->
            <div class="row">
                <table class="table table-striped">
                    <tbody>
                        <tr>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text="النشاط "></asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="ddl_activiy" runat="server" AutoPostBack="true"></asp:DropDownList>
                            </td>
                            <td>
                                <asp:Label ID="Label2" runat="server" Text="الشركة"></asp:Label>

                            </td>
                            <td>
                                <asp:DropDownList ID="ddl_comp" runat="server"></asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label3" runat="server" Text=" رقم العميل "></asp:Label>

                            </td>
                            <td>
                                <asp:TextBox ID="txt_custNo" runat="server"></asp:TextBox>

                            </td>
                            <td>
                                <asp:Label ID="Label4" runat="server" Text="رقم الفاتورة"></asp:Label>

                            </td>
                            <td>
                                <asp:TextBox ID="txt_pill" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label5" runat="server" Text="تاريخ ميلادي "></asp:Label>
                            </td>

                            <td>
                                <asp:TextBox ID="txt_dateEN" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                <asp:Label ID="Label6" runat="server" Text="تاريخ هجري "></asp:Label>

                            </td>
                            <td>
                                <asp:TextBox ID="txt_dateAR" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label13" runat="server" Text=" المستند  "></asp:Label>

                            </td>
                            <td>
                                <asp:TextBox ID="txt_document" runat="server"></asp:TextBox>

                            </td>
                            <td>

                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label15" runat="server" Text="مدة السداد"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txt_credit_days" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                <asp:Label ID="Label16" runat="server" Text="تاريخ السداد"></asp:Label>

                            </td>
                            <td>
                                <asp:TextBox ID="txt_credit_date" runat="server"></asp:TextBox>

                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label17" runat="server" Text=" 1 ملاحظات  "></asp:Label>

                            </td>
                            <td>
                                <asp:TextBox ID="txt_notes1" runat="server"></asp:TextBox>

                            </td>
                            <td>
                                <asp:Label ID="Label18" runat="server" Text=" 2 ملاحظات  "></asp:Label>

                            </td>
                            <td>
                                <asp:TextBox ID="txt_note2" runat="server"></asp:TextBox>

                            </td>
                        </tr>
                        <tr>
                           
                            <td>
                                <asp:Label ID="Label20" runat="server" Text=" اسم الصنف   "></asp:Label>

                            </td>
                            <td>
                                <asp:DropDownList ID="ddl_item_name" runat="server"></asp:DropDownList>
                            </td>
                            <td>
                                <asp:Label ID="Label21" runat="server" Text=" رقم الصنف   "></asp:Label>

                            </td>
                            <td>
                                <asp:TextBox ID="txt_item_no" runat="server"></asp:TextBox>

                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label19" runat="server" Text=" الوحدة "></asp:Label>

                            </td>
                            <td>
                                <asp:DropDownList ID="ddl_unit" runat="server"></asp:DropDownList>

                            </td>
                            <td>
                                <asp:Label ID="Label22" runat="server" Text=" رقم الموقع "></asp:Label>

                            </td>
                            <td>
                                <asp:TextBox ID="txt_site_no" runat="server"></asp:TextBox>
                            </td>

                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label23" runat="server" Text=" الكمية "></asp:Label>

                            </td>
                            <td>
                                <asp:TextBox ID="txt_quantity" runat="server"></asp:TextBox>

                            </td>
                            <td>
                                <asp:Label ID="Label24" runat="server" Text=" سعر البيع "></asp:Label>

                            </td>
                            <td>
                                <asp:TextBox ID="txt_price" runat="server"></asp:TextBox>
                            </td>

                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label25" runat="server" Text=" إجمالي القيمة "></asp:Label>

                            </td>
                            <td>
                                <asp:TextBox ID="txt_total" runat="server"></asp:TextBox>

                            </td>
                            <td>
                                <asp:Label ID="Label26" runat="server" Text="تاريخ الصلاحية "></asp:Label>

                            </td>
                            <td>
                                <asp:TextBox ID="txt_expire_date" runat="server"></asp:TextBox>
                            </td>

                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label27" runat="server" Text="  %الخصم "></asp:Label>

                            </td>
                            <td>
                                <asp:TextBox ID="txt_discount" runat="server"></asp:TextBox>

                            </td>
                            <td>
                                <asp:Label ID="Label28" runat="server" Text="قيمة الخصم  "></asp:Label>

                            </td>
                            <td>
                                <asp:TextBox ID="txt_discount_value" runat="server"></asp:TextBox>
                            </td>

                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label29" runat="server" Text=" الضريبة % "></asp:Label>

                            </td>
                            <td>
                                <asp:TextBox ID="txt_tax" runat="server"></asp:TextBox>

                            </td>
                            <td>
                                <asp:Label ID="Label30" runat="server" Text="قيمة الضريبة "></asp:Label>

                            </td>
                            <td>
                                <asp:TextBox ID="txt_taz_value" runat="server"></asp:TextBox>
                            </td>

                        </tr>

                        
                    </tbody>
                </table>
            </div>
            <div class="row" id="mybtn">
                
                      <asp:Button ID="btn_delete" runat="server" class="btn btn-danger" Text="حذف" />
                      <asp:Button ID="btn_cancel" runat="server" class="btn btn-success" OnClick="btn_cancel_Click" Text="تراجع" />

                       


            </div>
        </div>
    </div>
</asp:Content>
