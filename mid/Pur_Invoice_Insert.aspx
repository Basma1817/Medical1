<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Pur_Invoice_Insert.aspx.cs" Inherits="mid.Pur_Invoice_Insert" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" dir="rtl" runat="server" >
    <link href="admin-lte/rtl/bootstrap-rtl.min.css" rel="stylesheet" />

    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            
        <section class="content-header" >            
                
<%-- عنوان الصفحة --%>             
        <div class="panel panel-default col-lg-12" >
            <div class="row">
        <div class="panel-body">
            <h2 class="panel-title col-lg-8" style="font-size: 29px;">
                
                  فاتورة شراء</h2>
          <%-- <h4> <asp:Label ID="Label1" CssClass="col-lg-2" runat="server" Text="رقم السند :"></asp:Label>
               <asp:Label ID="Lbl_B_ID" CssClass="col-lg-2" runat="server" Text="Label"></asp:Label>
           </h4>--%>
            <h3>
                <asp:Label ID="Lbl_Msg" runat="server" Text=""></asp:Label>
            </h3>
        </div>
          </div>  
    </div>
           </section>
<%-- الشركة والنشاط --%>
          
            <div class="row" >
                <div  class="col-md-4">
            <div class="form-group"style="display: flex; justify-content: space-between">
                <asp:Label ID="Label10" runat="server" Text="النشاط"></asp:Label>
                <%--<ajaxToolkit:ComboBox ID="Combo_Actinvity_NO" runat="server" AutoCompleteMode="SuggestAppend" DataSourceID="SQL_DDL_Actinvity_NO" DataTextField="Name_Arb" DataValueField="Actvty_No"  AutoPostBack="true" OnSelectedIndexChanged="DDL_Actinvity_NO_SelectedIndexChanged" Width="90%">
                    <asp:ListItem Selected="True" Text="اختر النشاط" Value="0"></asp:ListItem>
                </ajaxToolkit:ComboBox>--%>
                <asp:DropDownList ID="DDL_Actinvity_NO" runat="server" Font-Bold="true" OnSelectedIndexChanged="DDL_Actinvity_NO_SelectedIndexChanged" AutoPostBack="true" DataSourceID="SQL_DDL_Actinvity_NO" DataTextField="Name_Arb" DataValueField="Actvty_No"  Width="90%" AppendDataBoundItems="true" TabIndex="2">
                <asp:ListItem Selected="True" Text="اختر النشاط" Value="0"></asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SQL_DDL_Actinvity_NO" runat="server" ConnectionString="<%$ ConnectionStrings:ICDBTrdAEntities_A %>" SelectCommand="SELECT [Actvty_No], [Name_Arb], [cmp_no] FROM [ActivityTypes] " >                      
                </asp:SqlDataSource>
                &nbsp;<asp:RequiredFieldValidator  ID="RequiredFieldValidator8" runat="server" ControlToValidate="DDL_Actinvity_NO" Display="Dynamic" ErrorMessage="*" ForeColor="Red" InitialValue="0" ValidationGroup="Save"></asp:RequiredFieldValidator>
            </div>
        </div>
       
            
         <div class="col-lg-2">
            <div class="form-group" style="display: flex; justify-content: space-between">
                <asp:Label ID="Label9" runat="server"  Text="الرقم"></asp:Label>
                <asp:TextBox ID="Txt_Activity_No" runat="server" Enabled="false" Font-Bold="true" CssClass="form-control" style="display: flex;"></asp:TextBox>
            </div>
        </div>
                         <div class="col-lg-4">
            <div class="form-group" style="display: flex; justify-content: space-between">
                <asp:Label ID="Label23" runat="server" Text="الشركة"></asp:Label>
                <asp:DropDownList ID="DDL_Com_NO" runat="server" CssClass="form-control" Font-Bold="true"
                    DataSourceID="SQL_DDL_Com_NO" DataTextField="Cmp_Nm" DataValueField="Cmp_No"  Width="90%" AppendDataBoundItems="true" TabIndex="1"
                AutoPostBack="true" OnSelectedIndexChanged="DDL_Com_NO_OnSelectedIndexChanged" >
                </asp:DropDownList>
                <asp:SqlDataSource ID="SQL_DDL_Com_NO" runat="server" ConnectionString="<%$ ConnectionStrings:ICDBTrdAEntities_A %>" SelectCommand="SELECT [Cmp_No], [Cmp_Nm] FROM [MainCmpnam]" ></asp:SqlDataSource>
            </div>
        </div>
        <div class="col-lg-2">
            <div class="form-group" style="display: flex; justify-content: space-between">
                <asp:Label ID="Label22" runat="server" Text="الرقم"></asp:Label>
                <asp:TextBox ID="Txt_Comp_No" runat="server" Font-Bold="true" Enabled="false" CssClass="form-control"></asp:TextBox>
            </div>
          </div>
       
        
            </div>
          
     <div>      <%-- Tbl_InvLodHder --%>
         <asp:Panel ID="P1" runat="server" BorderStyle="Groove" Width="100%" BorderWidth="1px" Visible="true" >
