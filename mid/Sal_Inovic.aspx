<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Sal_Inovic.aspx.cs" Inherits="mid.Sal_Inovic" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <style>
        th{
            text-align:right;
        }
       
        DropDownList{

            
        }
        .save{
            text-align:center;
        }
    </style>

    
        <div class="panel panel-default col-lg-12">
            <div class="panel-body">
                <h2 class="panel-title" style="font-size: 29px;">فاتورة المبيعات</h2>
            </div>
        </div>

  
  <div class="row">
            <div class="col-md-6">
                <div class="form-group" style="display: flex">
                     <asp:Label ID="Label2" runat="server" Text="الشركات" style="width: 25%" ></asp:Label>
                    <asp:DropDownList ID="ddl_company" runat="server"  style="width: 50%"></asp:DropDownList>

                 
                  
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group" style="display: flex">
                    <asp:Label ID="Label1" runat="server" Text="النشاط" style="width: 25%" ></asp:Label>
                    <asp:DropDownList ID="ddl_activity" runat="server"  style="width: 50%"></asp:DropDownList>

                </div>
            </div>

        </div>

    <!--start الفروع-->
    <div class="row">
    <table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">الفرع</th>
      <th scope="col">المستند</th>
      <th scope="col">فاتورة</th>
      <th scope="col">تاريخ ميلادي</th>
      <th scope="col">تاريخ هجري</th>

    </tr>
  </thead>
  <tbody>
    <tr>
    
      <td>
          <asp:DropDownList ID="ddl_branch" runat="server"></asp:DropDownList>
      </td>
      <td>
          <asp:TextBox ID="txt_doc" runat="server"></asp:TextBox>

      </td>
      <td>
          <asp:TextBox ID="txt_pill" runat="server"></asp:TextBox>
      </td>
         <td>
          <asp:TextBox ID="txt_DateEN" runat="server"></asp:TextBox>
      </td>
         <td>
          <asp:TextBox ID="TXT_DateAR" runat="server"></asp:TextBox>
      </td>
        <td>

        </td>
    </tr>
      <tr>
      <th scope="col">المستودع</th>
      <th scope="col">طريقة الدفع</th>
      <th scope="col">نوع المرجع</th>
      <th scope="col">رقم المرجع</th>
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
          <asp:DropDownList ID="dd_ref_type" runat="server"></asp:DropDownList>
      </td>
         <td>
          <asp:DropDownList ID="ddl_ref_no" runat="server"></asp:DropDownList>
      </td>
         <td>
          <asp:DropDownList ID="ddlcustomer" runat="server"></asp:DropDownList>
      </td>
         <td>
             <asp:TextBox ID="txt_no" runat="server"></asp:TextBox>
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
          <asp:DropDownList ID="ddl_sales" runat="server"></asp:DropDownList>
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
                    <label for="">ملاحظات</label>
                    <input name="Notes" id="Notes" class="form-control Notes">
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label for="">ملاحظات1</label>
                    <input name="Notes1" id="Notes1" class="form-control Notes1">
                </div>
            </div>
        </div>

        <div class="row items_table">
            <div class="col-md-12">
                <table class="table table-bordered table-responsive">
                    <tr class="bg-aqua">
                        <th>م</th>
                        <th>رقم الصنف</th>
                        <th style="width: 13%">إسم الصنف</th>
                        <th style="width: 10%">الوحدة</th>
                        <th>رقم </th>
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
                            <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList2" runat="server"></asp:DropDownList>
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>

                        </td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>

                        </td>
                        <td>
                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>

                        </td>
                        <td>
                            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>

                        </td>
                        <td>
                            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>

                        </td>
                        <td>
                            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>

                        </td>
                        <td>
                            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>

                        </td>
                        <td>
                            <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>

                        </td>
                        <td>
                            <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>

                        </td>
                    </tr>
                    </tbody>
                    <tfoot class="bg-primary" style="cursor: pointer">
                    
                    </tfoot>
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
             <asp:TextBox ID="txt_total" runat="server"></asp:TextBox>

          </td>
           <td>
             <asp:TextBox ID="txt_after_discount" runat="server"></asp:TextBox>

          </td>
           <td>
             <asp:TextBox ID="txt_extra_discount" runat="server"></asp:TextBox>

          </td>
           <td>
             <asp:TextBox ID="txt_types_discount" runat="server"></asp:TextBox>

          </td>
           <td>
             <asp:TextBox ID="txt_tax_value" runat="server"></asp:TextBox>

          </td>
           <td>
             <asp:TextBox ID="txt_net" runat="server"></asp:TextBox>

          </td>
      </tr>
    <tr>
        
      <td>
          <asp:Label ID="Label10" runat="server" Text="حد الإتمان"></asp:Label>
          <asp:TextBox ID="txt_7d_etman" runat="server"></asp:TextBox>
      </td>
         <td>
          <asp:Label ID="Label11" runat="server" Text="الرصيد الحالي "></asp:Label>
          <asp:TextBox ID="txt_rased" runat="server"></asp:TextBox>
      </td>
      <td>
          <asp:Label ID="Label12" runat="server" Text="الفرق"></asp:Label>
          <asp:TextBox ID="txt_alfark" runat="server"></asp:TextBox>
      </td>
         <td>
          <asp:Label ID="Label13" runat="server" Text="رصيد الصنف "></asp:Label>
          <asp:TextBox ID="txt_rased_sanf" runat="server"></asp:TextBox>
      </td>
         <td>
          <asp:Label ID="Label14" runat="server" Text="رصيد المستودعات "></asp:Label>
          <asp:TextBox ID="txt_rased_mostawd3" runat="server"></asp:TextBox>
      </td>
      
         <td>
          <asp:Label ID="Label16" runat="server" Text="سعر البيع"></asp:Label>
          <asp:TextBox ID="txt_price" runat="server"></asp:TextBox>
      </td>
    </tr>

  
  </tbody>
</table>
    <!--end the last table-->
    <!--start button-->
    <div class="save">

                    <button type="button" class="btn btn-success">حفظ</button>
                    <button type="button" class="btn btn-danger">تراجع</button>
    </div>

    <!--end button-->



</asp:Content>
