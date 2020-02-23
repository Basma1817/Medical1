<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Pur_Invoic.aspx.cs" Inherits="mid.Pur_Invoice_All" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <%-- ضبط اتجاه الصفحة إلى جهة اليمين --%>  
    <link href="admin-lte/rtl/bootstrap-rtl.min.css" rel="stylesheet" />
    <%-- عنوان الصفحة --%>             
        <div class="panel panel-default col-lg-12" >
            <div class="row">
        <div class="panel-body">
            <h2 class="panel-title col-lg-8" style="font-size: 29px;">                
                  فواتير الشراء
                </h2>          
        </div>
          </div>  
    </div>
           
<%-- الشركة والنشاط --%>

      <div class="row" >
                         <div class="col-lg-4">
            <div class="form-group" style="display: flex; justify-content: space-between">
                <asp:Label ID="Label23" runat="server" Text="الشركة"></asp:Label>
                <asp:DropDownList ID="DDL_Com_NO" runat="server" CssClass="form-control"
                    DataSourceID="SQL_DDL_Com_NO" DataTextField="Cmp_Nm" DataValueField="Cmp_No"  Width="90%" AppendDataBoundItems="true" TabIndex="1"
                AutoPostBack="true" OnSelectedIndexChanged="DDL_Com_NO_SelectedIndexChanged" >
                </asp:DropDownList>
                <asp:SqlDataSource ID="SQL_DDL_Com_NO" runat="server" ConnectionString="<%$ ConnectionStrings:ICDBTrdAEntities_A %>" SelectCommand="SELECT [Cmp_No], [Cmp_Nm] FROM [MainCmpnam]" ></asp:SqlDataSource>
            </div>
        </div>
        <div class="col-lg-2">
            <div class="form-group" style="display: flex; justify-content: space-between">
                <asp:Label ID="Label22" runat="server" Text="الرقم"></asp:Label>
                <asp:TextBox ID="Txt_Comp_No" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
          </div>
       
        <div  class="col-md-4">
            <div class="form-group"style="display: flex; justify-content: space-between">
                <asp:Label ID="Label10" runat="server" Text="النشاط"></asp:Label>
                <asp:DropDownList ID="DDL_Actinvity_NO" runat="server" OnSelectedIndexChanged="DDL_Actinvity_NO_SelectedIndexChanged" AutoPostBack="True" DataSourceID="SQL_DDL_Actinvity_NO" DataTextField="Name_Arb" DataValueField="Actvty_No"  Width="90%" AppendDataBoundItems="True" TabIndex="1">
                 <asp:ListItem Selected="True" Text="اختر النشاط" Value="0"></asp:ListItem>
                </asp:DropDownList>
                            <asp:SqlDataSource ID="SQL_DDL_Actinvity_NO" runat="server" ConnectionString="<%$ ConnectionStrings:ICDBTrdAEntities_A %>" SelectCommand="ActivityTypes_Gett_Activity_By_CompNo" SelectCommandType="StoredProcedure" >
                        <SelectParameters>
                            <asp:ControlParameter ControlID="Txt_Comp_No" Name="cmp_no" PropertyName="Text" Type="Int32" />
                        </SelectParameters>
                </asp:SqlDataSource>
                            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="DDL_Actinvity_NO" Display="Dynamic" ErrorMessage="*" ForeColor="Red" InitialValue="0" ValidationGroup="Save"></asp:RequiredFieldValidator>
            </div>
        </div>
       
            
         <div class="col-lg-2">
            <div class="form-group" style="display: flex; justify-content: space-between">
                <asp:Label ID="Label9" runat="server" Text="الرقم"></asp:Label>
                <asp:TextBox ID="Txt_Activity_No" runat="server" CssClass="form-control" style="display: flex;"></asp:TextBox>
            </div>
        </div>
    </div>

<%--البحث وزر الإضافة --%>
    <div class="row">
        <div class="col-lg-4">
            <div class="form-group">
                <asp:Label ID="Label1" runat="server" Text="الفرع"></asp:Label>

                <asp:DropDownList ID="DropDownList1" runat="server" Width="70%"></asp:DropDownList>

                <asp:Button ID="Btn_Searsh" Style="padding: 3px;" Width="15%" class="btn btn-primary" runat="server" Text="بحث" OnClick="Btn_Searsh_Click" />
            </div>
        </div>
      
        <div class="col-lg-4">
            <div >
                <asp:Button ID="Btn_Add_Inv" runat="server" OnClick="Btn_Add_Inv_Click" Text="فاتورة جديدة" Style="margin-right: 555px;" Width="50%" class="btn btn-success" />

                <%--<asp:Button ID="Button3" runat="server" Text="تقرير" class="btn btn-success" Style="margin-right: 15px;"/>--%>
            </div>
        </div>
    </div>