<%-- السطر الأول --%>
        <div class="row" >
            <div class="col-lg-2">
                <div class="form-group" >
                      <asp:Label ID="Lbl_Store_Number" runat="server" Text="الفرع"></asp:Label>
                            &nbsp;
                           
                            <asp:DropDownList ID="DDL_Store_Number" runat="server" DataSourceID="SQL_DDL_Store_Number" DataTextField="Brn_NmAr" DataValueField="ID_NO" OnSelectedIndexChanged="DDL_Store_Number_SelectedIndexChanged" Width="90%" AppendDataBoundItems="true" TabIndex="3" >
                                <asp:ListItem Selected="True" Text="اختر الفرع" Value="0"></asp:ListItem>
                            </asp:DropDownList>
                            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DDL_Store_Number" Display="Dynamic" ErrorMessage="*" ForeColor="Red" InitialValue="0" ValidationGroup="Save"></asp:RequiredFieldValidator>
                            
                            <asp:SqlDataSource ID="SQL_DDL_Store_Number" runat="server" ConnectionString="<%$ ConnectionStrings:ICDBTrdAEntities_A %>" SelectCommand="SELECT [ID_NO], [Brn_NmAr] FROM [MainBranch]" ></asp:SqlDataSource>
                        
                </div>
            </div>
            <div class="col-lg-2">
                <div class="form-group" >
                          <asp:Label ID="Lbl_Doc_No" runat="server" Text="سند الإدخال"></asp:Label>
                            <asp:TextBox ID="Txt_Doc_No" runat="server" AutoCompleteType="Disabled" Width="90%" Enabled="False" TabIndex="2" ></asp:TextBox>
                           
                </div>
            </div>
            <div class="col-lg-2">
                <div class="form-group" >
                              <asp:Label ID="Lbl_Doc_Dt" runat="server" Text="تاريخ السند"></asp:Label>
                            <asp:TextBox ID="Txt_Doc_Dt" runat="server" AutoCompleteType="Disabled" Width="90%" TabIndex="4" placeHolder="تاريخ الفاتورة" OnTextChanged="Txt_Doc_Dt_OnTextChanged" AutoPostBack="true">
                                
                            </asp:TextBox>
                    <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server"  TargetControlID="Txt_Doc_Dt" PopupButtonID="Txt_Doc_Dt" Format="dd/MM/yyyy"/>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="Txt_Doc_Dt" Display="Dynamic" ErrorMessage="*" ForeColor="Red"  ValidationGroup="Save"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="col-lg-2">
                <div class="form-group" >
                    <asp:Label ID="Lbl_Doc_DtAr" runat="server" Text="التاريخ الهجري"></asp:Label>
                            <asp:TextBox ID="Txt_Doc_DtAr" runat="server" AutoCompleteType="Disabled" Width="90%" TabIndex="5" placeHolder="التاريخ الهجري" ></asp:TextBox>
                </div>
            </div>
            <div class="col-lg-1">
                <div class="form-group" >
                            <asp:Label ID="Lbl_Pym_No" runat="server" Text="ط الدفع"></asp:Label>
                             <asp:SqlDataSource ID="SQL_DDL_Pym_No" runat="server" ConnectionString="<%$ ConnectionStrings:ICDBTrdAEntities_A %>" SelectCommand="SELECT [Pym_No], [Pym_Nmar] FROM [InvAstPymwys]"></asp:SqlDataSource>
                            <asp:DropDownList ID="DDL_Pym_No" runat="server" DataSourceID="SQL_DDL_Pym_No" DataTextField="Pym_Nmar" DataValueField="Pym_No" Width="90%" TabIndex="6" AppendDataBoundItems="true" AutoPostBack="true" OnSelectedIndexChanged="DDL_Pym_No_SelectedIndexChanged">
                                <asp:ListItem Selected="True" Text="اختر طريقة الدفع" Value="0"></asp:ListItem>
                            </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DDL_Pym_No" Display="Dynamic" ErrorMessage="*" ForeColor="Red" InitialValue="0" ValidationGroup="Save"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="col-lg-1">
                <div class="form-group" >
                    <asp:Label ID="Label2" runat="server" Text="الإعتماد"></asp:Label>                   
                    <asp:TextBox ID="TextBox4" runat="server" AutoCompleteType="Disabled" Width="90%" TabIndex="7" placeHolder="الإعتماد" ></asp:TextBox>
                </div>
            </div>
            <div class="col-lg-1">
                <div class="form-group" >
                          <asp:Label ID="Lbl_Curncy_No" runat="server" Text="العملة"></asp:Label>
                              <asp:SqlDataSource ID="Sql_DDL_Curncy_No" runat="server"  ConnectionString="<%$ ConnectionStrings:ICDBTrdAEntities_A %>" SelectCommand="SELECT [ID_NO], [Curncy_Nmar] FROM [InvAstCurncy]" ></asp:SqlDataSource>
                            <asp:DropDownList ID="DDL_Curncy_No" runat="server" DataSourceID="Sql_DDL_Curncy_No" DataTextField="Curncy_Nmar" DataValueField="ID_NO" Width="90%" TabIndex="8"  AppendDataBoundItems="true">
                                <asp:ListItem Selected="True" Value="0" Text="اختر نوع العملة"></asp:ListItem>
                            </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DDL_Curncy_No" Display="Dynamic" ErrorMessage="*" ForeColor="Red" InitialValue="0" ValidationGroup="Save"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="col-lg-1">
                <div class="form-group">
                    <asp:Label ID="Lbl_ExchangeRate" runat="server" Text="م الصرف"></asp:Label>
                            <asp:TextBox ID="Txt_ExchangeRate" runat="server" AutoCompleteType="Disabled" Text="0" Width="90%" TabIndex="9" placeHolder="معدل الصرف"></asp:TextBox>
                </div>
            </div>
        </div>
