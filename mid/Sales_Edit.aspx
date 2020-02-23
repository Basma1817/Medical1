<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Sales_Edit.aspx.cs" Inherits="mid.Sales_Edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <style>
        th{
            text-align:right;
        }
       
       
        .save{
            text-align:center;
        }
     
       
     
       

        
       
       

    </style>
   
   
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
 
     <div class="panel panel-default col-lg-12">
        <div class="panel-body">
            <h2 class="panel-title" style="font-size: 29px;">فاتورة المبيعات </h2>




        </div>
    </div>
  <div class="row">
            <div class="col-md-6">
                <div class="form-group" style="display: flex">
                     <asp:Label ID="Label2" runat="server" Text="الشركات" style="width: 25%" ></asp:Label>
                    <asp:DropDownList ID="ddl_company" runat="server"  style="width: 50%"  AutoPostBack="true"></asp:DropDownList>

                 
                  
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group" style="display: flex">
                    <asp:Label ID="Label1" runat="server" Text="النشاط" style="width: 25%" ></asp:Label>
                    <asp:DropDownList ID="ddl_activity" runat="server"  style="width: 50%" AutoPostBack="true" ></asp:DropDownList>

                </div>
            </div>

        </div>
    <!--start الفروع-->
    <div class="row">
    <table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">الفرع</th>
      <th scope="col">رقم الفاتورة</th>
      <th scope="col">تاريخ ميلادي</th>
      <th scope="col">تاريخ هجري</th>
      <th scope="col">نوع المرجع</th>
      <th scope="col">رقم المرجع</th>



    </tr>
  </thead>
  <tbody>
    <tr>
    
      <td>
          <asp:DropDownList ID="ddl_branch" runat="server"></asp:DropDownList>
      </td>
     
      <td>
          <asp:TextBox ID="txt_pill" runat="server"></asp:TextBox>
      </td>
         <td>
          <asp:TextBox ID="txt_DateEN" runat="server"  AutoPostBack="true" AutoCompleteType="Disabled"></asp:TextBox>
             <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txt_DateEN" PopupButtonID="txt_DateEN" Format="dd/MM/yyyy"/>
      </td>
      
         <td>
          <asp:TextBox ID="TXT_DateAR" runat="server" ></asp:TextBox>
      </td>
        <td>
          <asp:DropDownList ID="ddl_ref_type" runat="server"></asp:DropDownList>

        </td>
        <td>
          <asp:DropDownList ID="ddl_ref_no" runat="server"></asp:DropDownList>

        </td>
    </tr>
      <tr>
      <th scope="col">المستودع </th>

      <th scope="col">طريقة الدفع</th>
      <th scope="col">المستند </th>
      <th scope="col">العميل</th>
      <th scope="col">رقم</th>


      </tr>
    <tr>
      <td>
          <asp:DropDownList ID="ddl_mostwd3" runat="server"></asp:DropDownList>

      </td>
      <td>
          <asp:DropDownList ID="ddl_pay" runat="server"></asp:DropDownList>
      </td>
      <td>
           
          <asp:TextBox ID="txt_doc" runat="server"></asp:TextBox>

      
      </td>
        
         <td>
          <asp:DropDownList ID="ddl_customer" runat="server"  AutoPostBack="true"></asp:DropDownList>
      </td>
         <td>
             <asp:TextBox ID="txt_customer_no" runat="server"  ></asp:TextBox>
      </td>
         <td>
      </td>
    </tr>
      <tr>
       <th scope="col">مندوب المبيعات</th>
      <th scope="col">مدة السداد </th>
      <th scope="col">تاريخ السداد</th>
      <th scope="col">الضريبة المضافة </th>
      <th scope="col">
      </th>
      <th scope="col"></th>
      </tr>
    <tr>
      <td>
          <asp:DropDownList ID="ddl_sales_man" runat="server" AutoPostBack="true"></asp:DropDownList>
      </td>
      <td>
          <asp:TextBox ID="txt_pay_time" runat="server"></asp:TextBox>
      </td>
      <td>
          <asp:TextBox ID="txt_pay_date" runat="server"></asp:TextBox>

      </td>
        <td>
            <asp:CheckBox ID="CheckBox1" runat="server"  />
        </td>
        <td>

        </td>
        <td>

        </td>
    </tr>
  </tbody>
