<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Pur_Invoice_Delete.aspx.cs" Inherits="mid.Pur_Invoice_Delete" %>
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
                <div class="col-lg-7">
                    <div class="form-group">
                            <asp:Label ID="Lbl_Notes" runat="server" Text="ملاحظات"></asp:Label>
                            <asp:TextBox ID="Txt_Notes" runat="server" AutoCompleteType="Disabled" Width="100%" TabIndex="18" placeHolder="ملاحظات"></asp:TextBox>
                    </div>
                </div>
                <div class="col-lg-1">
                       <div class="form-group" style="display:flex">
                         <asp:Button ID="Btn_Save" runat="server" CssClass="btn btn-primary"  OnClick="Btn_Save_Click" Text="حفظ" ValidationGroup="Save" TabIndex="19" />
                      </div>
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
                    <asp:Panel ID="Panel3" runat="server" BorderStyle="Groove" Width="100%" BorderWidth="1px" ScrollBars="Both">   
                        <table style="width:300%; background:#b5d7f7">
                            <tr>
                                <td >
                                    <asp:Label ID="Label61" runat="server" Text="م"></asp:Label>
                                </td>
                                <td >
                                    <asp:Label ID="Label62" runat="server" Text="رقم الصنف"></asp:Label>
                                </td>
                                <td >
                                    <asp:Label ID="Label63" runat="server" Text="اسم الصنف"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="Label64" runat="server" Text="الوحدة"></asp:Label>
                                </td>
                                 <td>
                                     <asp:Label ID="Label65" runat="server" Text="الكمية"></asp:Label>
                                 </td>
                                 <td>
                                     <asp:Label ID="Label66" runat="server" Text="تاريخ الصلاحية"></asp:Label>
                                 </td>
                                 <td>
                                     <asp:Label ID="Label67" runat="server" Text="سعر الوحدة"></asp:Label>
                                 </td>
                                 <td>
                                     <asp:Label ID="Label68" runat="server" Text="الإجمالي"></asp:Label>
                                 </td>
                                 <td>
                                     <asp:Label ID="Label69" runat="server" Text="خصم 1 % شراء"></asp:Label>
                                 </td>
                                 <td>
                                     <asp:Label ID="Label70" runat="server" Text="قيمة الخصم"></asp:Label>
                                 </td>
                                 <td>
                                     <asp:Label ID="Label71" runat="server" Text="سعر البيع"></asp:Label>
                                 </td>
                                 <td>
                                     <asp:Label ID="Label72" runat="server" Text="قيمة البيع"></asp:Label>
                                 </td>
                                 <td>
                                     <asp:Label ID="Label73" runat="server" Text="تكلفة الوحدة"></asp:Label>
                                 </td>
                                 <td>
                                     <asp:Label ID="Label74" runat="server" Text="تكلفة الصنف"></asp:Label>
                                 </td>
                                 <td>
                                     <asp:Label ID="Label75" runat="server" Text="رقم الباتش"></asp:Label>
                                 </td>
                                 <td>
                                     <asp:Label ID="Label76" runat="server" Text="ضريبة %"></asp:Label>
                                 </td>
                                 <td>
                                     <asp:Label ID="Label77" runat="server" Text="قيمة الضريبة"></asp:Label>
                                 </td>
                                 <td>
                                     <asp:Label ID="Label78" runat="server" Text="رقم الموقع"></asp:Label>
                                 </td>
                                 <td>
                                     <asp:Label ID="Label79" runat="server" Text="المستودع"></asp:Label>
                                 </td>
                                 <td>

                                 </td>
                                 
                            </tr>
                            <tr>
                                <td style="width:2%">
                                    <asp:TextBox ID="Txt_Ln_No" runat="server" Width="100%" Enabled="false"></asp:TextBox>
                                </td>
                                <td style="width:4%">
                                    <asp:TextBox ID="Txt_Itm_No" runat="server" AutoCompleteType="Disabled" Width="100%" TabIndex="15" placeHolder="رقم الصنف" OnTextChanged="Txt_Itm_No_TextChanged"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="Txt_Itm_No" Display="Dynamic" ErrorMessage="*" ForeColor="Red"  ValidationGroup="Add"></asp:RequiredFieldValidator>
                                </td>
                                <td style="width: 10%">
                                    <asp:DropDownList ID="DDL_Itm_NmAr" runat="server" AutoPostBack="true" DataSourceID="SQL_DDL_Itm_NmAr" DataTextField="Itm_NmAr" DataValueField="Itm_No" Width="100%" AppendDataBoundItems="true" TabIndex="1" OnSelectedIndexChanged="DDL_Itm_NmAr_SelectedIndexChanged">
                                        <asp:ListItem Selected="True" Text="اختر الصنف" Value="0"></asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="DDL_Itm_NmAr" Display="Dynamic" ErrorMessage="*" ForeColor="Red" InitialValue="0" ValidationGroup="Add"></asp:RequiredFieldValidator>
                                    <asp:SqlDataSource ID="SQL_DDL_Itm_NmAr" runat="server" ConnectionString="<%$ ConnectionStrings:ICDBTrdAEntities_A %>" SelectCommand="SELECT [Itm_No], [Itm_NmAr] FROM [MtsItmMfs]"></asp:SqlDataSource>

                                </td>
                                <td style="width: 4%">
                                    <asp:DropDownList ID="DDL_Itm_Unit" runat="server" DataSourceID="SQL_DDL_Itm_Unit" DataTextField="Unit_NmAr" DataValueField="Unit_No" Width="100%" AppendDataBoundItems="True" TabIndex="1" AutoPostBack="true" OnSelectedIndexChanged="DDL_Itm_Unit_OnSelectedIndexChanged">
                                        <%--<asp:ListItem Selected="True" Text="اختر الوحدة" Value="0"></asp:ListItem>--%>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="DDL_Com_NO" Display="Dynamic" ErrorMessage="*" ForeColor="Red" InitialValue="0" ValidationGroup="Add"></asp:RequiredFieldValidator>
                                    <asp:SqlDataSource ID="SQL_DDL_Itm_Unit" runat="server" ConnectionString="<%$ ConnectionStrings:ICDBTrdAEntities_A %>" SelectCommand="MtsItmunit_Gett_By_Itm_No" SelectCommandType="StoredProcedure">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="DDL_Itm_NmAr" Name="Itm_No" PropertyName="SelectedValue" Type="Int64" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </td>
                                <td style="width: 2%">
                                    <asp:TextBox ID="Txt_Qty" runat="server" AutoCompleteType="Disabled" Width="100%" TabIndex="15" placeHolder="الكمية" OnTextChanged="Txt_Qty_TextChanged" AutoPostBack="true" Text="1"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="Txt_Qty" Display="Dynamic" ErrorMessage="*" ForeColor="Red"  ValidationGroup="Add"></asp:RequiredFieldValidator>           
                                </td>
                                <td style="width: 4%">
                                    <asp:TextBox ID="Txt_Exp_Date" runat="server" AutoCompleteType="Disabled" Width="100%"  TabIndex="15" placeHolder="تاريخ الصلاحية" ></asp:TextBox>              
                                    <ajaxToolkit:CalendarExtender ID="CalendarExtender3" runat="server"  TargetControlID="Txt_Exp_Date" PopupButtonID="Txt_Exp_Date"  Format="dd/MM/yyyy"/>
                                </td>
                                <td style="width: 8%">
                                    <asp:TextBox ID="Txt_Itm_Pur" runat="server" AutoCompleteType="Disabled" Width="100%" Text="0.00"  TabIndex="15" placeHolder="سعر الوحدة" OnTextChanged="Txt_Itm_pur_TextChanged"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="Txt_Itm_Pur" Display="Dynamic" ErrorMessage="*" ForeColor="Red"  ValidationGroup="Add"></asp:RequiredFieldValidator>        
                                </td>
                                <td style="width: 8%">                                    
                                    <asp:TextBox ID="Txt_Titm_Pur" runat="server" AutoCompleteType="Disabled" Enabled="false" Width="100%" ></asp:TextBox>            
                                </td>
                                <td style="width: 4%">
                                    <asp:TextBox ID="Txt_Disc1_Prct" runat="server" AutoCompleteType="Disabled" Width="100%"  TabIndex="15" placeHolder="خصم 1 % شراء" OnTextChanged="Txt_Itm_pur_TextChanged"></asp:TextBox>                
                                </td>
                                <td style="width: 6%">
                                    <asp:TextBox ID="Txt_Disc1_Val" runat="server" AutoCompleteType="Disabled" text="0" Width="100%" TabIndex="15" placeHolder="سعر الوحدة" OnTextChanged="Txt_Itm_pur_TextChanged"></asp:TextBox>               
                                </td>
                                <td style="width: 8%">
                                    <asp:TextBox ID="Txt_Item_Sal" runat="server" AutoCompleteType="Disabled"  Width="100%" TabIndex="15" placeHolder="سعر البيع" OnTextChanged="Txt_Itm_pur_TextChanged"></asp:TextBox>               
                                </td>
                                <td style="width: 8%">
                                    <asp:TextBox ID="Txt_TItem_Sal" runat="server" AutoCompleteType="Disabled" Width="100%"  TabIndex="15" placeHolder="قيمة البيع" OnTextChanged="Txt_Itm_pur_TextChanged"></asp:TextBox>              
                                </td>
                                <td style="width: 8%">
                                    <asp:TextBox ID="Txt_FcItm_Pur" runat="server" AutoCompleteType="Disabled"  Width="100%" TabIndex="15" placeHolder="تكلفة الوحدة" OnTextChanged="Txt_Itm_pur_TextChanged"></asp:TextBox>              
                                </td>
                                <td style="width: 8%">
                                    <asp:TextBox ID="Txt_FcTitm_Pur" runat="server" AutoCompleteType="Disabled" Width="100%" TabIndex="15" placeHolder="تكلفة الصنف" OnTextChanged="Txt_Itm_pur_TextChanged"></asp:TextBox>              
                                </td>
                                <td style="width: 4%">
                                    <asp:TextBox ID="Txt_Batch_No" runat="server" AutoCompleteType="Disabled" Width="100%"  TabIndex="15" placeHolder="رقم الباتش" ></asp:TextBox>             
                                </td>
                                <td style="width: 2%">
                                    <asp:TextBox ID="Txt_Taxp_Extra" runat="server" AutoCompleteType="Disabled"   TabIndex="15" placeHolder="الضريبة" Width="100%" OnTextChanged="Txt_Itm_pur_TextChanged"></asp:TextBox>             
                                </td>
                                <td style="width: 4%">
                                    <asp:TextBox ID="Txt_Taxv_Extra" runat="server" AutoCompleteType="Disabled"   TabIndex="15" placeHolder="قيمة الضريبة" Width="100%" OnTextChanged="Txt_Itm_pur_TextChanged"></asp:TextBox>              
                                </td>
                                <td style="width: 2%">
                                    <asp:TextBox ID="Txt_Loc_No" runat="server" AutoCompleteType="Disabled" Width="100%" TabIndex="15" placeHolder="الكمية" OnTextChanged="Txt_Qty_TextChanged" Text="1"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="Txt_Loc_No" Display="Dynamic" ErrorMessage="*" ForeColor="Red"  ValidationGroup="Add"></asp:RequiredFieldValidator>
                                </td>
                                <td style="width: 4%">
                                    <asp:DropDownList ID="DropDownList1" runat="server" Width="100%"></asp:DropDownList>
                                </td>
                                <td style="width:2%">
                                    <asp:Button ID="Btn_Add_Details" runat="server"  Width="100%" Text="حفظ" OnClick="Btn_Add_Details_Click"  />                      
                                </td>
                            </tr>
                            <tr>
                                <td style="height:10px"></td>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                <td></td>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                <td></td>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                <td></td>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                                 <td></td>
                            </tr>
                        </table>
                        <asp:GridView ID="GVInv_Details" runat="server" AutoGenerateColumns="False" Width="300%" DataKeyNames="Cmp_No,Actvty_No,StoreID,Doc_Ty,Doc_No,Ln_No" DataSourceID="SQL_GVInv_Details" HeaderStyle-Height="30px" Font-Bold="True" Font-Size="Small" ShowHeader="false" GridLines="None">
                            <Columns>
                                <asp:TemplateField HeaderText="م" SortExpression="Ln_No">
                                    <EditItemTemplate>
                                        <asp:Label runat="server" Text='<%# Eval("Ln_No") %>' ID="Label1" Height="30px"></asp:Label>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label runat="server" Text='<%# Bind("Ln_No") %>' ID="Label1" Height="30px"></asp:Label>
                                    </ItemTemplate>
                                    <ItemStyle Width="2%"></ItemStyle>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="رقم الصنف" SortExpression="Itm_No">
                                    <HeaderTemplate>
                                        <div class="form-group>">
                                            <asp:Label ID="Label43" runat="server" Text="رقم الصنف" ></asp:Label>
                                            <asp:TextBox ID="GV_Itm_No" runat="server" Font-Bold="True" Font-Size="Larger" Height="30px" Width="90%" AutoPostBack="true" OnTextChanged="GV_Itm_No_TextChanged"></asp:TextBox>
                                        </div>
                                    </HeaderTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox runat="server" Text='<%# Bind("Itm_No") %>' ID="TextBox1" Width="100%"></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>                                        
                                        <asp:TextBox ID="TextBox20" runat="server" Text='<%# Bind("Itm_No") %>' Width="100%"></asp:TextBox>
                                    </ItemTemplate>
                                    <ItemStyle Width="4%"></ItemStyle>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="اسم الصنف">
                                    <HeaderTemplate>
                                        <asp:Label ID="Label60" runat="server" Text="اسم الصنف"></asp:Label>
                                        <asp:DropDownList ID="GV_ItmName" runat="server" DataSourceID="GVSQL_DDL_Itm_NmAr" Width="90%" DataTextField="Itm_NmAr" DataValueField="Itm_No" AppendDataBoundItems="true" AutoPostBack="true" OnSelectedIndexChanged="GV_ItmName_SelectedIndexChanged">
                                            <asp:ListItem Selected="True" Value="0" Text="اختر اسم الصنف"></asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="GVSQL_DDL_Itm_NmAr" runat="server" ConnectionString='<%$ ConnectionStrings:ICDBTrdAEntities_A %>' SelectCommand="SELECT [Itm_No], [Itm_NmAr] FROM [MtsItmMfs]"></asp:SqlDataSource>
                                    </HeaderTemplate>
                                    <EditItemTemplate>
                                        <asp:DropDownList ID="DropDownList2" runat="server" Width="100%"></asp:DropDownList>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:DropDownList ID="DropDownList3" runat="server" Width="100%"></asp:DropDownList>
                                    </ItemTemplate>
                                    <ItemStyle Width="10%"></ItemStyle>
                                </asp:TemplateField>
                                
                                <asp:TemplateField HeaderText="الوحدة" SortExpression="Unit_No">
                                    <HeaderTemplate>
                                        <div class="form-group">
                                            <div class="form-group">
                                                <asp:Label ID="Label4" runat="server" Text=" الوحدة"></asp:Label>
                                                <asp:DropDownList ID="GV_Itm_Unit" runat="server" DataSourceID="SQL_DDL_Itm_Unit" DataTextField="Unit_NmAr" DataValueField="Unit_No" Width="90%" AppendDataBoundItems="True"  AutoPostBack="true" OnSelectedIndexChanged="DDL_Itm_Unit_OnSelectedIndexChanged">
                                                    <asp:ListItem Selected="True" Text="اختر الوحدة" Value="0"></asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="GV_Itm_Unit" Display="Dynamic" ErrorMessage="*" ForeColor="Red" InitialValue="0" ValidationGroup="Add"></asp:RequiredFieldValidator>
                                                <asp:SqlDataSource ID="SQL_DDL_Itm_Unit" runat="server" ConnectionString="<%$ ConnectionStrings:ICDBTrdAEntities_A %>" SelectCommand="MtsItmunit_Gett_By_Itm_No" SelectCommandType="StoredProcedure">
                                                    <SelectParameters>
                                                        <asp:ControlParameter ControlID="GV_Itm_No" Name="Itm_No" PropertyName="Text" Type="Int64" />
                                                    </SelectParameters>
                                                </asp:SqlDataSource>
                                            </div>
                                        </div>
                                    </HeaderTemplate>
                                    <EditItemTemplate>
                                           <%--  <asp:DropDownList ID="GV_Itm_Unit1" runat="server" SelectedValue='<%# Bind("Unit_No") %>' DataSourceID="SQL_DDL_Itm_Unit1" DataTextField="Unit_NmAr" DataValueField="Unit_No" Width="90%" AppendDataBoundItems="True"  AutoPostBack="true" OnSelectedIndexChanged="DDL_Itm_Unit_OnSelectedIndexChanged">
                                                    <asp:ListItem Selected="True" Text="اختر الوحدة" Value="0"></asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="GV_Itm_Unit" Display="Dynamic" ErrorMessage="*" ForeColor="Red" InitialValue="0" ValidationGroup="Add"></asp:RequiredFieldValidator>
                                              --%>                                          
                                        <asp:TextBox runat="server" Text='<%# Bind("Unit_No") %>' ID="TextBox2" Width="100%"></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label runat="server" Text='<%# Bind("Unit_No") %>' ID="Label3" Width="100%"></asp:Label>
                                   <%--     <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SQL_DDL_Itm_Unit1" DataTextField="Unit_NmAr" DataValueField='<%# Bind("Unit_No") %>' AppendDataBoundItems="true">
                                            <asp:ListItem Selected="True" Value="0" Text="اختر الوحدة"></asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SQL_DDL_Itm_Unit1" runat="server" ConnectionString="<%$ ConnectionStrings:ICDBTrdAEntities_A %>" SelectCommand="SELECT [Unit_No], [Unit_NmAr] FROM [ItmsUnit]">
                                                </asp:SqlDataSource>--%>
                                    </ItemTemplate>
                                    <ItemStyle Width="4%"></ItemStyle>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="الكمية"  SortExpression="Qty">
                                    <HeaderTemplate>
                                        <asp:Label ID="Label44" runat="server" Text="الكمية"></asp:Label>
                                        <asp:TextBox ID="GV_Qty" runat="server"></asp:TextBox>
                                    </HeaderTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox runat="server" Text='<%# Bind("Qty") %>' ID="TextBox3"></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label runat="server" Text='<%# Bind("Qty") %>' ID="Label4"></asp:Label>
                                    </ItemTemplate>
                                    <ItemStyle Width="2%"></ItemStyle>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="تاريخ الصلاحية" SortExpression="Exp_Date">
                                    <HeaderTemplate>
                                        <asp:Label ID="Label45" runat="server" Text="تاريخ الصلاحية"></asp:Label>
                                        <asp:TextBox ID="GV_Exp_Date" runat="server" AutoCompleteType="Disabled" Width="90%" ></asp:TextBox>
                                        <ajaxToolkit:CalendarExtender ID="CalendarExtender3" runat="server" TargetControlID="GV_Exp_Date" PopupButtonID="GV_Exp_Date" Format="dd/MM/yyyy" />
                                    </HeaderTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox runat="server" Text='<%# Bind("Exp_Date") %>' ID="TextBox4"></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label runat="server" Text='<%# Bind("Exp_Date") %>' ID="Label5"></asp:Label>
                                    </ItemTemplate>
                                    <ItemStyle Width="4%"></ItemStyle>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="سعر الوحدة" SortExpression="Itm_Pur">
                                    <HeaderTemplate>
                                        <asp:Label ID="Label46" runat="server" Text="سعر الوحدة"></asp:Label>
                                        <asp:TextBox ID="GV_Itm_Pur" runat="server" Width="90%"></asp:TextBox>
                                    </HeaderTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox runat="server" Text='<%# Bind("Itm_Pur") %>' ID="TextBox5"></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label runat="server" Text='<%# Bind("Itm_Pur") %>' ID="Label6"></asp:Label>
                                    </ItemTemplate>
                                    <ItemStyle Width="8%"></ItemStyle>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="الإجمالي" SortExpression="Titm_Pur">
                                    <HeaderTemplate>
                                        <asp:Label ID="Label47" runat="server" Text="الإجمالي"></asp:Label>
                                        <asp:TextBox ID="GV_TItm_Pur" runat="server" Width="90%"></asp:TextBox>
                                    </HeaderTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox runat="server" Text='<%# Bind("Titm_Pur") %>' ID="TextBox6"></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label runat="server" Text='<%# Bind("Titm_Pur") %>' ID="Label7"></asp:Label>
                                    </ItemTemplate>
                                    <ItemStyle Width="8%"></ItemStyle>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="خصم 1 %" SortExpression="Disc1_Prct">
                                        <HeaderTemplate>
                                        <asp:Label ID="Label48" runat="server" Text="خصم 1% شراء"></asp:Label>
                                        <asp:TextBox ID="GV__Disc1_Prct" runat="server" Width="90%"></asp:TextBox>
                                    </HeaderTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox runat="server" Text='<%# Bind("Disc1_Prct") %>' ID="TextBox7"></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label runat="server" Text='<%# Bind("Disc1_Prct") %>' ID="Label8"></asp:Label>
                                    </ItemTemplate>
                                    <ItemStyle Width="4%"></ItemStyle>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="قيمة الخصم" SortExpression="Disc1_Val">
                                    <HeaderTemplate>
                                        <asp:Label ID="Label49" runat="server" Text="قيمة الخصم"></asp:Label>
                                        <asp:TextBox ID="GV_Disc1_Val" runat="server" Width="90%"></asp:TextBox>
                                    </HeaderTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox runat="server" Text='<%# Bind("Disc1_Val") %>' ID="TextBox10"></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label runat="server" Text='<%# Bind("Disc1_Val") %>' ID="Label11"></asp:Label>
                                    </ItemTemplate>
                                    <ItemStyle Width="6%"></ItemStyle>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="سعر البيع" SortExpression="Itm_Sal">
                                    <HeaderTemplate>
                                        <asp:Label ID="Label50" runat="server" Text="سعر البيع"></asp:Label>
                                        <asp:TextBox ID="GV_ItmSal" runat="server" Width="90%"></asp:TextBox>
                                    </HeaderTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox runat="server" Text='<%# Bind("Itm_Sal") %>' ID="TextBox8"></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label runat="server" Text='<%# Bind("Itm_Sal") %>' ID="Label9"></asp:Label>
                                    </ItemTemplate>
                                    <ItemStyle Width="8%"></ItemStyle>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="قيمة البيع" SortExpression="Titm_Sal">
                                    <HeaderTemplate>
                                        <asp:Label ID="Label51" runat="server" Text="قيمة البيع"></asp:Label>
                                        <asp:TextBox ID="GV_TitmSal" runat="server" Width="90%"></asp:TextBox>
                                    </HeaderTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox runat="server" Text='<%# Bind("Titm_Sal") %>' ID="TextBox9"></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label runat="server" Text='<%# Bind("Titm_Sal") %>' ID="Label10"></asp:Label>
                                    </ItemTemplate>
                                    <ItemStyle Width="8%"></ItemStyle>
                                </asp:TemplateField>
                                
                                <asp:TemplateField HeaderText="تكلفة الوحدة" SortExpression="FcItm_Pur">
                                    <HeaderTemplate>
                                        <asp:Label ID="Label52" runat="server" Text="تكلفة الوحدة"></asp:Label>
                                        <asp:TextBox ID="GV_FcItm_Pur" runat="server" Width="90%"></asp:TextBox>
                                    </HeaderTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox runat="server" Text='<%# Bind("FcItm_Pur") %>' ID="TextBox11"></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label runat="server" Text='<%# Bind("FcItm_Pur") %>' ID="Label12"></asp:Label>
                                    </ItemTemplate>
                                    <ItemStyle Width="8%"></ItemStyle>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="تكلفة الصنف" SortExpression="FcTitm_Pur">
                                    <HeaderTemplate>
                                        <asp:Label ID="Label53" runat="server" Text="تكلفة الصنف"></asp:Label>
                                        <asp:TextBox ID="GV_FcTitm_Pur" runat="server" Width="90%"></asp:TextBox>
                                    </HeaderTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox runat="server" Text='<%# Bind("FcTitm_Pur") %>' ID="TextBox12"></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label runat="server" Text='<%# Bind("FcTitm_Pur") %>' ID="Label13"></asp:Label>
                                    </ItemTemplate>
                                    <ItemStyle Width="8%"></ItemStyle>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="رقم الباتش" SortExpression="Batch_No">
                                    <HeaderTemplate>
                                        <asp:Label ID="Label54" runat="server" Text="رقم الباتش"></asp:Label>
                                        <asp:TextBox ID="GV_Batch_No" runat="server" Width="90%"></asp:TextBox>
                                    </HeaderTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox runat="server" Text='<%# Bind("Batch_No") %>' ID="TextBox13"></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label runat="server" Text='<%# Bind("Batch_No") %>' ID="Label14"></asp:Label>
                                    </ItemTemplate>
                                    <ItemStyle Width="4%"></ItemStyle>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="ضريبة 1 %" SortExpression="Taxp_Extra">
                                    <HeaderTemplate>
                                        <asp:Label ID="Label55" runat="server" Text="ضريبة 1 %"></asp:Label>
                                        <asp:TextBox ID="GV_Taxp_Extra" runat="server" Width="90%"></asp:TextBox>
                                    </HeaderTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox runat="server" Text='<%# Bind("Taxp_Extra") %>' ID="TextBox14"></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label runat="server" Text='<%# Bind("Taxp_Extra") %>' ID="Label15"></asp:Label>
                                    </ItemTemplate>
                                    <ItemStyle Width="2%"></ItemStyle>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="قيمة الضريبة" SortExpression="Taxv_Extra">
                                    <HeaderTemplate>
                                        <asp:Label ID="Label57" runat="server" Text="قيمة الضريبة"></asp:Label>
                                        <asp:TextBox ID="GV_Taxv_Extra" runat="server" Width="90%"></asp:TextBox>
                                    </HeaderTemplate>
                                    <HeaderTemplate>
                                        <asp:Label ID="Label56" runat="server" Text="قيمة الضريبة"></asp:Label>
                                        <asp:TextBox ID="GV_Taxv_Extra" runat="server"></asp:TextBox>
                                    </HeaderTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox runat="server" Text='<%# Bind("Taxv_Extra") %>' ID="TextBox15"></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label runat="server" Text='<%# Bind("Taxv_Extra") %>' ID="Label16"></asp:Label>
                                    </ItemTemplate>
                                    <ItemStyle Width="4%"></ItemStyle>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="رقم الموقع" SortExpression="Loc_No">
                                    <HeaderTemplate>
                                        <asp:Label ID="Label58" runat="server" Text="رقم الموقع"></asp:Label>
                                        <asp:TextBox ID="GV_Loc_No" runat="server" Width="90%"></asp:TextBox>
                                    </HeaderTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox runat="server" Text='<%# Bind("Loc_No") %>' ID="TextBox17"></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label runat="server" Text='<%# Bind("Loc_No") %>' ID="Label18"></asp:Label>
                                    </ItemTemplate>
                                    <ItemStyle Width="2%"></ItemStyle>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="المستودع" SortExpression="To_Store">
                                    <HeaderTemplate>
                                        <asp:Label ID="Label59" runat="server" Text="المستودع"></asp:Label>
                                        <asp:DropDownList ID="GV_To_Store" runat="server" DataSourceID="SQL_GV_To_Store" DataTextField="Dlv_NmAr" DataValueField="ID_NO">
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SQL_GV_To_Store" runat="server"  ConnectionString="<%$ ConnectionStrings:ICDBTrdAEntities_A %>" SelectCommand="SELECT [ID_NO], [Dlv_NmAr] FROM [MainBranchDlv]"></asp:SqlDataSource>
                                    </HeaderTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox runat="server" Text='<%# Bind("To_Store") %>' ID="TextBox18"></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label runat="server" Text='<%# Bind("To_Store") %>' ID="Label19"></asp:Label>
                                    </ItemTemplate>
                                    <ItemStyle Width="2%"></ItemStyle>
                                </asp:TemplateField>
                                <asp:TemplateField ShowHeader="False">
                                    <HeaderTemplate>
                                        <asp:LinkButton ID="LinkButton3" runat="server" CssClass="btn btn-primary" Enabled="true" OnClick="LinkButton3_Click">حفظ</asp:LinkButton>
                                    </HeaderTemplate>
                                    <EditItemTemplate>
                                        <asp:LinkButton runat="server" Text="Update" CommandName="Update" CausesValidation="True" ID="LinkButton1">
                                        </asp:LinkButton>&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" CausesValidation="False" ID="LinkButton2"></asp:LinkButton>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:LinkButton runat="server" Text="Edit" CommandName="Edit" CausesValidation="False" ID="LinkButton1"></asp:LinkButton>
                                        &nbsp;<asp:LinkButton runat="server" Text="Delete" CommandName="Delete" CausesValidation="False" ID="LinkButton2" OnClientClick="return confirm('هل تريد حذف هذا السجل ؟')"></asp:LinkButton>
                                    </ItemTemplate>
                                    <ItemStyle Width="2%"></ItemStyle>
                                </asp:TemplateField>

                            
                            </Columns>
                        </asp:GridView>                      
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
                            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" PageSize="5" CssClass="table table-striped" AutoGenerateColumns="False" DataKeyNames="Cmp_No,Actvty_No,StoreID,Doc_Ty,Doc_No,Ln_No" DataSourceID="SqlDataSource1"  Width="100%" OnRowCommand="GridView1_RowCommand">
                                <Columns>
                                    <asp:BoundField DataField="Ln_No" HeaderText="م" ReadOnly="True" SortExpression="Ln_No" >
                                    <ControlStyle Width="10%" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Itm_No" HeaderText="رقم الصنف" SortExpression="Itm_No" >
                                    <ControlStyle Width="10%" />
                                    </asp:BoundField>
                                    <asp:TemplateField HeaderText="اسم الصنف">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("Ln_No") %>' Text='<%# Eval("Itm_NmAr") %>'></asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="Qty" HeaderText="الكمية" SortExpression="Qty" >
                                    <ControlStyle Width="10%" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Itm_Pur" HeaderText="سعر الوحدة" SortExpression="Itm_Pur" >
                                    <ControlStyle Width="15%" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Titm_Pur" HeaderText="الإجمالي" SortExpression="Titm_Pur" >
                                    <ControlStyle Width="20%" />
                                    </asp:BoundField>
                                   
                                    <asp:TemplateField HeaderText="حذف" ShowHeader="False">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" Text="حذف" OnClientClick="return confirm('هل تريد حذف هذا السجل ؟')"></asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                   
                                </Columns>
                            </asp:GridView>
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
                            <asp:Button ID="Btn_Delete" runat="server" Text="حذف الفاتورة" OnClick="Btn_Delete_Click" OnClientClick="return confirm('هل تريد حذف  الفاتورة بكل محتوياتها؟')" CssClass="btn btn-primary" Style="background-color: firebrick; border: 1px solid transparent; padding: 0.375rem 0.75rem;"
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
               
                 
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ICDBTrdAEntities_A %>" DeleteCommand="DELETE FROM [InvLoddtl] WHERE [Cmp_No] = @Cmp_No AND [Actvty_No] = @Actvty_No AND [StoreID] = @StoreID AND [Doc_Ty] = @Doc_Ty AND [Doc_No] = @Doc_No AND [Ln_No] = @Ln_No" InsertCommand="INSERT INTO [InvLoddtl] ([Cmp_No], [Actvty_No], [StoreID], [Doc_Ty], [Doc_No], [Ln_No], [Dlv_Stor], [Doc_Dt], [Doc_DtAr], [Custm_Inv], [Reftyp_No], [Ref_No], [Pym_No], [To_Store], [Mrkt_No], [Period_Time], [Slm_No], [Ac_Ty], [City_No], [Cstm_No], [Sup_No], [Catg_No], [Kind_No], [Itm_No], [Loc_No], [Itm_RefNo], [Unit_No], [UnitLn_No], [Unit_ratio], [Qty], [Dlv_Qty], [Exp_Date], [Unit_Price], [Itm_Cost], [Itm_Sal], [Itm_Pur], [Titm_Val], [Titm_Cost], [Titm_Sal], [Titm_Pur], [Tot_Expens], [Disc1_Val], [Disc2_Val], [Othr_Disc], [Disc1_Prct], [Disc2_Prct], [Itm_SalSubUnt], [Itm_SalSubUnt2], [Itm_SalSubUnt3], [Bonus_Qty], [Bonus_Val], [Bonus_Prct], [BonusPur_Qty], [BonusPur_Val], [BonusPur_Prct], [DiscSal_Prct], [DiscSal2_prct], [BonusSalCrdt_Prct], [BonusSalCash_Prct], [Itm_Rcpt_Hold], [Customs_Prct], [Customs], [FcItm_Sal], [FcItm_Pur], [FcTitm_Val], [FcTitm_Cost], [FcTitm_Sal], [FcTitm_Pur], [SExpens], [Pur_Exp], [Othr_Price1], [Othr_Price2], [Titm_OPrice], [Ret_Qty], [Ret_Val], [Ret_Uprice], [Reord_Blnc], [Bal_Qty], [Bal_Val], [Itm_Blnc], [Itm_BlncCost], [User_Id], [Qty_Print], [updt_date], [Lc_No], [Doc_Post], [Batch_No], [F4], [SpecialDiscount], [Taxp_Extra], [Taxv_Extra]) VALUES (@Cmp_No, @Actvty_No, @StoreID, @Doc_Ty, @Doc_No, @Ln_No, @Dlv_Stor, @Doc_Dt, @Doc_DtAr, @Custm_Inv, @Reftyp_No, @Ref_No, @Pym_No, @To_Store, @Mrkt_No, @Period_Time, @Slm_No, @Ac_Ty, @City_No, @Cstm_No, @Sup_No, @Catg_No, @Kind_No, @Itm_No, @Loc_No, @Itm_RefNo, @Unit_No, @UnitLn_No, @Unit_ratio, @Qty, @Dlv_Qty, @Exp_Date, @Unit_Price, @Itm_Cost, @Itm_Sal, @Itm_Pur, @Titm_Val, @Titm_Cost, @Titm_Sal, @Titm_Pur, @Tot_Expens, @Disc1_Val, @Disc2_Val, @Othr_Disc, @Disc1_Prct, @Disc2_Prct, @Itm_SalSubUnt, @Itm_SalSubUnt2, @Itm_SalSubUnt3, @Bonus_Qty, @Bonus_Val, @Bonus_Prct, @BonusPur_Qty, @BonusPur_Val, @BonusPur_Prct, @DiscSal_Prct, @DiscSal2_prct, @BonusSalCrdt_Prct, @BonusSalCash_Prct, @Itm_Rcpt_Hold, @Customs_Prct, @Customs, @FcItm_Sal, @FcItm_Pur, @FcTitm_Val, @FcTitm_Cost, @FcTitm_Sal, @FcTitm_Pur, @SExpens, @Pur_Exp, @Othr_Price1, @Othr_Price2, @Titm_OPrice, @Ret_Qty, @Ret_Val, @Ret_Uprice, @Reord_Blnc, @Bal_Qty, @Bal_Val, @Itm_Blnc, @Itm_BlncCost, @User_Id, @Qty_Print, @updt_date, @Lc_No, @Doc_Post, @Batch_No, @F4, @SpecialDiscount, @Taxp_Extra, @Taxv_Extra)" SelectCommand="InvLoddtl_Get_By_Doc_No" SelectCommandType="StoredProcedure" UpdateCommand="UPDATE [InvLoddtl] SET [Dlv_Stor] = @Dlv_Stor, [Doc_Dt] = @Doc_Dt, [Doc_DtAr] = @Doc_DtAr, [Custm_Inv] = @Custm_Inv, [Reftyp_No] = @Reftyp_No, [Ref_No] = @Ref_No, [Pym_No] = @Pym_No, [To_Store] = @To_Store, [Mrkt_No] = @Mrkt_No, [Period_Time] = @Period_Time, [Slm_No] = @Slm_No, [Ac_Ty] = @Ac_Ty, [City_No] = @City_No, [Cstm_No] = @Cstm_No, [Sup_No] = @Sup_No, [Catg_No] = @Catg_No, [Kind_No] = @Kind_No, [Itm_No] = @Itm_No, [Loc_No] = @Loc_No, [Itm_RefNo] = @Itm_RefNo, [Unit_No] = @Unit_No, [UnitLn_No] = @UnitLn_No, [Unit_ratio] = @Unit_ratio, [Qty] = @Qty, [Dlv_Qty] = @Dlv_Qty, [Exp_Date] = @Exp_Date, [Unit_Price] = @Unit_Price, [Itm_Cost] = @Itm_Cost, [Itm_Sal] = @Itm_Sal, [Itm_Pur] = @Itm_Pur, [Titm_Val] = @Titm_Val, [Titm_Cost] = @Titm_Cost, [Titm_Sal] = @Titm_Sal, [Titm_Pur] = @Titm_Pur, [Tot_Expens] = @Tot_Expens, [Disc1_Val] = @Disc1_Val, [Disc2_Val] = @Disc2_Val, [Othr_Disc] = @Othr_Disc, [Disc1_Prct] = @Disc1_Prct, [Disc2_Prct] = @Disc2_Prct, [Itm_SalSubUnt] = @Itm_SalSubUnt, [Itm_SalSubUnt2] = @Itm_SalSubUnt2, [Itm_SalSubUnt3] = @Itm_SalSubUnt3, [Bonus_Qty] = @Bonus_Qty, [Bonus_Val] = @Bonus_Val, [Bonus_Prct] = @Bonus_Prct, [BonusPur_Qty] = @BonusPur_Qty, [BonusPur_Val] = @BonusPur_Val, [BonusPur_Prct] = @BonusPur_Prct, [DiscSal_Prct] = @DiscSal_Prct, [DiscSal2_prct] = @DiscSal2_prct, [BonusSalCrdt_Prct] = @BonusSalCrdt_Prct, [BonusSalCash_Prct] = @BonusSalCash_Prct, [Itm_Rcpt_Hold] = @Itm_Rcpt_Hold, [Customs_Prct] = @Customs_Prct, [Customs] = @Customs, [FcItm_Sal] = @FcItm_Sal, [FcItm_Pur] = @FcItm_Pur, [FcTitm_Val] = @FcTitm_Val, [FcTitm_Cost] = @FcTitm_Cost, [FcTitm_Sal] = @FcTitm_Sal, [FcTitm_Pur] = @FcTitm_Pur, [SExpens] = @SExpens, [Pur_Exp] = @Pur_Exp, [Othr_Price1] = @Othr_Price1, [Othr_Price2] = @Othr_Price2, [Titm_OPrice] = @Titm_OPrice, [Ret_Qty] = @Ret_Qty, [Ret_Val] = @Ret_Val, [Ret_Uprice] = @Ret_Uprice, [Reord_Blnc] = @Reord_Blnc, [Bal_Qty] = @Bal_Qty, [Bal_Val] = @Bal_Val, [Itm_Blnc] = @Itm_Blnc, [Itm_BlncCost] = @Itm_BlncCost, [User_Id] = @User_Id, [Qty_Print] = @Qty_Print, [updt_date] = @updt_date, [Lc_No] = @Lc_No, [Doc_Post] = @Doc_Post, [Batch_No] = @Batch_No, [F4] = @F4, [SpecialDiscount] = @SpecialDiscount, [Taxp_Extra] = @Taxp_Extra, [Taxv_Extra] = @Taxv_Extra WHERE [Cmp_No] = @Cmp_No AND [Actvty_No] = @Actvty_No AND [StoreID] = @StoreID AND [Doc_Ty] = @Doc_Ty AND [Doc_No] = @Doc_No AND [Ln_No] = @Ln_No">
                                <DeleteParameters>
                                    <asp:Parameter Name="Cmp_No" Type="Int16" />
                                    <asp:Parameter Name="Actvty_No" Type="Int16" />
                                    <asp:Parameter Name="StoreID" Type="Int16" />
                                    <asp:Parameter Name="Doc_Ty" Type="Int16" />
                                    <asp:Parameter Name="Doc_No" Type="Int64" />
                                    <asp:Parameter Name="Ln_No" Type="Int16" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="Cmp_No" Type="Int16" />
                                    <asp:Parameter Name="Actvty_No" Type="Int16" />
                                    <asp:Parameter Name="StoreID" Type="Int16" />
                                    <asp:Parameter Name="Doc_Ty" Type="Int16" />
                                    <asp:Parameter Name="Doc_No" Type="Int64" />
                                    <asp:Parameter Name="Ln_No" Type="Int16" />
                                    <asp:Parameter Name="Dlv_Stor" Type="Int16" />
                                    <asp:Parameter Name="Doc_Dt" Type="DateTime" />
                                    <asp:Parameter Name="Doc_DtAr" Type="String" />
                                    <asp:Parameter Name="Custm_Inv" Type="Int64" />
                                    <asp:Parameter Name="Reftyp_No" Type="Int16" />
                                    <asp:Parameter Name="Ref_No" Type="Int64" />
                                    <asp:Parameter Name="Pym_No" Type="Int16" />
                                    <asp:Parameter Name="To_Store" Type="Int16" />
                                    <asp:Parameter Name="Mrkt_No" Type="Int16" />
                                    <asp:Parameter Name="Period_Time" Type="Int16" />
                                    <asp:Parameter Name="Slm_No" Type="Int16" />
                                    <asp:Parameter Name="Ac_Ty" Type="Int16" />
                                    <asp:Parameter Name="City_No" Type="Int16" />
                                    <asp:Parameter Name="Cstm_No" Type="Int64" />
                                    <asp:Parameter Name="Sup_No" Type="Int64" />
                                    <asp:Parameter Name="Catg_No" Type="Int64" />
                                    <asp:Parameter Name="Kind_No" Type="Int32" />
                                    <asp:Parameter Name="Itm_No" Type="Int64" />
                                    <asp:Parameter Name="Loc_No" Type="Int16" />
                                    <asp:Parameter Name="Itm_RefNo" Type="String" />
                                    <asp:Parameter Name="Unit_No" Type="Int16" />
                                    <asp:Parameter Name="UnitLn_No" Type="Int32" />
                                    <asp:Parameter Name="Unit_ratio" Type="Int32" />
                                    <asp:Parameter Name="Qty" Type="Decimal" />
                                    <asp:Parameter Name="Dlv_Qty" Type="Decimal" />
                                    <asp:Parameter Name="Exp_Date" Type="String" />
                                    <asp:Parameter Name="Unit_Price" Type="Decimal" />
                                    <asp:Parameter Name="Itm_Cost" Type="Decimal" />
                                    <asp:Parameter Name="Itm_Sal" Type="Decimal" />
                                    <asp:Parameter Name="Itm_Pur" Type="Decimal" />
                                    <asp:Parameter Name="Titm_Val" Type="Decimal" />
                                    <asp:Parameter Name="Titm_Cost" Type="Decimal" />
                                    <asp:Parameter Name="Titm_Sal" Type="Decimal" />
                                    <asp:Parameter Name="Titm_Pur" Type="Decimal" />
                                    <asp:Parameter Name="Tot_Expens" Type="Decimal" />
                                    <asp:Parameter Name="Disc1_Val" Type="Decimal" />
                                    <asp:Parameter Name="Disc2_Val" Type="Decimal" />
                                    <asp:Parameter Name="Othr_Disc" Type="Decimal" />
                                    <asp:Parameter Name="Disc1_Prct" Type="Decimal" />
                                    <asp:Parameter Name="Disc2_Prct" Type="Decimal" />
                                    <asp:Parameter Name="Itm_SalSubUnt" Type="Decimal" />
                                    <asp:Parameter Name="Itm_SalSubUnt2" Type="Decimal" />
                                    <asp:Parameter Name="Itm_SalSubUnt3" Type="Decimal" />
                                    <asp:Parameter Name="Bonus_Qty" Type="Decimal" />
                                    <asp:Parameter Name="Bonus_Val" Type="Decimal" />
                                    <asp:Parameter Name="Bonus_Prct" Type="Decimal" />
                                    <asp:Parameter Name="BonusPur_Qty" Type="Decimal" />
                                    <asp:Parameter Name="BonusPur_Val" Type="Decimal" />
                                    <asp:Parameter Name="BonusPur_Prct" Type="Decimal" />
                                    <asp:Parameter Name="DiscSal_Prct" Type="Decimal" />
                                    <asp:Parameter Name="DiscSal2_prct" Type="Decimal" />
                                    <asp:Parameter Name="BonusSalCrdt_Prct" Type="Decimal" />
                                    <asp:Parameter Name="BonusSalCash_Prct" Type="Int16" />
                                    <asp:Parameter Name="Itm_Rcpt_Hold" Type="Int16" />
                                    <asp:Parameter Name="Customs_Prct" Type="Decimal" />
                                    <asp:Parameter Name="Customs" Type="Decimal" />
                                    <asp:Parameter Name="FcItm_Sal" Type="Decimal" />
                                    <asp:Parameter Name="FcItm_Pur" Type="Decimal" />
                                    <asp:Parameter Name="FcTitm_Val" Type="Decimal" />
                                    <asp:Parameter Name="FcTitm_Cost" Type="Decimal" />
                                    <asp:Parameter Name="FcTitm_Sal" Type="Decimal" />
                                    <asp:Parameter Name="FcTitm_Pur" Type="Decimal" />
                                    <asp:Parameter Name="SExpens" Type="Decimal" />
                                    <asp:Parameter Name="Pur_Exp" Type="Decimal" />
                                    <asp:Parameter Name="Othr_Price1" Type="Decimal" />
                                    <asp:Parameter Name="Othr_Price2" Type="Decimal" />
                                    <asp:Parameter Name="Titm_OPrice" Type="Decimal" />
                                    <asp:Parameter Name="Ret_Qty" Type="Decimal" />
                                    <asp:Parameter Name="Ret_Val" Type="Decimal" />
                                    <asp:Parameter Name="Ret_Uprice" Type="Decimal" />
                                    <asp:Parameter Name="Reord_Blnc" Type="Decimal" />
                                    <asp:Parameter Name="Bal_Qty" Type="Decimal" />
                                    <asp:Parameter Name="Bal_Val" Type="Decimal" />
                                    <asp:Parameter Name="Itm_Blnc" Type="Decimal" />
                                    <asp:Parameter Name="Itm_BlncCost" Type="Decimal" />
                                    <asp:Parameter Name="User_Id" Type="Int16" />
                                    <asp:Parameter Name="Qty_Print" Type="String" />
                                    <asp:Parameter Name="updt_date" Type="String" />
                                    <asp:Parameter Name="Lc_No" Type="String" />
                                    <asp:Parameter Name="Doc_Post" Type="String" />
                                    <asp:Parameter Name="Batch_No" Type="String" />
                                    <asp:Parameter Name="F4" Type="Int16" />
                                    <asp:Parameter Name="SpecialDiscount" Type="Decimal" />
                                    <asp:Parameter Name="Taxp_Extra" Type="Decimal" />
                                    <asp:Parameter Name="Taxv_Extra" Type="Decimal" />
                                </InsertParameters>
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="Txt_Doc_No" Name="Doc_No" PropertyName="Text" Type="Int64" />
                                </SelectParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="Dlv_Stor" Type="Int16" />
                                    <asp:Parameter Name="Doc_Dt" Type="DateTime" />
                                    <asp:Parameter Name="Doc_DtAr" Type="String" />
                                    <asp:Parameter Name="Custm_Inv" Type="Int64" />
                                    <asp:Parameter Name="Reftyp_No" Type="Int16" />
                                    <asp:Parameter Name="Ref_No" Type="Int64" />
                                    <asp:Parameter Name="Pym_No" Type="Int16" />
                                    <asp:Parameter Name="To_Store" Type="Int16" />
                                    <asp:Parameter Name="Mrkt_No" Type="Int16" />
                                    <asp:Parameter Name="Period_Time" Type="Int16" />
                                    <asp:Parameter Name="Slm_No" Type="Int16" />
                                    <asp:Parameter Name="Ac_Ty" Type="Int16" />
                                    <asp:Parameter Name="City_No" Type="Int16" />
                                    <asp:Parameter Name="Cstm_No" Type="Int64" />
                                    <asp:Parameter Name="Sup_No" Type="Int64" />
                                    <asp:Parameter Name="Catg_No" Type="Int64" />
                                    <asp:Parameter Name="Kind_No" Type="Int32" />
                                    <asp:Parameter Name="Itm_No" Type="Int64" />
                                    <asp:Parameter Name="Loc_No" Type="Int16" />
                                    <asp:Parameter Name="Itm_RefNo" Type="String" />
                                    <asp:Parameter Name="Unit_No" Type="Int16" />
                                    <asp:Parameter Name="UnitLn_No" Type="Int32" />
                                    <asp:Parameter Name="Unit_ratio" Type="Int32" />
                                    <asp:Parameter Name="Qty" Type="Decimal" />
                                    <asp:Parameter Name="Dlv_Qty" Type="Decimal" />
                                    <asp:Parameter Name="Exp_Date" Type="String" />
                                    <asp:Parameter Name="Unit_Price" Type="Decimal" />
                                    <asp:Parameter Name="Itm_Cost" Type="Decimal" />
                                    <asp:Parameter Name="Itm_Sal" Type="Decimal" />
                                    <asp:Parameter Name="Itm_Pur" Type="Decimal" />
                                    <asp:Parameter Name="Titm_Val" Type="Decimal" />
                                    <asp:Parameter Name="Titm_Cost" Type="Decimal" />
                                    <asp:Parameter Name="Titm_Sal" Type="Decimal" />
                                    <asp:Parameter Name="Titm_Pur" Type="Decimal" />
                                    <asp:Parameter Name="Tot_Expens" Type="Decimal" />
                                    <asp:Parameter Name="Disc1_Val" Type="Decimal" />
                                    <asp:Parameter Name="Disc2_Val" Type="Decimal" />
                                    <asp:Parameter Name="Othr_Disc" Type="Decimal" />
                                    <asp:Parameter Name="Disc1_Prct" Type="Decimal" />
                                    <asp:Parameter Name="Disc2_Prct" Type="Decimal" />
                                    <asp:Parameter Name="Itm_SalSubUnt" Type="Decimal" />
                                    <asp:Parameter Name="Itm_SalSubUnt2" Type="Decimal" />
                                    <asp:Parameter Name="Itm_SalSubUnt3" Type="Decimal" />
                                    <asp:Parameter Name="Bonus_Qty" Type="Decimal" />
                                    <asp:Parameter Name="Bonus_Val" Type="Decimal" />
                                    <asp:Parameter Name="Bonus_Prct" Type="Decimal" />
                                    <asp:Parameter Name="BonusPur_Qty" Type="Decimal" />
                                    <asp:Parameter Name="BonusPur_Val" Type="Decimal" />
                                    <asp:Parameter Name="BonusPur_Prct" Type="Decimal" />
                                    <asp:Parameter Name="DiscSal_Prct" Type="Decimal" />
                                    <asp:Parameter Name="DiscSal2_prct" Type="Decimal" />
                                    <asp:Parameter Name="BonusSalCrdt_Prct" Type="Decimal" />
                                    <asp:Parameter Name="BonusSalCash_Prct" Type="Int16" />
                                    <asp:Parameter Name="Itm_Rcpt_Hold" Type="Int16" />
                                    <asp:Parameter Name="Customs_Prct" Type="Decimal" />
                                    <asp:Parameter Name="Customs" Type="Decimal" />
                                    <asp:Parameter Name="FcItm_Sal" Type="Decimal" />
                                    <asp:Parameter Name="FcItm_Pur" Type="Decimal" />
                                    <asp:Parameter Name="FcTitm_Val" Type="Decimal" />
                                    <asp:Parameter Name="FcTitm_Cost" Type="Decimal" />
                                    <asp:Parameter Name="FcTitm_Sal" Type="Decimal" />
                                    <asp:Parameter Name="FcTitm_Pur" Type="Decimal" />
                                    <asp:Parameter Name="SExpens" Type="Decimal" />
                                    <asp:Parameter Name="Pur_Exp" Type="Decimal" />
                                    <asp:Parameter Name="Othr_Price1" Type="Decimal" />
                                    <asp:Parameter Name="Othr_Price2" Type="Decimal" />
                                    <asp:Parameter Name="Titm_OPrice" Type="Decimal" />
                                    <asp:Parameter Name="Ret_Qty" Type="Decimal" />
                                    <asp:Parameter Name="Ret_Val" Type="Decimal" />
                                    <asp:Parameter Name="Ret_Uprice" Type="Decimal" />
                                    <asp:Parameter Name="Reord_Blnc" Type="Decimal" />
                                    <asp:Parameter Name="Bal_Qty" Type="Decimal" />
                                    <asp:Parameter Name="Bal_Val" Type="Decimal" />
                                    <asp:Parameter Name="Itm_Blnc" Type="Decimal" />
                                    <asp:Parameter Name="Itm_BlncCost" Type="Decimal" />
                                    <asp:Parameter Name="User_Id" Type="Int16" />
                                    <asp:Parameter Name="Qty_Print" Type="String" />
                                    <asp:Parameter Name="updt_date" Type="String" />
                                    <asp:Parameter Name="Lc_No" Type="String" />
                                    <asp:Parameter Name="Doc_Post" Type="String" />
                                    <asp:Parameter Name="Batch_No" Type="String" />
                                    <asp:Parameter Name="F4" Type="Int16" />
                                    <asp:Parameter Name="SpecialDiscount" Type="Decimal" />
                                    <asp:Parameter Name="Taxp_Extra" Type="Decimal" />
                                    <asp:Parameter Name="Taxv_Extra" Type="Decimal" />
                                    <asp:Parameter Name="Cmp_No" Type="Int16" />
                                    <asp:Parameter Name="Actvty_No" Type="Int16" />
                                    <asp:Parameter Name="StoreID" Type="Int16" />
                                    <asp:Parameter Name="Doc_Ty" Type="Int16" />
                                    <asp:Parameter Name="Doc_No" Type="Int64" />
                                    <asp:Parameter Name="Ln_No" Type="Int16" />
                                </UpdateParameters>
                            </asp:SqlDataSource>

                  <asp:HiddenField ID="Hf_InvLodhdr" runat="server" />
    
            </div>
  
 
        
        </ContentTemplate>
    </asp:UpdatePanel>
    <asp:HiddenField ID="Hf_Ln_No" runat="server" />
</asp:Content>