<%-- السطر الثاني --%>
            <div class="row">
                <div class="col-lg-2">
                    <div class="form-group-lg">
                        <asp:Label ID="Lbl_To_Store" runat="server" Text="المخزن المستلم للبضاعة"></asp:Label>
                            <asp:DropDownList ID="DDL_To_Store" runat="server" DataSourceID="SQL_DDL_To_Store" DataTextField="Dlv_NmAr" DataValueField="ID_NO" Width="90%" TabIndex="10" AppendDataBoundItems="true">
                                <asp:ListItem Selected="True" Value="0" Text="اختر المخزن المستلم للبضاعة"></asp:ListItem>
                            </asp:DropDownList>
                              &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DDL_To_Store" Display="Dynamic" ErrorMessage="*" ForeColor="Red" InitialValue="0" ValidationGroup="Save"></asp:RequiredFieldValidator>
                              <asp:SqlDataSource ID="SQL_DDL_To_Store" runat="server" ConnectionString="<%$ ConnectionStrings:ICDBTrdAEntities_A %>" SelectCommand="SELECT [ID_NO], [Dlv_NmAr] FROM [MainBranchDlv]"></asp:SqlDataSource>
                    </div>
                </div>
                <div class="col-lg-2">
                    <div class="form-group-lg">
                           <asp:Label ID="Lbl_Sup_No" runat="server" Text="المورد"></asp:Label>
                            
                            <asp:DropDownList ID="DDL_Sup_No" runat="server"  DataTextField="Sup_NmAr" DataValueField="Sup_No" DataSourceID="SQL_DDL_Sup_No" AutoPostBack="True"  AppendDataBoundItems="True"  OnSelectedIndexChanged="DDL_Sup_No_SelectedIndexChanged" Width="90%" TabIndex="11" >
                                <asp:ListItem Selected="True" Text="اختر المورد" Value="0"></asp:ListItem>
                            </asp:DropDownList>
                           
                            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DDL_Sup_No" Display="Dynamic" ErrorMessage="*" ForeColor="Red" InitialValue="0" ValidationGroup="Save"></asp:RequiredFieldValidator>
                           
                            <asp:SqlDataSource ID="SQL_DDL_Sup_No" runat="server" ConnectionString="<%$ ConnectionStrings:ICDBTrdAEntities_A %>" SelectCommand="SELECT [Sup_No], [Sup_NmAr] FROM [MtsSuplir]" ></asp:SqlDataSource>
                    </div>
                </div>
                <div class="col-lg-1">
                    <div class="form-group-lg">
                        <asp:Label ID="Label24" runat="server" Text="رقم المورد"></asp:Label>
                        <asp:TextBox ID="Txt_Sup_No" runat="server"  AutoCompleteType="Disabled" Width="90%" TabIndex="12" OnTextChanged="Txt_Sup_No_TextChanged" AutoPostBack="true"></asp:TextBox>
                    </div>
                </div>
                <div class="col-lg-1">
                    <div class="form-group-lg">
                        <asp:Label ID="Lbl_Sup_Refno" runat="server" Text="م المورد"></asp:Label>
                            <asp:TextBox ID="Txt_Sup_VchrNo" runat="server" AutoCompleteType="Disabled" Width="90%" TabIndex="13" placeHolder="مرجع المورد"></asp:TextBox>
                    </div>
                </div>
                <div class="col-lg-1">
                    <div class="form-group-lg">
                        <asp:Label ID="Lbl_Sup_Inv" runat="server" Text="ف المورد"></asp:Label>
                            <asp:TextBox ID="Txt_Sup_Inv" runat="server" AutoCompleteType="Disabled" Width="90%" TabIndex="14" placeHolder="فاتورة المورد"></asp:TextBox>
                    </div>
                </div>
                <div class="col-lg-2">
                    <div class="form-group-lg">
                        <asp:Label ID="Lbl_RcvngPur_Dt" runat="server" Text="تاريخ الإستلام"></asp:Label>
                            <asp:TextBox ID="Txt_RcvngPur_Dt" runat="server" AutoCompleteType="Disabled" Width="90%" TabIndex="15" placeHolder="تاريخ الاستلام"></asp:TextBox>
                            <ajaxToolkit:CalendarExtender ID="CalendarExtender2" runat="server"  TargetControlID="Txt_RcvngPur_Dt" PopupButtonID="Txt_RcvngPur_Dt" Format="dd/MM/yyyy"/>
                    </div>
                </div>
                <div class="col-lg-1">
                    <div class="form-group-lg">
                           <asp:Label ID="Lbl_Credit_Days" runat="server" Text="مدة سداد"></asp:Label>
                            <asp:TextBox ID="Txt_Credit_Days" runat="server" AutoCompleteType="Disabled" Width="90%" Enabled="False" TabIndex="16" placeHolder="مدة السداد"></asp:TextBox>
                    </div>
                </div>
                <div class="col-lg-2">
                    <div class="form-group-lg">
                        <asp:Label ID="Lbl_Pym_Dt" runat="server" Text="تاريخ الإستحقاق"></asp:Label>
                            <asp:TextBox ID="Txt_Pym_Dt" runat="server" AutoCompleteType="Disabled" Width="90%" TabIndex="14" placeHolder="تاريخ الإستحقاق" Enabled="False"></asp:TextBox>
                    </div>
                </div>
            </div>