</table>
    </div>
    <!--end الفروع-->

        <div>
            

            <div class="col-md-6">
                <div class="form-group">
                    <label for="">ملاحظات 2</label>
                    <asp:TextBox ID="txt_note1" runat="server" style="width:100%" placeholder="ملاحظات "> </asp:TextBox>
                    <%--<input name="Notes" id="Notes" class="form-control Notes">--%>
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">

                    <label for="">ملاحظات1</label>
                    <asp:TextBox ID="txt_note2" runat="server" style="width:100%" placeholder="ملاحظات "></asp:TextBox>

                    <%--<input name="Notes1" id="Notes1" class="form-control Notes1">--%>
                </div>
            </div>
        </div>

        <div class="row items_table" id="mydata">
            <div class="col-md-12">
                <table class="table table-bordered table-responsive">
                    <tr class="bg-aqua">
                        <th>م</th>
                        <th>رقم الصنف</th>
                        <th style="width: 13%">إسم الصنف</th>
                        <th style="width: 10%">الوحدة</th>
                        <th>رقم الموقع </th>
                        <th>الكمية</th>
                        <th>سعر البيع</th>
                        <th>إجمالي القيمة</th>
                        <th style="width: 10%;">تاريخ الصلاحية</th>
                        <th> الباتش</th>
                        <th>خصم بيع%</th>
                        <th>قيمة الخصم1</th>
                        <th>الضريبة%</th>
                        <th>قيمة الضريبة</th>
                    </tr>
                    <tbody class="table_body">
                    <tr class="first_row">
                        <td class="delete_row bg-red"><span>1</span><input type="hidden" name="Ln_No" value="1"></td>
                        <td>
                            <asp:TextBox ID="txt_itemNo" runat="server" width="40px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddl_itemname" runat="server" Width="140px" ></asp:DropDownList>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddl_unit" runat="server" Width="100px"></asp:DropDownList>
                        </td>
                        <td>
                            <asp:TextBox ID="txt_siteNo" runat="server" width="40px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="txt_quantity" runat="server" width="40px" AutoPostBack="true" placeholder="00.0"></asp:TextBox>

                        </td>
                        <td>
                            <asp:TextBox ID="txt_sell_price" runat="server" width="40px"  AutoPostBack="true" placeholder="00.0"></asp:TextBox>

                        </td>
                        <td>
                            <asp:TextBox ID="txt_total_value" runat="server" width="40px" AutoPostBack="true" placeholder="00.0"></asp:TextBox>

                        </td>
                        <td>
                            <asp:TextBox ID="txt_expire_date" runat="server" width="115px" placeholder="dd/MM/yyyy"></asp:TextBox>

                        </td>
                        <td>
                            <asp:TextBox ID="txt_patch" runat="server" width="40px"></asp:TextBox>

                        </td>
                        <td>
                            <asp:TextBox ID="txt_sell_discount" runat="server" width="40px"  placeholder="%"  AutoPostBack="true"></asp:TextBox>

                        </td>
                        <td>
                            <asp:TextBox ID="txt_discount_value" runat="server" width="40px" placeholder="00.0" AutoPostBack="true"></asp:TextBox>

                        </td>
                        <td>
                            <asp:TextBox ID="txt_tax" runat="server" width="40px" placeholder="%"  AutoPostBack="true"></asp:TextBox>

                        </td>
                        <td>
                            <asp:TextBox ID="txt_tax_value1" runat="server" width="40px" placeholder="00.0" AutoPostBack="true"></asp:TextBox>

                        </td>
                    </tr>
                    </tbody>
                    <tfoot class="bg-primary" style="cursor: pointer">
                    
                    </tfoot>
                    <tr>
                        <td>
                            <asp:Button ID="btn_save_total" runat="server" Text="إضافة"  />
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    <!--start the last table-->
    <table class="table table-striped">
 
  <tbody>
    <tr>
      <td>
          <asp:Label ID="Label3" runat="server" Text="الإجمالي"></asp:Label>
      </td>
         <td>
          <asp:Label ID="Label4" runat="server" Text="بعد الخصم"></asp:Label>
      </td>
   
         <td>
          <asp:Label ID="Label6" runat="server" Text="خصم إضافي"></asp:Label>
      </td>
         <td>
          <asp:Label ID="Label7" runat="server" Text="خصم أصناف"></asp:Label>
      </td>
         <td>
          <asp:Label ID="Label8" runat="server" Text="قيمة الضريبة "></asp:Label>
      </td>
         <td>
          <asp:Label ID="Label9" runat="server" Text="الصافي"></asp:Label>
      </td>
    </tr>
      <tr>
          <td>
             <asp:TextBox ID="txt_total" runat="server"  placeholder="00.0"></asp:TextBox>

          </td>
           <td>
             <asp:TextBox ID="txt_after_discount" runat="server" placeholder="00.0"></asp:TextBox>

          </td>
           <td>
             <asp:TextBox ID="txt_extra_discount" runat="server" placeholder="00.0"></asp:TextBox>

          </td>
           <td>
             <asp:TextBox ID="txt_types_discount" runat="server" placeholder="00.0"></asp:TextBox>

          </td>
           <td>
             <asp:TextBox ID="txt_tax_value" runat="server" placeholder="00.0"></asp:TextBox>

          </td>
           <td>
             <asp:TextBox ID="txt_net" runat="server" placeholder="00.0"></asp:TextBox>

          </td>
      </tr>
    <tr>
        
      <td>
          <asp:Label ID="Label10" runat="server" Text="حد الإتمان"></asp:Label>
          <asp:TextBox ID="txt_7d_etman" runat="server" placeholder="00.0"></asp:TextBox>
      </td>
         <td>
          <asp:Label ID="Label11" runat="server" Text="الرصيد الحالي "></asp:Label>
          <asp:TextBox ID="txt_rased" runat="server" placeholder="00.0"></asp:TextBox>
      </td>
      <td>
          <asp:Label ID="Label12" runat="server" Text="الفرق"></asp:Label>
          <asp:TextBox ID="txt_alfark" runat="server" placeholder="00.0"></asp:TextBox>
      </td>
         <td>
          <asp:Label ID="Label13" runat="server" Text="رصيد الصنف "></asp:Label>
          <asp:TextBox ID="txt_rased_sanf" runat="server" placeholder="00.0"></asp:TextBox>
      </td>
         <td>
          <asp:Label ID="Label14" runat="server" Text="رصيد المستودعات "></asp:Label>
          <asp:TextBox ID="txt_rased_mostawd3" runat="server" placeholder="00.0"></asp:TextBox>
      </td>
      
         <td>
          <asp:Label ID="Label16" runat="server" Text="سعر البيع"></asp:Label>
          <asp:TextBox ID="txt_price" runat="server" placeholder="00.0"></asp:TextBox>
      </td>
    </tr>

  
  </tbody>
</table>
    <!--end the last table-->
    <!--start button-->
    <div class="save">
                    <asp:Button ID="btn_save" runat="server" Text="حفظ"  Class="btn btn-success" />
                     <asp:Button ID="btn_cancel" runat="server" Text="تراجع" class="btn btn-danger"  />
    </div>

    <!--end button-->


</asp:Content>