<%--الفواتير GView --%>
    <div class="row">
        <div class="col-lg-12">
            <div>
                <asp:GridView ID="GV_Pur_All" runat="server" CssClass="table table-striped"  Style="direction: ltr; font-size: 14px;" GridLines="None"  BackColor="White" >

                    <Columns >
                        <asp:HyperLinkField ControlStyle-BackColor="red" ControlStyle-ForeColor="White" ControlStyle-CssClass="p-2" DataNavigateUrlFields="" DataNavigateUrlFormatString="#?no={0}" HeaderText="حذف" NavigateUrl="~/#" Text='<i class="fa fa-trash"></i>' />
                        
                        <asp:HyperLinkField ControlStyle-BackColor="Green" ControlStyle-ForeColor="White" ControlStyle-CssClass="p-2" DataNavigateUrlFields="" DataNavigateUrlFormatString="#?no={0}" HeaderText="تعديل" NavigateUrl="~/#" Text='<i class="fa fa-edit"></i>' />

                        <asp:HyperLinkField ControlStyle-BackColor="#3c8dbc" ControlStyle-ForeColor="White" ControlStyle-CssClass="p-2" DataNavigateUrlFields="" DataNavigateUrlFormatString="#?no={0}" HeaderText="عرض" NavigateUrl="~/#" Text='<i class="fa fa-edit"></i>' />
                        
                    </Columns>
                </asp:GridView>
               <%-- <asp:GridView ID="GridView1" Width="100%" CssClass="table table-striped" runat="server"  AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="Doc_No" HeaderText="رقم الفاتورة" SortExpression="Doc_No">
                            <ItemStyle Width="12.5%"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="Sup_NmAr" HeaderText="اسم المورد" SortExpression="Sup_NmAr">
                            <ItemStyle Width="25%"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="Sup_No" HeaderText="رقم المورد" SortExpression="Sup_No">
                            <ItemStyle Width="12.5%"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="Doc_Dt" HeaderText="تاريخ الفاتورة" SortExpression="Doc_Dt">
                            <ItemStyle Width="12.5%"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="FcTot_Pur" HeaderText="إجمالي المشتريات" SortExpression="FcTot_Pur">
                            <ItemStyle Width="12.5%"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="FcTot_Cost" HeaderText="إجمالي التكلفة" SortExpression="FcTot_Cost">
                            <ItemStyle Width="12.5%"></ItemStyle>
                        </asp:BoundField>
                      

                        <asp:HyperLinkField  ControlStyle-BackColor="#3c8dbc" ControlStyle-ForeColor="White" ControlStyle-CssClass="p-2" DataNavigateUrlFormatString="#" HeaderText="عرض" NavigateUrl="~/companies_show.aspx"
                                     Text=' <i class="fa fa-eye" style="padding: 6px 5px 5px 5px;min-width: 26px;height: 30px;font-size:20px;background-color: #3c8dbc;color: white;border:none;"></i>' />

                                <asp:HyperLinkField  ControlStyle-BackColor="Green" ControlStyle-ForeColor="White" ControlStyle-CssClass="p-2" DataNavigateUrlFormatString="#" HeaderText="تعديل" NavigateUrl="~/updatecompanies.aspx"
                                    Text=' <i class="fa fa-edit" style="padding: 6px 5px 5px 5px;min-width: 26px;height: 30px;font-size:20px;background-color: #080;color: white;border:none;"></i>' />

                        <asp:HyperLinkField  ControlStyle-BackColor="red" ControlStyle-ForeColor="White" ControlStyle-CssClass="p-2" DataNavigateUrlFormatString="#" HeaderText="حذف" NavigateUrl="~/companies_delete.aspx"
                                    Text=' <i class="fa fa-trash" style="padding: 6px 5px 5px 5px;min-width: 26px;height: 30px;font-size:20px;background-color: #F00;color: white;border:none;"></i>' />

                                
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:ICDBTrdAEntities_A %>' SelectCommand="SELECT InvLodhdr.Doc_No, MtsSuplir.Sup_NmAr, InvLodhdr.Doc_Dt, InvLodhdr.Sup_No, InvLodhdr.FcTot_Pur, InvLodhdr.FcTot_Cost FROM InvLodhdr INNER JOIN MtsSuplir ON InvLodhdr.Cmp_No = MtsSuplir.Cmp_No Where InvLodhdr.Doc_Ty=2">
                    
                </asp:SqlDataSource>--%>
                <asp:HiddenField ID="Hf_Date" runat="server" />
            </div>
        </div>
    </div>
</asp:Content>