<%-- السطر الثالث --%>
            <div class="row">
                <div class="col-lg-2">
                    <div class="form-group">
                            <asp:Label ID="Lbl_Reftyp_No" runat="server" Text="نوع المرجع"></asp:Label>
                            <asp:DropDownList ID="DDL_Reftyp_No" runat="server"  DataTextField="RefTyp_NmAr" DataValueField="RefTyp_No" DataSourceID="SQL_DDL_Reftyp_No" Width="90%" TabIndex="16"></asp:DropDownList>
                            <asp:SqlDataSource ID="SQL_DDL_Reftyp_No" runat="server" ConnectionString="<%$ ConnectionStrings:ICDBTrdAEntities_A %>" SelectCommand="SELECT [RefTyp_No], [RefTyp_NmAr] FROM [InvAstRefTyp] where Prnt_RefTyp=3 order by RefTyp_No DESC"></asp:SqlDataSource>
                    </div>
                </div>
                <div class="col-lg-2">
                    <div class="form-group">
                          <asp:Label ID="Lbl_Ref_No" runat="server" Text="رقم المرجع"></asp:Label>
                          <asp:DropDownList ID="DDL_Ref_No" runat="server" Width="90%" TabIndex="17"></asp:DropDownList>
                    </div>
                </div>
                <div class="col-lg-8">
                    <div class="form-group">
                            <asp:Label ID="Lbl_Notes" runat="server" Text="ملاحظات"></asp:Label>
                            <asp:TextBox ID="Txt_Notes" runat="server" AutoCompleteType="Disabled" Width="100%" TabIndex="18" placeHolder="ملاحظات"></asp:TextBox>
                    </div>
                </div>            
             </asp:Panel>
       </div>

            <div class="row">
                <div class="col-lg-12"> 
          <%--          <style>
                        table {
                            border-collapse: collapse;
                        }

                        td, th {
                            border: 1px solid black;
                            padding: 3px;
                        }
                    </style> --%>
                    <asp:Panel ID="Panel6" runat="server" BorderStyle="Groove" Width="100%"  BorderWidth="1px" ScrollBars="Both">
                        <table>
                            <tr>
                                <td>
                                    <asp:GridView ID="GV_Details_Invoice" runat="server" DataSourceID="SQL_GV_Details_Invoice" AutoGenerateColumns="False" DataKeyNames="Doc_No,Cmp_No,Actvty_No,StoreID,Doc_Ty,Ln_No" CellPadding="4" ForeColor="#333333" GridLines="None" ShowFooter="true" PageSize="5" AllowPaging="True">
                                        <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>
                                       <Columns>
                                            <asp:TemplateField HeaderText="م" SortExpression="Row_ID">
                                                <ItemTemplate>
                                                    <asp:Label runat="server" Text='<%# Bind("Row_ID") %>' ID="Label1"></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="مسلسل" SortExpression="Ln_No">
                                                <FooterTemplate>
                                                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
                                                </FooterTemplate>
                                                <ItemTemplate>
                                                    <asp:Label runat="server" Text='<%# Bind("Ln_No") %>' ID="GV_Ln_No"></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="رقم الصنف" SortExpression="Itm_No">
                                                <ItemTemplate>
                                                    <asp:TextBox runat="server" Text='<%# Bind("Itm_No") %>' ID="GV_Itm_No" AutoPostBack="true"  OnTextChanged="GV_Itm_No_TextChanged1"></asp:TextBox>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="اسم الصنف" SortExpression="Itm_NmAr">
                                                <ItemTemplate>
                                                    <%--<asp:TextBox runat="server" Text='<%# Bind("Itm_NmAr") %>' ID="Label5"></asp:TextBox>--%>
                                                    <asp:DropDownList ID="GV_Itm_Name" runat="server" DataSourceID="SQL_DDL_GV_Itme" DataTextField="Itm_NmAr" DataValueField="Itm_No" SelectedValue='<%# Bind("Itm_No") %>' AppendDataBoundItems="true" AutoPostBack="true" OnSelectedIndexChanged="GV_Itm_SelectedIndexChanged">
                                                        <asp:ListItem Selected="True" Text="اختر اسم الصنف" Value="0"></asp:ListItem>
                                                    </asp:DropDownList>                                                
                                                    <asp:SqlDataSource ID="SQL_DDL_GV_Itme" runat="server" ConnectionString='<%$ ConnectionStrings:ICDBTrdAEntities_A %>' SelectCommand="SELECT [Itm_No], [Itm_NmAr] FROM [MtsItmMfs]"></asp:SqlDataSource>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="الوحدة" SortExpression="Unit_No">
                                                <ItemTemplate>
                                                    <%--<asp:TextBox runat="server" Text='<%# Bind("Unit_No") %>' ID="Label6"></asp:TextBox>--%>
                                                    <asp:DropDownList ID="DDL_GV_Unit" runat="server" DataSourceID="SQL_DDL_GV_Unit" SelectedValue='<%# Bind("Unit_No") %>' DataTextField="Unit_NmAr" DataValueField="Unit_No" AppendDataBoundItems="true" AutoPostBack="true" OnSelectedIndexChanged="DDL_GV_Unit_SelectedIndexChanged">
                                                        <asp:ListItem Selected="True" Value="0" Text="اختر الوحدة"></asp:ListItem>
                                                    </asp:DropDownList>
                                                    <asp:SqlDataSource ID="SQL_DDL_GV_Unit" runat="server" ConnectionString='<%$ ConnectionStrings:ICDBTrdAEntities_A %>' SelectCommand="SELECT [Unit_No], [Unit_NmAr] FROM [MtsItmunit]"></asp:SqlDataSource>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="تاريخ الصلاحية" SortExpression="Exp_Date">
                                                <ItemTemplate>
                                                    <asp:TextBox runat="server" Text='<%# Bind("Exp_Date") %>' ID="GV_Exp_Date"></asp:TextBox>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="الكمية" SortExpression="Qty">
                                                <ItemTemplate>
                                                    <asp:TextBox runat="server" Text='<%# Bind("Qty") %>' ID="GV_Qty"></asp:TextBox>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="سعر الشراء للوحدة" SortExpression="Itm_Pur">
                                                <ItemTemplate>
                                                    <asp:TextBox runat="server" Text='<%# Bind("Itm_Pur") %>' ID="GV_Itm_Pur"></asp:TextBox>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="الإجمالي" SortExpression="Titm_Pur">
                                                <ItemTemplate>
                                                    <asp:TextBox runat="server" Text='<%# Bind("Titm_Pur") %>' ID="GV_Titm_Pur"></asp:TextBox>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="خصم شراء 1 %" SortExpression="Disc1_Prct">
                                                <ItemTemplate>
                                                    <asp:TextBox runat="server" Text='<%# Bind("Disc1_Prct") %>' ID="GV_Disc1_Prct"></asp:TextBox>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="قيمة الخصم" SortExpression="Disc1_Val">
                                                <ItemTemplate>
                                                    <asp:TextBox runat="server" Text='<%# Bind("Disc1_Val") %>' ID="GV_Disc1_Val"></asp:TextBox>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="سعر البيع" SortExpression="Itm_Sal">
                                                <ItemTemplate>
                                                    <asp:TextBox runat="server" Text='<%# Bind("Itm_Sal") %>' ID="GV_Itm_Sal"></asp:TextBox>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="قيمة البيع" SortExpression="Titm_Sal">
                                                <ItemTemplate>
                                                    <asp:TextBox runat="server" Text='<%# Bind("Titm_Sal") %>' ID="GV_Titm_Sal"></asp:TextBox>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="تكلفة الوحدة" SortExpression="FcItm_Pur">
                                                <ItemTemplate>
                                                    <asp:TextBox runat="server" Text='<%# Bind("FcItm_Pur") %>' ID="GV_FcItm_Pur"></asp:TextBox>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="تكلفة الصنف" SortExpression="FcTitm_Pur">
                                                <ItemTemplate>
                                                    <asp:TextBox runat="server" Text='<%# Bind("FcTitm_Pur") %>' ID="GV_FcTitm_Pur"></asp:TextBox>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="رقم الباتش" SortExpression="Batch_No">
                                                <ItemTemplate>
                                                    <asp:TextBox runat="server" Text='<%# Bind("Batch_No") %>' ID="GV_Batch_No"></asp:TextBox>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="ضريبة %" SortExpression="Taxp_Extra">
                                                <ItemTemplate>
                                                    <asp:TextBox runat="server" Text='<%# Bind("Taxp_Extra") %>' ID="GV_Taxp_Extra"></asp:TextBox>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="قيمة الضريبة" SortExpression="Taxv_Extra">
                                                <ItemTemplate>
                                                    <asp:TextBox runat="server" Text='<%# Bind("Taxv_Extra") %>' ID="GV_Taxv_Extra"></asp:TextBox>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="رقم الموقع" SortExpression="Loc_No">
                                                <ItemTemplate>
                                                    <asp:TextBox runat="server" Text='<%# Bind("Loc_No") %>' ID="GV_Loc_No"></asp:TextBox>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="المستودع" SortExpression="To_Store">
                                                <ItemTemplate>
                                                    <%--<asp:TextBox runat="server" Text='<%# Bind("To_Store") %>' ID="Label21"></asp:TextBox>--%>
                                                    <asp:DropDownList ID="DDL_GV_ToStore" runat="server" DataSourceID="SQL_DDL_GV_ToStore" SelectedValue='<%# Bind("To_Store") %>' DataTextField="Dlv_NmAr" DataValueField="Brn_No" AppendDataBoundItems="true" AutoPostBack="true" OnSelectedIndexChanged="DDL_GV_ToStore_SelectedIndexChanged">
                                                        <asp:ListItem Selected="True" Value="0" Text="اختر المستودع"></asp:ListItem>
                                                    </asp:DropDownList>
                                                    <asp:SqlDataSource ID="SQL_DDL_GV_ToStore" runat="server" ConnectionString='<%$ ConnectionStrings:ICDBTrdAEntities_A %>' SelectCommand="SELECT [Brn_No], [Dlv_NmAr] FROM [MainBranchDlv]"></asp:SqlDataSource>
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                        </Columns>
                                        <EditRowStyle BackColor="#2461BF"></EditRowStyle>

                                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White"></FooterStyle>

                                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White"></HeaderStyle>

                                        <PagerStyle HorizontalAlign="Center" BackColor="#2461BF" ForeColor="White"></PagerStyle>

                                        <RowStyle BackColor="#EFF3FB"></RowStyle>

                                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333"></SelectedRowStyle>

                                        <SortedAscendingCellStyle BackColor="#F5F7FB"></SortedAscendingCellStyle>

                                        <SortedAscendingHeaderStyle BackColor="#6D95E1"></SortedAscendingHeaderStyle>

                                        <SortedDescendingCellStyle BackColor="#E9EBEF"></SortedDescendingCellStyle>

                                        <SortedDescendingHeaderStyle BackColor="#4870BE"></SortedDescendingHeaderStyle>
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="SQL_GV_Details_Invoice" runat="server" ConnectionString='<%$ ConnectionStrings:ICDBTrdAEntities_A %>' SelectCommand="InvLoddtl_Get_By_Doc_No" DeleteCommand="DELETE FROM [Tbl_Pur] WHERE [Ln_No] = @Ln_No" InsertCommand="INSERT INTO [Tbl_Pur] ([Ln_No], [To_Store], [Itm_No], [Loc_No], [Unit_No], [Qty], [Exp_Date], [Itm_Sal], [Itm_Pur], [Titm_Sal], [Titm_Pur], [Disc1_Val], [Disc1_Prct], [FcItm_Pur], [Taxp_Extra], [Taxv_Extra], [Batch_No], [FcTitm_Pur]) VALUES (@Ln_No, @To_Store, @Itm_No, @Loc_No, @Unit_No, @Qty, @Exp_Date, @Itm_Sal, @Itm_Pur, @Titm_Sal, @Titm_Pur, @Disc1_Val, @Disc1_Prct, @FcItm_Pur, @Taxp_Extra, @Taxv_Extra, @Batch_No, @FcTitm_Pur)" UpdateCommand="UPDATE [Tbl_Pur] SET [To_Store] = @To_Store, [Itm_No] = @Itm_No, [Loc_No] = @Loc_No, [Unit_No] = @Unit_No, [Qty] = @Qty, [Exp_Date] = @Exp_Date, [Itm_Sal] = @Itm_Sal, [Itm_Pur] = @Itm_Pur, [Titm_Sal] = @Titm_Sal, [Titm_Pur] = @Titm_Pur, [Disc1_Val] = @Disc1_Val, [Disc1_Prct] = @Disc1_Prct, [FcItm_Pur] = @FcItm_Pur, [Taxp_Extra] = @Taxp_Extra, [Taxv_Extra] = @Taxv_Extra, [Batch_No] = @Batch_No, [FcTitm_Pur] = @FcTitm_Pur WHERE [Ln_No] = @Ln_No" SelectCommandType="StoredProcedure">
                                        <DeleteParameters>
                                            <asp:Parameter Name="Ln_No" Type="Int64"></asp:Parameter>
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="Ln_No" Type="Int64"></asp:Parameter>
                                            <asp:Parameter Name="To_Store" Type="Int16"></asp:Parameter>
                                            <asp:Parameter Name="Itm_No" Type="Int64"></asp:Parameter>
                                            <asp:Parameter Name="Loc_No" Type="Int16"></asp:Parameter>
                                            <asp:Parameter Name="Unit_No" Type="Int16"></asp:Parameter>
                                            <asp:Parameter Name="Qty" Type="Decimal"></asp:Parameter>
                                            <asp:Parameter Name="Exp_Date" Type="String"></asp:Parameter>
                                            <asp:Parameter Name="Itm_Sal" Type="Decimal"></asp:Parameter>
                                            <asp:Parameter Name="Itm_Pur" Type="Decimal"></asp:Parameter>
                                            <asp:Parameter Name="Titm_Sal" Type="Decimal"></asp:Parameter>
                                            <asp:Parameter Name="Titm_Pur" Type="Decimal"></asp:Parameter>
                                            <asp:Parameter Name="Disc1_Val" Type="Decimal"></asp:Parameter>
                                            <asp:Parameter Name="Disc1_Prct" Type="Decimal"></asp:Parameter>
                                            <asp:Parameter Name="FcItm_Pur" Type="Decimal"></asp:Parameter>
                                            <asp:Parameter Name="Taxp_Extra" Type="Decimal"></asp:Parameter>
                                            <asp:Parameter Name="Taxv_Extra" Type="Decimal"></asp:Parameter>
                                            <asp:Parameter Name="Batch_No" Type="String"></asp:Parameter>
                                            <asp:Parameter Name="FcTitm_Pur" Type="Decimal"></asp:Parameter>
                                        </InsertParameters>
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="Txt_Doc_No" PropertyName="Text" Name="Doc_No" Type="Int64"></asp:ControlParameter>
                                        </SelectParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="To_Store" Type="Int16"></asp:Parameter>
                                            <asp:Parameter Name="Itm_No" Type="Int64"></asp:Parameter>
                                            <asp:Parameter Name="Loc_No" Type="Int16"></asp:Parameter>
                                            <asp:Parameter Name="Unit_No" Type="Int16"></asp:Parameter>
                                            <asp:Parameter Name="Qty" Type="Decimal"></asp:Parameter>
                                            <asp:Parameter Name="Exp_Date" Type="String"></asp:Parameter>
                                            <asp:Parameter Name="Itm_Sal" Type="Decimal"></asp:Parameter>
                                            <asp:Parameter Name="Itm_Pur" Type="Decimal"></asp:Parameter>
                                            <asp:Parameter Name="Titm_Sal" Type="Decimal"></asp:Parameter>
                                            <asp:Parameter Name="Titm_Pur" Type="Decimal"></asp:Parameter>
                                            <asp:Parameter Name="Disc1_Val" Type="Decimal"></asp:Parameter>
                                            <asp:Parameter Name="Disc1_Prct" Type="Decimal"></asp:Parameter>
                                            <asp:Parameter Name="FcItm_Pur" Type="Decimal"></asp:Parameter>
                                            <asp:Parameter Name="Taxp_Extra" Type="Decimal"></asp:Parameter>
                                            <asp:Parameter Name="Taxv_Extra" Type="Decimal"></asp:Parameter>
                                            <asp:Parameter Name="Batch_No" Type="String"></asp:Parameter>
                                            <asp:Parameter Name="FcTitm_Pur" Type="Decimal"></asp:Parameter>
                                            <asp:Parameter Name="Ln_No" Type="Int64"></asp:Parameter>
                                        </UpdateParameters>
                                    </asp:SqlDataSource>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                 
                   
                    <asp:SqlDataSource ID="SQL_GVInv_Details" runat="server" 
                        ConnectionString='<%$ ConnectionStrings:ICDBTrdAEntities_A %>' 
                        DeleteCommand="DELETE FROM [InvLoddtl] WHERE [Cmp_No] = @Cmp_No AND [Actvty_No] = @Actvty_No AND [StoreID] = @StoreID AND [Doc_Ty] = @Doc_Ty AND [Doc_No] = @Doc_No AND [Ln_No] = @Ln_No" 
                        InsertCommand="INSERT INTO [InvLoddtl] ([Cmp_No], [Actvty_No], [StoreID], [Doc_Ty], [Doc_No], [Ln_No], [Doc_Dt], [Doc_DtAr], [Reftyp_No], [Pym_No], [To_Store], [Unit_No], [Qty], [Exp_Date], [Itm_Pur], [Titm_Pur], [Itm_Sal], [Titm_Sal], [Disc1_Prct], [Disc1_Val], [FcItm_Pur], [FcTitm_Pur], [Batch_No], [Taxp_Extra], [Taxv_Extra], [Sup_No], [Loc_No], [Itm_No]) VALUES (@Cmp_No, @Actvty_No, @StoreID, @Doc_Ty, @Doc_No, @Ln_No, @Doc_Dt, @Doc_DtAr, @Reftyp_No, @Pym_No, @To_Store, @Unit_No, @Qty, @Exp_Date, @Itm_Pur, @Titm_Pur, @Itm_Sal, @Titm_Sal, @Disc1_Prct, @Disc1_Val, @FcItm_Pur, @FcTitm_Pur, @Batch_No, @Taxp_Extra, @Taxv_Extra, @Sup_No, @Loc_No, @Itm_No)" 
                        SelectCommand="SELECT [Cmp_No], [Actvty_No], [StoreID], [Doc_Ty], [Doc_No], [Ln_No], [Doc_Dt], [Doc_DtAr], [Reftyp_No], [Pym_No], [To_Store], [Unit_No], [Qty], [Exp_Date], [Itm_Pur], [Titm_Pur], [Itm_Sal], [Titm_Sal], [Disc1_Prct], [Disc1_Val], [FcItm_Pur], [FcTitm_Pur], [Batch_No], [Taxp_Extra], [Taxv_Extra], [Sup_No], [Loc_No], [Itm_No] FROM [InvLoddtl] WHERE ([Cmp_No] = 0 AND [Actvty_No] = 0 AND [StoreID] = 0 AND [Doc_Ty] =2 AND [Doc_No] = @Doc_No)" 
                        UpdateCommand="UPDATE [InvLoddtl] SET [Doc_Dt] = @Doc_Dt, [Doc_DtAr] = @Doc_DtAr, [Reftyp_No] = @Reftyp_No, [Pym_No] = @Pym_No, [To_Store] = @To_Store, [Unit_No] = @Unit_No, [Qty] = @Qty, [Exp_Date] = @Exp_Date, [Itm_Pur] = @Itm_Pur, [Titm_Pur] = @Titm_Pur, [Itm_Sal] = @Itm_Sal, [Titm_Sal] = @Titm_Sal, [Disc1_Prct] = @Disc1_Prct, [Disc1_Val] = @Disc1_Val, [FcItm_Pur] = @FcItm_Pur, [FcTitm_Pur] = @FcTitm_Pur, [Batch_No] = @Batch_No, [Taxp_Extra] = @Taxp_Extra, [Taxv_Extra] = @Taxv_Extra, [Sup_No] = @Sup_No, [Loc_No] = @Loc_No, [Itm_No] = @Itm_No WHERE [Cmp_No] = @Cmp_No AND [Actvty_No] = @Actvty_No AND [StoreID] = @StoreID AND [Doc_Ty] = @Doc_Ty AND [Doc_No] = @Doc_No AND [Ln_No] = @Ln_No">
                        <DeleteParameters>
                            <asp:Parameter Name="Cmp_No" Type="Int16"></asp:Parameter>
                            <asp:Parameter Name="Actvty_No" Type="Int16"></asp:Parameter>
                            <asp:Parameter Name="StoreID" Type="Int16"></asp:Parameter>
                            <asp:Parameter Name="Doc_Ty" Type="Int16"></asp:Parameter>
                            <asp:Parameter Name="Doc_No" Type="Int64"></asp:Parameter>
                            <asp:Parameter Name="Ln_No" Type="Int16"></asp:Parameter>
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Cmp_No" Type="Int16"></asp:Parameter>
                            <asp:Parameter Name="Actvty_No" Type="Int16"></asp:Parameter>
                            <asp:Parameter Name="StoreID" Type="Int16"></asp:Parameter>
                            <asp:Parameter Name="Doc_Ty" Type="Int16"></asp:Parameter>
                            <asp:Parameter Name="Doc_No" Type="Int64"></asp:Parameter>
                            <asp:Parameter Name="Ln_No" Type="Int16"></asp:Parameter>
                            <asp:Parameter Name="Doc_Dt" Type="DateTime"></asp:Parameter>
                            <asp:Parameter Name="Doc_DtAr" Type="String"></asp:Parameter>
                            <asp:Parameter Name="Reftyp_No" Type="Int16"></asp:Parameter>
                            <asp:Parameter Name="Pym_No" Type="Int16"></asp:Parameter>
                            <asp:Parameter Name="To_Store" Type="Int16"></asp:Parameter>
                            <asp:Parameter Name="Unit_No" Type="Int16"></asp:Parameter>
                            <asp:Parameter Name="Qty" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="Exp_Date" Type="String"></asp:Parameter>
                            <asp:Parameter Name="Itm_Pur" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="Titm_Pur" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="Itm_Sal" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="Titm_Sal" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="Disc1_Prct" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="Disc1_Val" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="FcItm_Pur" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="FcTitm_Pur" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="Batch_No" Type="String"></asp:Parameter>
                            <asp:Parameter Name="Taxp_Extra" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="Taxv_Extra" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="Sup_No" Type="Int64"></asp:Parameter>
                            <asp:Parameter Name="Loc_No" Type="Int16"></asp:Parameter>
                            <asp:Parameter Name="Itm_No" Type="Int64"></asp:Parameter>
                        </InsertParameters>
                        <SelectParameters>                            
                            <%--<asp:ControlParameter ControlID="Txt_Comp_No" PropertyName="Text" Name="Cmp_No" Type="Int16"></asp:ControlParameter>
                            <asp:ControlParameter ControlID="Txt_Activity_No" PropertyName="Text" Name="Actvty_No" Type="Int16"></asp:ControlParameter>                            
                            <asp:ControlParameter ControlID="DDL_Store_Number" PropertyName="SelectedValue" Name="StoreID"></asp:ControlParameter>
                            <asp:ControlParameter ControlID="DDL_Reftyp_No" PropertyName="SelectedValue" Name="Doc_Ty"></asp:ControlParameter>--%>
                            <asp:ControlParameter ControlID="Txt_Doc_No" PropertyName="Text" Name="Doc_No" Type="Int64"></asp:ControlParameter>
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Doc_Dt" Type="DateTime"></asp:Parameter>
                            <asp:Parameter Name="Doc_DtAr" Type="String"></asp:Parameter>
                            <asp:Parameter Name="Reftyp_No" Type="Int16"></asp:Parameter>
                            <asp:Parameter Name="Pym_No" Type="Int16"></asp:Parameter>
                            <asp:Parameter Name="To_Store" Type="Int16"></asp:Parameter>
                            <asp:Parameter Name="Unit_No" Type="Int16"></asp:Parameter>
                            <asp:Parameter Name="Qty" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="Exp_Date" Type="String"></asp:Parameter>
                            <asp:Parameter Name="Itm_Pur" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="Titm_Pur" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="Itm_Sal" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="Titm_Sal" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="Disc1_Prct" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="Disc1_Val" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="FcItm_Pur" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="FcTitm_Pur" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="Batch_No" Type="String"></asp:Parameter>
                            <asp:Parameter Name="Taxp_Extra" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="Taxv_Extra" Type="Decimal"></asp:Parameter>
                            <asp:Parameter Name="Sup_No" Type="Int64"></asp:Parameter>
                            <asp:Parameter Name="Loc_No" Type="Int16"></asp:Parameter>
                            <asp:Parameter Name="Itm_No" Type="Int64"></asp:Parameter>
                            <asp:Parameter Name="Cmp_No" Type="Int16"></asp:Parameter>
                            <asp:Parameter Name="Actvty_No" Type="Int16"></asp:Parameter>
                            <asp:Parameter Name="StoreID" Type="Int16"></asp:Parameter>
                            <asp:Parameter Name="Doc_Ty" Type="Int16"></asp:Parameter>
                            <asp:Parameter Name="Doc_No" Type="Int64"></asp:Parameter>
                            <asp:Parameter Name="Ln_No" Type="Int16"></asp:Parameter>
                        </UpdateParameters>
                    </asp:SqlDataSource>

                </div>
            </div>
             <%-- Tbl_InvLodDetails --%>


                           
       <%--<div>
                             <asp:Button ID="Btn_Update_Details" runat="server" CssClass="btn btn-primary"  Text="تعديل الصنف" OnClick="Btn_Update_Details_Click" />
                        </div>--%>
