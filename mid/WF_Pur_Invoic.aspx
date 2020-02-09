<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WF_Pur_Invoic.aspx.cs" Inherits="min.Forms.Pur.WF_Pur_Invoic"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" dir="rtl" runat="server" >
    <link href="Css/Calender.css" rel="stylesheet" />
    <script src="Js/Calender1.js"></script>
    <script src="Js/Calender2.js"></script>
    <%--<link href="../../Css/Calender.css" rel="stylesheet" />
    <script src="../../Js/Calender1.js"></script>
    <script src="../../Js/Calender2.js"></script>--%>
    <script type="text/javascript">
        $(function () {
            $("#<%=Txt_Doc_Dt.ClientID%>").datepicker({
                changeMonth: true,
                changeYear: true,
                yearRange: '2020:2200'
            });
        });
        $(function () {
            $(".date").datepicker({
                changeMonth: true,
                changeYear: true
            });
        });
             <%-- $(function () {
            $("#<%=Txt_Doc_DtAr.ClientID%>").datepicker({
                changeMonth: true,
                changeYear: true,
                yearRange: '2020:2200'
            });
        });
        $(function () {
            $(".date").datepicker({
                changeMonth: true,
                changeYear: true
            });
        });--%>
              $(function () {
            $("#<%=Txt_Pym_Dt.ClientID%>").datepicker({
                changeMonth: true,
                changeYear: true,
                yearRange: '2020:2200'
            });
        });
        $(function () {
            $(".date").datepicker({
                changeMonth: true,
                changeYear: true
            });
        });
                 $(function () {
            $("#<%=Txt_RcvngPur_Dt.ClientID%>").datepicker({
                changeMonth: true,
                changeYear: true,
                yearRange: '2020:2200'
            });
        });
        $(function () {
            $(".date").datepicker({
                changeMonth: true,
                changeYear: true
            });
        });
    </script>
 <%--   <script type="text/javascript">
        function numbersonly(e) {
            var unicode = e.charcode ? e.charcode : e.keycode
            if(unicode!=8){
                if(unicode !=48 && unicode !=49 && unicode !=50 && unicode !=51 && unicode !=52 && unicode !=53 && unicode !=54 && unicode !=55 && unicode !=56 && unicode !=57 && unicode !=58 && unicode !=46)
                    return false
            }
        }
    </script>--%>
        <section class="content-header" >
        <div class="panel panel-default col-lg-12" dir="rtl">
        <div class="panel-body">
            <h2 class="panel-title" style="font-size: 29px;">
                
                  فاتورة شراء</h2>
        </div>
            <%--<div dir="rtl">
               
                            <div class="col-lg-3" style="height: 50px" >
                           <asp:Label ID="Label1" runat="server" Text="Store Number"></asp:Label>
                            &nbsp;
                           
                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SQL_DDL_Store_Number" DataTextField="Brn_NmAr" DataValueField="ID_NO" OnSelectedIndexChanged="DDL_Store_Number_SelectedIndexChanged" Width="90%" AppendDataBoundItems="true" TabIndex="1">
                                <asp:ListItem Selected="True" Text="اختر الفرع" Value="0"></asp:ListItem>
                            </asp:DropDownList>
                            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="DDL_Store_Number" Display="Dynamic" ErrorMessage="*" ForeColor="Red" InitialValue="0" ValidationGroup="Save"></asp:RequiredFieldValidator>
                            </div>
                <div class="col-lg-3" style="height: 50px" >
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ICDBTrdAEntities_A %>" SelectCommand="SELECT [ID_NO], [Brn_NmAr] FROM [MainBranch]" ></asp:SqlDataSource>
                        <asp:Label ID="Label2" runat="server" Text="سند الإدخال"></asp:Label>
                            <asp:TextBox ID="TextBox1" runat="server" AutoCompleteType="Disabled" Width="90%" Enabled="False" TabIndex="2" ></asp:TextBox>
                      </div>
                <div class="col-lg-3" style="height: 50px" >
                            <asp:Label ID="Label3" runat="server" Text="تاريخ السند"></asp:Label>
                            <asp:TextBox ID="TextBox2" runat="server" AutoCompleteType="Disabled" Width="90%" TabIndex="3" placeHolder="تاريخ الفاتورة"></asp:TextBox>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="Txt_Doc_Dt" Display="Dynamic" ErrorMessage="*" ForeColor="Red"  ValidationGroup="Save"></asp:RequiredFieldValidator>
                           
                       </div>
                <div class="col-lg-3" style="height: 50px" >
                            <asp:Label ID="Label4" runat="server" Text="التاريخ هجري"></asp:Label>
                            <asp:TextBox ID="TextBox3" runat="server" AutoCompleteType="Disabled" Width="90%" TabIndex="4" placeHolder="التاريخ الهجري" ></asp:TextBox>
                      </div>
                <div class="col-lg-3" style="height: 50px" >
                             <asp:Label ID="Label5" runat="server" Text="طريقة الدفع"></asp:Label>
                             <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ICDBTrdAEntities_A %>" SelectCommand="SELECT [ID_NO], [Pym_Nmar] FROM [InvAstPymwys]"></asp:SqlDataSource>
                            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SQL_DDL_Pym_No" DataTextField="Pym_Nmar" DataValueField="ID_NO" Width="90%" TabIndex="5" AppendDataBoundItems="true">
                                <asp:ListItem Selected="True" Text="اختر طريقة الدفع" Value="0"></asp:ListItem>
                            </asp:DropDownList>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="DDL_Pym_No" Display="Dynamic" ErrorMessage="*" ForeColor="Red" InitialValue="0" ValidationGroup="Save"></asp:RequiredFieldValidator>
                           </div>
                      
            </div>--%>
    </div>
            <div>
            <table cellpadding="0" cellspacing="0" class="nav-justified" dir="rtl">
                    
                    <tr>
                        <td style="height: 50px; width: 20%;" class="text-right">
                            <div class="text-right" style="height: 50px">
                           <asp:Label ID="Label1" runat="server" Text="اسم الشركة"></asp:Label>
                            &nbsp;
                           
                            <asp:DropDownList ID="DDL_Com_NO" runat="server" DataSourceID="SQL_DDL_Com_NO" DataTextField="Cmp_Nm" DataValueField="Cmp_No"  Width="90%" AppendDataBoundItems="true" TabIndex="1">
                                <asp:ListItem Selected="True" Text="اختر الشركة" Value="0"></asp:ListItem>
                            </asp:DropDownList>
                            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="DDL_Com_NO" Display="Dynamic" ErrorMessage="*" ForeColor="Red" InitialValue="0" ValidationGroup="Save"></asp:RequiredFieldValidator>
                            </div>
                            <asp:SqlDataSource ID="SQL_DDL_Com_NO" runat="server" ConnectionString="<%$ ConnectionStrings:ICDBTrdAEntities_A %>" SelectCommand="SELECT [Cmp_No], [Cmp_Nm] FROM [MainCmpnam]" ></asp:SqlDataSource>
                            </td>
                        <td style="height: 50px; width: 20%;" class="text-right">
                            &nbsp;</td>
                        <td style="height: 50px; width: 20%;" class="text-right">
                            <div class="text-right" style="height: 50px">
                           <asp:Label ID="Label2" runat="server" Text="النشاط"></asp:Label>
                            &nbsp;
                           
                            <asp:DropDownList ID="DDL_Actinvity_NO" runat="server" DataSourceID="SQL_DDL_Actinvity_NO" DataTextField="Name_Arb" DataValueField="Actvty_No"  Width="90%" AppendDataBoundItems="true" TabIndex="1">
                                <asp:ListItem Selected="True" Text="اختر النشاط" Value="0"></asp:ListItem>
                            </asp:DropDownList>
                            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="DDL_Actinvity_NO" Display="Dynamic" ErrorMessage="*" ForeColor="Red" InitialValue="0" ValidationGroup="Save"></asp:RequiredFieldValidator>
                            </div>
                            <asp:SqlDataSource ID="SQL_DDL_Actinvity_NO" runat="server" ConnectionString="<%$ ConnectionStrings:ICDBTrdAEntities_A %>" SelectCommand="SELECT [Actvty_No], [Name_Arb] FROM [ActivityTypes]" ></asp:SqlDataSource>
                            </td>
                        <td style="height: 50px; width: 20%;" class="text-right" >
                            &nbsp;</td>
                        <td style="height: 50px; width: 20%;" class="text-right">
                             
                            <%--<asp:Button ID="Btn_Add_New" runat="server" CssClass="btn btn-adn" OnClick="Btn_Add_New_Click" Text="إضافة" />--%>
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 50px; width: 20%;" class="text-right">
                            <div class="text-right" style="height: 50px">
                           <asp:Label ID="Lbl_Store_Number" runat="server" Text="Store Number"></asp:Label>
                            &nbsp;
                           
                            <asp:DropDownList ID="DDL_Store_Number" runat="server" DataSourceID="SQL_DDL_Store_Number" DataTextField="Brn_NmAr" DataValueField="ID_NO" OnSelectedIndexChanged="DDL_Store_Number_SelectedIndexChanged" Width="90%" AppendDataBoundItems="true" TabIndex="1">
                                <asp:ListItem Selected="True" Text="اختر الفرع" Value="0"></asp:ListItem>
                            </asp:DropDownList>
                            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DDL_Store_Number" Display="Dynamic" ErrorMessage="*" ForeColor="Red" InitialValue="0" ValidationGroup="Save"></asp:RequiredFieldValidator>
                            </div>
                            <asp:SqlDataSource ID="SQL_DDL_Store_Number" runat="server" ConnectionString="<%$ ConnectionStrings:ICDBTrdAEntities_A %>" SelectCommand="SELECT [ID_NO], [Brn_NmAr] FROM [MainBranch]" ></asp:SqlDataSource>
                        </td>
                        <td style="height: 50px; width: 20%;" class="text-right">
                            <asp:Label ID="Lbl_Doc_No" runat="server" Text="سند الإدخال"></asp:Label>
                            <asp:TextBox ID="Txt_Doc_No" runat="server" AutoCompleteType="Disabled" Width="90%" Enabled="False" TabIndex="2" ></asp:TextBox>
                        </td>
                        <td style="height: 50px; width: 20%;" class="text-right">
                            <asp:Label ID="Lbl_Doc_Dt" runat="server" Text="تاريخ السند"></asp:Label>
                            <asp:TextBox ID="Txt_Doc_Dt" runat="server" AutoCompleteType="Disabled" Width="90%" TabIndex="3" placeHolder="تاريخ الفاتورة"></asp:TextBox>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="Txt_Doc_Dt" Display="Dynamic" ErrorMessage="*" ForeColor="Red"  ValidationGroup="Save"></asp:RequiredFieldValidator>
                           
                        </td>
                        <td style="height: 50px; width: 20%;" class="text-right" >
                            <asp:Label ID="Lbl_Doc_DtAr" runat="server" Text="التاريخ هجري"></asp:Label>
                            <asp:TextBox ID="Txt_Doc_DtAr" runat="server" AutoCompleteType="Disabled" Width="90%" TabIndex="4" placeHolder="التاريخ الهجري" ></asp:TextBox>
                        </td>
                        <td style="height: 50px; width: 20%;" class="text-right">
                             <asp:Label ID="Lbl_Pym_No" runat="server" Text="طريقة الدفع"></asp:Label>
                             <asp:SqlDataSource ID="SQL_DDL_Pym_No" runat="server" ConnectionString="<%$ ConnectionStrings:ICDBTrdAEntities_A %>" SelectCommand="SELECT [ID_NO], [Pym_Nmar] FROM [InvAstPymwys]"></asp:SqlDataSource>
                            <asp:DropDownList ID="DDL_Pym_No" runat="server" DataSourceID="SQL_DDL_Pym_No" DataTextField="Pym_Nmar" DataValueField="ID_NO" Width="90%" TabIndex="5" AppendDataBoundItems="true">
                                <asp:ListItem Selected="True" Text="اختر طريقة الدفع" Value="0"></asp:ListItem>
                            </asp:DropDownList>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DDL_Pym_No" Display="Dynamic" ErrorMessage="*" ForeColor="Red" InitialValue="0" ValidationGroup="Save"></asp:RequiredFieldValidator>
                           
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 50px" class="text-right">
                              <asp:Label ID="Lbl_Curncy_No" runat="server" Text="العملة"></asp:Label>
                              <asp:SqlDataSource ID="Sql_DDL_Curncy_No" runat="server"  ConnectionString="<%$ ConnectionStrings:ICDBTrdAEntities_A %>" SelectCommand="SELECT [ID_NO], [Curncy_Nmar] FROM [InvAstCurncy]" ></asp:SqlDataSource>
                            <asp:DropDownList ID="DDL_Curncy_No" runat="server" DataSourceID="Sql_DDL_Curncy_No" DataTextField="Curncy_Nmar" DataValueField="ID_NO" Width="90%" TabIndex="6"  AppendDataBoundItems="true">
                                <asp:ListItem Selected="True" Value="0" Text="اختر نوع العملة"></asp:ListItem>
                            </asp:DropDownList>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DDL_Curncy_No" Display="Dynamic" ErrorMessage="*" ForeColor="Red" InitialValue="0" ValidationGroup="Save"></asp:RequiredFieldValidator>
                        </td>
                        <td style="height: 50px; width: 15%;" class="text-right">
                            <asp:Label ID="Lbl_ExchangeRate" runat="server" Text="معدل الصرف"></asp:Label>
                            <asp:TextBox ID="Txt_ExchangeRate" runat="server" AutoCompleteType="Disabled" Text="0" Width="90%" TabIndex="7" placeHolder="معدل الصرف"></asp:TextBox>
                        </td>
                        <td style="height: 50px; width: 15%;" class="text-right">
                               <asp:Label ID="Lbl_Sup_No" runat="server" Text="المورد"></asp:Label>
                            <asp:DropDownList ID="DDL_Sup_No" runat="server"  DataTextField="Sup_NmAr" DataValueField="Sup_No" DataSourceID="SQL_DDL_Sup_No" AutoPostBack="True"  AppendDataBoundItems="True" OnSelectedIndexChanged="DDL_Sup_No_SelectedIndexChanged" Width="90%" TabIndex="8" >
                                <asp:ListItem Selected="True" Text="اختر المورد" Value="0"></asp:ListItem>
                            </asp:DropDownList>
                           
                            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DDL_Sup_No" Display="Dynamic" ErrorMessage="*" ForeColor="Red" InitialValue="0" ValidationGroup="Save"></asp:RequiredFieldValidator>
                           
                            <asp:SqlDataSource ID="SQL_DDL_Sup_No" runat="server" ConnectionString="<%$ ConnectionStrings:ICDBTrdAEntities_A %>" SelectCommand="SELECT [Sup_No], [Sup_NmAr] FROM [MtsSuplir]" ></asp:SqlDataSource>
                        </td>
                        <td style="height: 50px; width: 15%;" class="text-right">
                              <asp:Label ID="Lbl_To_Store" runat="server" Text="المخزن المستلم للبضاعة"></asp:Label>
                            <asp:DropDownList ID="DDL_To_Store" runat="server" DataSourceID="SQL_DDL_To_Store" DataTextField="Dlv_NmAr" DataValueField="ID_NO" Width="90%" TabIndex="9" AppendDataBoundItems="true">
                                <asp:ListItem Selected="True" Value="0" Text="اختر المخزن المستلم للبضاعة"></asp:ListItem>
                            </asp:DropDownList>
                              &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DDL_To_Store" Display="Dynamic" ErrorMessage="*" ForeColor="Red" InitialValue="0" ValidationGroup="Save"></asp:RequiredFieldValidator>
                              <asp:SqlDataSource ID="SQL_DDL_To_Store" runat="server" ConnectionString="<%$ ConnectionStrings:ICDBTrdAEntities_A %>" SelectCommand="SELECT [ID_NO], [Dlv_NmAr] FROM [MainBranchDlv]"></asp:SqlDataSource>
                        </td>
                        <td style="height: 50px; width: 15%;" class="text-right">
                            <asp:Label ID="Lbl_Sup_Refno" runat="server" Text="مرجع المورد"></asp:Label>
                            <asp:TextBox ID="Txt_Sup_VchrNo" runat="server" AutoCompleteType="Disabled" Width="90%" TabIndex="10" placeHolder="مرجع المورد"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="text-right" style="height: 50px">
                            <asp:Label ID="Lbl_Sup_Inv" runat="server" Text="فاتورة المورد"></asp:Label>
                            <asp:TextBox ID="Txt_Sup_Inv" runat="server" AutoCompleteType="Disabled" Width="90%" TabIndex="11" placeHolder="فاتورة المورد"></asp:TextBox>
                        </td>
                        <td class="text-right">
                            <asp:Label ID="Lbl_RcvngPur_Dt" runat="server" Text="تاريخ الإستلام"></asp:Label>
                            <asp:TextBox ID="Txt_RcvngPur_Dt" runat="server" AutoCompleteType="Disabled" Width="90%" TabIndex="12" placeHolder="تاريخ الاستلام"></asp:TextBox>
                        </td>
                        <td class="text-right">
                               <asp:Label ID="Lbl_Credit_Days" runat="server" Text="مدة السداد"></asp:Label>
                            <asp:TextBox ID="Txt_Credit_Days" runat="server" AutoCompleteType="Disabled" Width="90%" Enabled="False" TabIndex="13" placeHolder="مدة السداد"></asp:TextBox>
                        </td>
                        <td class="text-right">
                            <asp:Label ID="Lbl_Pym_Dt" runat="server" Text="تاريخ الإستحقاق"></asp:Label>
                            <asp:TextBox ID="Txt_Pym_Dt" runat="server" AutoCompleteType="Disabled" Width="90%" TabIndex="14" placeHolder="تاريخ الإستحقاق" Enabled="False"></asp:TextBox>
                        </td>
                        <td class="text-right">
                                 <asp:Label ID="Lbl_Notes" runat="server" Text="ملاحظات"></asp:Label>
                            <asp:TextBox ID="Txt_Notes" runat="server" AutoCompleteType="Disabled" Width="90%" TabIndex="15" placeHolder="ملاحظات"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="text-right" style="height: 50px">
                                        <asp:Label ID="Lbl_Reftyp_No" runat="server" Text="نوع المرجع"></asp:Label>
                            <asp:DropDownList ID="DDL_Reftyp_No" runat="server"  DataTextField="RefTyp_NmAr" DataValueField="RefTyp_No" DataSourceID="SQL_DDL_Reftyp_No" Width="90%" TabIndex="16"></asp:DropDownList>
                            <asp:SqlDataSource ID="SQL_DDL_Reftyp_No" runat="server" ConnectionString="<%$ ConnectionStrings:ICDBTrdAEntities_A %>" SelectCommand="SELECT [RefTyp_No], [RefTyp_NmAr] FROM [InvAstRefTyp]"></asp:SqlDataSource>
                        </td>
                        <td class="text-right">
                            <asp:Label ID="Lbl_Ref_No" runat="server" Text="رقم المرجع"></asp:Label>
                            <asp:DropDownList ID="DDL_Ref_No" runat="server" Width="90%" TabIndex="17"></asp:DropDownList>
                        </td>
                        <td class="text-right">
                                 &nbsp;</td>
                        <td class="text-right">
                                       
                            &nbsp;
                        </td>
                        <td class="text-right">
                            
                            <asp:Button ID="Btn_Save" runat="server" OnClick="Btn_Save_Click" Text="حفظ" ValidationGroup="Save" TabIndex="18" />
                        </td>
                    </tr>                   

                    <tr>
                        <td>
                            <div >
             <asp:Label ID="Label5" runat="server" Text="رقم الصنف"></asp:Label>
                            <asp:TextBox ID="Txt_Itm_No" runat="server" AutoCompleteType="Disabled" Width="90%" TabIndex="15" placeHolder="رقم الصنف" OnTextChanged="Txt_Itm_No_TextChanged"></asp:TextBox>
                                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="Txt_Itm_No" Display="Dynamic" ErrorMessage="*" ForeColor="Red"  ValidationGroup="Add"></asp:RequiredFieldValidator>
            </div>
                        </td>
                        <td>
                            <div  >

                           <asp:Label ID="Label3" runat="server" Text="اسم الصنف"></asp:Label>
                            &nbsp;
                           
                            <asp:DropDownList ID="DDL_Itm_NmAr" runat="server" AutoPostBack="true" DataSourceID="SQL_DDL_Itm_NmAr" DataTextField="Itm_NmAr" DataValueField="Itm_No"  Width="90%" AppendDataBoundItems="true" TabIndex="1" OnSelectedIndexChanged="DDL_Itm_NmAr_SelectedIndexChanged">
                                <asp:ListItem Selected="True" Text="اختر الصنف" Value="0"></asp:ListItem>
                            </asp:DropDownList>
                            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="DDL_Itm_NmAr" Display="Dynamic" ErrorMessage="*" ForeColor="Red" InitialValue="0" ValidationGroup="Add"></asp:RequiredFieldValidator>
              <asp:SqlDataSource ID="SQL_DDL_Itm_NmAr" runat="server" ConnectionString="<%$ ConnectionStrings:ICDBTrdAEntities_A %>" SelectCommand="SELECT [Itm_No], [Itm_NmAr] FROM [MtsItmMfs]"  ></asp:SqlDataSource>
                            </div>
                        </td>
                        <td>
                            <div >
             <asp:Label ID="Label7" runat="server" Text="الكمية"></asp:Label>
                            <asp:TextBox ID="Txt_Qty" runat="server" AutoCompleteType="Disabled" Width="90%" TabIndex="15" placeHolder="الكمية" OnTextChanged="Txt_Qty_TextChanged" Text="1"></asp:TextBox>
            </div>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="Txt_Qty" Display="Dynamic" ErrorMessage="*" ForeColor="Red"  ValidationGroup="Add"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                             <div >
                           <asp:Label ID="Label4" runat="server" Text=" الوحدة"></asp:Label>
                            &nbsp;
                           
                            <asp:DropDownList ID="DDL_Itm_Unit" runat="server" DataSourceID="SQL_DDL_Itm_Unit" DataTextField="Unit_NmAr" DataValueField="Unit_No"  Width="90%" AppendDataBoundItems="True" TabIndex="1" OnSelectedIndexChanged="DDL_Itm_Unit_OnSelectedIndexChanged">
                                <%--<asp:ListItem Selected="True" Text="اختر الوحدة" Value="0"></asp:ListItem>--%>
                            </asp:DropDownList>
                            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="DDL_Com_NO" Display="Dynamic" ErrorMessage="*" ForeColor="Red" InitialValue="0" ValidationGroup="Add"></asp:RequiredFieldValidator>
                <asp:SqlDataSource ID="SQL_DDL_Itm_Unit" runat="server" ConnectionString="<%$ ConnectionStrings:ICDBTrdAEntities_A %>" SelectCommand="MtsItmunit_Gett_By_Itm_No" SelectCommandType="StoredProcedure" >
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="DDL_Itm_NmAr" Name="Itm_No" PropertyName="SelectedValue" Type="Int64"  />
                                </SelectParameters>
                            </asp:SqlDataSource>
                            </div>
                        </td>
                        <td>
                             <div >
                        
             <asp:Label ID="Label6" runat="server" Text="سعر الوحدة"></asp:Label>
                            <asp:TextBox ID="Txt_Itm_Pur" runat="server" AutoCompleteType="Disabled" Text="0.00"  TabIndex="15" placeHolder="سعر الوحدة" OnTextChanged="Txt_Itm_pur_TextChanged"></asp:TextBox>
                                 </div>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="Txt_Itm_Pur" Display="Dynamic" ErrorMessage="*" ForeColor="Red"  ValidationGroup="Add"></asp:RequiredFieldValidator>
        
     
                        </td>
                    </tr>
                <tr>
                    <td>
                        <div >                        
                       <asp:Label ID="Label8" runat="server" Text="إجمالي قيمة الصنف"></asp:Label>
                       <asp:TextBox ID="Txt_Titm_Pur" runat="server" AutoCompleteType="Disabled" Enabled="false" ></asp:TextBox>
                            
                        </div>
                    </td>
                    <td>
                        <div >                        
                    <asp:Label ID="Label9" runat="server" Text="خصم أول" ></asp:Label>
                    <asp:TextBox ID="Txt_Disc1_Prct" runat="server" AutoCompleteType="Disabled"  Text="0" TabIndex="15" placeHolder="خصم أول"></asp:TextBox>
                            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="Txt_Disc1_Prct" Display="Dynamic" ErrorMessage="*" ForeColor="Red"  ValidationGroup="Add"></asp:RequiredFieldValidator>
                        </div>
                    </td>
                    <td>
                      <div >                        
                    <asp:Label ID="Label10" runat="server" Text="خصم ثاني"></asp:Label>
                    <asp:TextBox ID="Txt_Disc2_Prct" runat="server" AutoCompleteType="Disabled" Text="0"  TabIndex="15" placeHolder="خصم ثاني"></asp:TextBox>
                          &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="Txt_Disc2_Prct" Display="Dynamic" ErrorMessage="*" ForeColor="Red"  ValidationGroup="Add"></asp:RequiredFieldValidator>
                        </div>
                    </td>
                    <td>
                         <div>
                             <asp:Button ID="Btn_Add_Details" runat="server"  Text="إضافة صنف" OnClick="Btn_Add_Details_Click" ValidationGroup="Add" />
                        </div>
                    </td>
                    <td>
                       
                         <div>
                             <asp:Button ID="Btn_Update_Details" runat="server"  Text="تعديل الصنف" OnClick="Btn_Update_Details_Click" />
                        </div>
                    </td>

                </tr>
                </table>
                <asp:HiddenField ID="Hf_Ln_No" runat="server" />
        </div>
            
             <div class="row" dir="rtl">        
          
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" PageSize="5" CssClass="table table-striped" AutoGenerateColumns="False" DataKeyNames="Cmp_No,Actvty_No,StoreID,Doc_Ty,Doc_No,Ln_No" DataSourceID="SqlDataSource1"  Width="90%" OnRowCommand="GridView1_RowCommand">
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
            </section>
    
</asp:Content>