<div>

                
          <div >
              <table style="width:100%;direction:rtl">
                  <tr  >
                      <td>
                         
                      </td>
                  </tr>
              </table>
            
          </div>
                
        </div>
<%-- Panel Master --%>
<asp:Panel ID="Panel5" runat="server" BorderStyle="Solid" Width="100%" BorderWidth="1px">
            <div class="row">
                <div class="col-lg-4">
                    <%-- Panel 1 local Curancy --%>
                    <asp:Panel ID="Panel1" runat="server" BorderStyle="Solid" Width="100%" BorderWidth="1px" >
                         <div class="row">
                             <div class="col-lg-6">
                                 <div class="form-group">
                                     <asp:Label ID="Label27" runat="server" Text="الإجمالي"></asp:Label>
                                     <asp:TextBox ID="Txt_Tot_Pur" runat="server" Width="90%"></asp:TextBox>
                                 </div>
                             </div>
                             <div class="col-lg-6">
                                 <div class="form-group">
                                     <asp:Label ID="Label28" runat="server" Text="بعد الخصم"></asp:Label>
                                     <asp:TextBox ID="txtAfterDiscount" runat="server"></asp:TextBox>
                                 </div>
                             </div>
                         </div>
                        <div class="row">
                             <div class="col-lg-6">
                                 <div class="form-group" >
                                     <asp:Label ID="Label29" runat="server" Text="خصم أصناف"></asp:Label>
                                     <asp:TextBox ID="txtDiscountItemsFooter" runat="server" Width="40%"></asp:TextBox>
                                     <asp:TextBox ID="txtDiscountItems2Footer" runat="server" Width="40%"></asp:TextBox>
                                 </div>
                             </div>
                             <div class="col-lg-6">
                                 <div class="form-group">
                                     <asp:Label ID="Label30" runat="server" Text="الضرائب"></asp:Label>
                                     <asp:TextBox ID="txtTaxFooter" runat="server" Width="90%"></asp:TextBox>
                                 </div>
                             </div>
                         </div>
                        <div class="row">
                             <div class="col-lg-6">
                                 <div class="form-group" >
                                     <asp:Label ID="Label31" runat="server" Text="خصم إضافي"></asp:Label>
                                     <asp:TextBox ID="txtAdditionalDiscountFooter" runat="server" Width="40%"></asp:TextBox>
                                     <asp:TextBox ID="txtAdditionalDiscount2Footer" runat="server" Width="40%"></asp:TextBox>
                                 </div>
                             </div>
                             <div class="col-lg-6">
                                 <div class="form-group">
                                     <asp:Label ID="Label32" runat="server" Text="الصافي"></asp:Label>
                                     <asp:TextBox ID="txtNetFooter" runat="server" Width="90%"></asp:TextBox>
                                 </div>
                             </div>
                         </div>
                    </asp:Panel>
                </div>
                <div class="col-lg-3">
                    <%-- Panel 2 الإجمالي بعملة الشراء --%>
                    <asp:Panel ID="Panel2" runat="server" BorderStyle="Solid" Width="100%" BorderWidth="1px" >
                         <div class="row">
                             <div class="col-lg-6">
                                 <div class="form-group">
                                     <asp:Label ID="Label26" runat="server" Text="الإجمالي" ></asp:Label>
                                     <asp:TextBox ID="TextBox13" runat="server" Width="95%"></asp:TextBox>
                                 </div>
                             </div>
                             <div class="col-lg-6">
                                 <div class="form-group" >
                                     <asp:Label ID="Label34" runat="server" Text="خصم إضافي"></asp:Label>
                                     <asp:TextBox ID="TextBox15" runat="server" Width="40%"></asp:TextBox>
                                     <asp:TextBox ID="TextBox16" runat="server" Width="40%"></asp:TextBox>
                                 </div>
                                 
                             </div>
                         </div>
                        <div class="row">
                             <div class="col-lg-6">
                                 <div class="form-group">
                                     <asp:Label ID="Label33" runat="server" Text="الصافي"></asp:Label>
                                     <asp:TextBox ID="TextBox14" runat="server" Width="95%"></asp:TextBox>
                                 </div>
                             </div>
                             <div class="col-lg-6">
                                   <div class="form-group" >
                                     <asp:Label ID="Label36" runat="server" Text="خصم أصناف"></asp:Label>
                                     <asp:TextBox ID="TextBox18" runat="server" Width="40%"></asp:TextBox>
                                     <asp:TextBox ID="TextBox19" runat="server" Width="40%"></asp:TextBox>
                                 </div>
                                
                             </div>
                         </div>
                        <div class="row">
                             <div class="col-lg-6">
                                <div class="form-group">
                                     <asp:Label ID="Label35" runat="server" Text="قيمة البونص"></asp:Label>
                                     <asp:TextBox ID="txtBonusQuantityFooter" runat="server" Width="90%"></asp:TextBox>
                                 </div>
                             </div>
                             <div class="col-lg-6">
                                 <div class="form-group">
                                     <asp:Label ID="Label37" runat="server" Text="بضاعة سعر"></asp:Label>
                                     <asp:TextBox ID="txtGoodsPriceFooter" runat="server" Width="95%"></asp:TextBox>
                                 </div>
                             </div>
                         </div>
                    </asp:Panel>
                </div>
                <div class="col-lg-2">
                    <%-- Panel 3 مصاريف الجمارك --%>
                    <asp:Panel ID="Panel_Py" runat="server" BorderStyle="Solid" Width="100%" BorderWidth="1px" Visible="false">
                         <div class="row">
                             <div class="col-lg-12">
                                 <div class="form-group">
                                     <asp:Label ID="Label25" runat="server" Text="قيمة الجمارك"></asp:Label>
                                     <asp:TextBox ID="TextBox21" runat="server" Width="90%"></asp:TextBox>
                                 </div>
                             </div>
                             <div class="col-lg-12">
                                 <div class="form-group">
                                     <asp:Label ID="Label38" runat="server" Text="مصاريف المشتريات"></asp:Label>
                                     <asp:TextBox ID="TextBox22" runat="server" Width="90%"></asp:TextBox>
                                 </div>
                             </div>
                             <div class="col-lg-12">
                                 <div class="form-group">
                                     <asp:Label ID="Label39" runat="server" Text="مصاريف المورد"></asp:Label>
                                     <asp:TextBox ID="TextBox23" runat="server" Width="90%"></asp:TextBox>
                                 </div>
                             </div>
                             <div class="col-lg-12">
                                 <div class="form-group">
                                     <asp:Label ID="Label40" runat="server" Text="مصاريف الإعتماد"></asp:Label>
                                     <asp:TextBox ID="TextBox24" runat="server" Width="90%"></asp:TextBox>
                                 </div>
                             </div>
                             <div class="col-lg-12">
                                 <div class="form-group">
                                     <asp:Label ID="Label41" runat="server" Text="قيمة الإعتماد"></asp:Label>
                                     <asp:TextBox ID="TextBox25" runat="server" Width="90%"></asp:TextBox>
                                 </div>
                             </div>
                             <div class="col-lg-12">
                                 <div class="form-group">
                                     <asp:Label ID="Label42" runat="server" Text="جمارك/حسابات"></asp:Label>
                                     <asp:TextBox ID="TextBox26" runat="server" Width="90%"></asp:TextBox>
                                 </div>
                             </div>
                         </div>
                    </asp:Panel>
                </div>
                <div class="col-lg-3">
                    <asp:Panel ID="Panel4" runat="server" BorderStyle="Solid" Width="100%" BorderWidth="1px" >
                        <div class="row">
                            <div class="form-group">
                                <asp:GridView ID="GridView2" runat="server"></asp:GridView>
                            </div>
                        </div>
                    </asp:Panel>
                </div>
            </div>
</asp:Panel>         
             <div class="row" dir="rtl">        
          
                
       <div style="margin: 10px">
            
            <div class="modal-footer">
                <table class="table" style="width: 250px; padding: 0; margin: auto">
                    <tr>
                        <td>
                            <asp:Button ID="btnSave" runat="server" Text="حفظ"  CssClass="btn btn-primary" Style="border: 1px solid transparent; padding: 0.375rem 0.75rem;"
                                CausesValidation="true" OnClientClick="if (!deleteConfirmation()) return false;" UseSubmitBehavior="false" />

                        </td>
                        <td>
                            <asp:Button ID="btnCancel" runat="server" Text="الغاء" CssClass="btn btn-primary" Style="background-color: firebrick; border: 1px solid transparent; padding: 0.375rem 0.75rem;"
                                UseSubmitBehavior="false" />
                        </td>
                         <td>
                            <asp:Button ID="Btn_Delete" runat="server" Text="حذف الفاتورة" OnClick="Btn_Delete_Click1"  CssClass="btn btn-primary" Style="background-color: firebrick; border: 1px solid transparent; padding: 0.375rem 0.75rem;"
                                UseSubmitBehavior="false" />
                        </td>
                        <td>
                            <asp:LinkButton ID="Button10" runat="server" Text="بحث عن فاتورة شراء" CssClass="btn btn-primary" Style="background-color: cornflowerblue; border: 1px solid transparent; padding: 0.375rem 0.75rem;"
                                PostBackUrl="~/searchInovice.aspx" CausesValidation="false" UseSubmitBehavior="false" />
                        </td>
                    </tr>
                </table>
            </div>
        </div>
               
                 
              

                  <asp:HiddenField ID="Hf_InvLodhdr" runat="server" />
    
            </div>
  
 
        
        </ContentTemplate>
    </asp:UpdatePanel>
    <asp:HiddenField ID="Hf_Ln_No" runat="server" />
</asp:Content>
