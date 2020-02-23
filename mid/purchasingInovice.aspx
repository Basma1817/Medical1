<%--Islam 7-10-2019--%>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="purchasingInovice.aspx.cs" Inherits="mid.purchasingInovice" EnableEventValidation="false" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <!DOCTYPE html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="BlendTrans(Duration=0.00)" http-equiv="Page-Exit" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
        <link href="Content/StyleSheet.css" type="text/css" rel="stylesheet" />
        <link href="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.9/themes/blitzer/jquery-ui.css"
            rel="stylesheet" type="text/css" />
        <style>
            input[type=number]::-webkit-inner-spin-button, input[type=month]::-webkit-inner-spin-button {
                -webkit-appearance: none;
                display: none;
            }
        </style>

    </head>
    <tbody>

       <div class="panel panel-default col-lg-12">
         <div class="panel-body">
            <h2 class="panel-title" style="font-size: 29px;"> اضافة فواتير الشراء</h2>
        </div>
        </div>
            <div>
                <table class="table" id="data">
                    <tr>
                        <td>الفرع</td>
                        <td>
                            <asp:DropDownList ID="drpBranch" runat="server" AutoPostBack="true" OnPreRender="drpBranch_PreRender" Style="width: 124px;">
                            </asp:DropDownList></td>

                        <td>سند الادخال</td>
                        <td>
                            <asp:TextBox ID="txtSanad" runat="server" Enabled="false" TextMode="Number" required="true"></asp:TextBox>

                        </td>

                        <td>تاريخ السند</td>
                        <td>
                            <asp:TextBox ID="dateSanad" runat="server"></asp:TextBox>

                        </td>

                        <td>تاريخ السند هجري</td>
                        <td>
                            <asp:TextBox ID="dateSanadH" runat="server"></asp:TextBox></td>

                        <td>الدفع</td>
                        <td>
                            <asp:DropDownList ID="drpPayment" runat="server" Style="width: 124px"></asp:DropDownList></td>
                    </tr>

                    <tr>
                        <td>العملة</td>
                        <td>
                            <asp:DropDownList ID="drpCurrency" runat="server" Style="width: 124px"></asp:DropDownList></td>
                        <td>معدل الصرف</td>
                        <td>
                            <asp:TextBox ID="txtRate" runat="server"></asp:TextBox></td>
                        <td>المورد</td>
                        <td>
                            <asp:DropDownList ID="drpSuppliers" runat="server" Style="width: 124px"></asp:DropDownList></td>
                    </tr>

                    <tr>

                        <td>المستلم للبضاعة</td>
                        <td>
                            <asp:DropDownList ID="drpReceiver" runat="server" Style="width: 124px"></asp:DropDownList></td>

                        <td>مرجع المورد</td>
                        <td>
                            <asp:TextBox ID="txtResoures" runat="server"></asp:TextBox></td>

                        <td>فاتورة المورد</td>
                        <td>
                            <asp:TextBox ID="txtBill" runat="server"></asp:TextBox></td>

                        <td>تاريخ الاستلام</td>
                        <td>
                            <asp:TextBox ID="dateRecieving" runat="server"></asp:TextBox></td>

                        <td>تاريخ الاستحقاق</td>
                        <td>
                            <asp:TextBox ID="dateDue" runat="server"></asp:TextBox></td>
                    </tr>

                    <tr>
                        <td>مدة السداد</td>
                        <td>
                            <asp:TextBox ID="txtPeriod" runat="server"></asp:TextBox></td>
                        <td>ملاحظات</td>
                        <td>
                            <asp:TextBox ID="txtNotice" runat="server"></asp:TextBox></td>

                        <td>نوع المرجع</td>
                        <td>
                            <asp:DropDownList ID="drpReferenceType" runat="server" Style="width: 124px"></asp:DropDownList></td>

                        <td>رقم المرجع</td>
                        <td>
                            <asp:DropDownList ID="drpReferenceNumber" runat="server" Style="width: 124px"></asp:DropDownList></td>

                    </tr>
                </table>
            </div>
       


        <div style="top: 0; bottom: 0; left: 0; right: 0; margin: auto 12px; overflow: scroll; width: 1100px; height: 220px">

            <asp:GridView ID="grdPurchasing" runat="server" AutoGenerateColumns="False" CellSpacing="1" CellPadding="2" CssClass="Table table-bordered table-striped  table-hover" AllowPaging="True" AllowSorting="True"
                ShowHeaderWhenEmpty="true"
                OnRowDataBound="grdPurchasing_RowDataBound"
                ShowFooter="true"
                HeaderStyle-HorizontalAlign="Center"
                HeaderStyle-VerticalAlign="Middle"
                RowStyle-HorizontalAlign="Center"
                RowStyle-VerticalAlign="Middle">

                <Columns>
                    <%--       <asp:TemplateField HeaderText="م" >
                            <ItemTemplate >
                                <%# Container.DataItemIndex + 1 %>
                            </ItemTemplate>
                        </asp:TemplateField>--%>

                    <asp:BoundField DataField="RowNumber" HeaderText="م" />

                    <asp:TemplateField HeaderText="رقم الصنف">
                        <ItemTemplate>

                            <asp:TextBox ID="txtGrdItemNo" runat="server" Width="60px" AutoPostBack="true" OnTextChanged="drpGrdItemNo_TextChanged" TextMode="Number"></asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>


                    <asp:TemplateField HeaderText="اسم الصنف">
                        <ItemTemplate>
                            <asp:DropDownList ID="drpItem" runat="server" AutoPostBack="true" Width="140px" OnSelectedIndexChanged="drpItem_SelectedIndexChanged">
                            </asp:DropDownList>

                        </ItemTemplate>
                    </asp:TemplateField>


                    <asp:TemplateField HeaderText="الوحدة">
                        <ItemTemplate>
                            <asp:DropDownList ID="drpUnit" runat="server" AutoPostBack="false" Width="40px">
                            </asp:DropDownList>
                        </ItemTemplate>
                    </asp:TemplateField>


                    <asp:TemplateField HeaderText="رقم الموقع">
                        <ItemTemplate>
                            <asp:TextBox ID="txtSitNo" runat="server" Width="40px" TextMode="Number">

                            </asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="الكمية">
                        <ItemTemplate>
                            <asp:TextBox ID="txtQuantity" runat="server" Width="40px" TextMode="Number" OnPreRender="txtQuantity_OnPreRender">

                            </asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="سعر شراء الوحدة">
                        <ItemTemplate>
                            <asp:TextBox ID="txtUnitPrice" runat="server" Width="40px" TextMode="Number" step="any">

                            </asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="القيمة الإجمالية">
                        <ItemTemplate>
                            <asp:TextBox ID="txtTotalPrice" class="calculate" runat="server" Width="55px" TextMode="Number" step="any">

                            </asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="تاريخ الصلاحية">
                        <ItemTemplate>
                            <asp:TextBox runat="server" ID="txtVaildDate" Width="45px" placeholder="شهر/سنة">
                            </asp:TextBox>
                            <asp:RegularExpressionValidator runat="server" ControlToValidate="txtVaildDate" ValidationExpression="(0[1-9]|1[012])[/]\d{4}" SetFocusOnError="true">
                            </asp:RegularExpressionValidator>

                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="رقم التشغيلة">
                        <ItemTemplate>
                            <asp:TextBox ID="txtBatch_No" runat="server" Width="40px" TextMode="Number">

                            </asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>



                    <asp:TemplateField HeaderText=" خصم 1 شراء %">
                        <ItemTemplate>
                            <asp:TextBox ID="txtDiscountPur1" runat="server" Width="40px" TextMode="Number" OnPreRender="txtDiscountPur1_OnPreRender" step="any" onblur='if(this.value==""){this.value=0;}'>

                            </asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>


                    <asp:TemplateField HeaderText="قيمة الخصم">
                        <ItemTemplate>
                            <asp:TextBox ID="txtDiscountQuantity" runat="server" Width="40px" TextMode="Number" step="any" value="0" onblur='if(this.value==""){this.value=0;}'>

                            </asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="خصم 2 شراء %">
                        <ItemTemplate>
                            <asp:TextBox ID="txtDiscountPur2" runat="server" Width="40px" TextMode="Number" step="any" value="0" onblur='if(this.value==""){this.value=0;}'>

                            </asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="بونص % شراء">
                        <ItemTemplate>
                            <asp:TextBox ID="txtBonusPur" runat="server" Width="40px" TextMode="Number" OnTextChanged="txtBonusPur_OnTextChanged" step="any">

                            </asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>


                    <asp:TemplateField HeaderText="بونص كمية">
                        <ItemTemplate>
                            <asp:TextBox ID="txtBonusQuantity" runat="server" Width="40px" TextMode="Number" OnTextChanged="txtBonusQuantity_OnTextChanged" step="any">

                            </asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="سعر البيع">
                        <ItemTemplate>
                            <asp:TextBox ID="txtSalePrice" runat="server" Width="40px" TextMode="Number" step="any">

                            </asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="قيمة البيع">
                        <ItemTemplate>
                            <asp:TextBox ID="txtSaleQuantity" runat="server" Width="40px" TextMode="Number" step="any">

                            </asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>


                    <asp:TemplateField HeaderText="تكلفة الوحدة">
                        <ItemTemplate>
                            <asp:TextBox ID="txtUnitCost" runat="server" Width="40px" TextMode="Number" step="any">

                            </asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>


                    <asp:TemplateField HeaderText="تكلفة الصنف">
                        <ItemTemplate>
                            <asp:TextBox ID="txtItemPrice" runat="server" Width="40px" TextMode="Number" OnPreRender="txtItemPrice_OnPreRender" step="any" class="calculateTxtItemPrice">

                            </asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="الضريبة %">
                        <ItemTemplate>
                            <asp:TextBox ID="txtTax" runat="server" Width="25px" TextMode="Number" step="any" value="0" onblur='if(this.value==""){this.value=0;}'>

                            </asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="قيمة الضريبة">
                        <ItemTemplate>
                            <asp:TextBox ID="txtTaxQuantity" runat="server" Width="40px" TextMode="Number" step="any" class="calculatetxtTaxQuantity" onblur='if(this.value==""){this.value=0;}' value="0">

                            </asp:TextBox>
                        </ItemTemplate>
                        <FooterStyle HorizontalAlign="Center" />
                        <FooterTemplate>

                            <asp:ImageButton ID="ButtonAdd" runat="server"
                                Text="أضف صنف جديد"
                                OnClick="ButtonAdd_Click"
                                CausesValidation="False" Height="30px" Width="30px" ImageUrl="~/wp-content/image/add-logo.png" ToolTip="أضف صف جديد" AlternateText="أضف صف جديد" />


                        </FooterTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="حذف">
                        <ItemTemplate>
                            <asp:ImageButton ID="LinkDelete" runat="server"
                                OnClick="LinkDelete_Click" ImageUrl="~/wp-content/image/DeleteDustbin-512.png" Width="20px" Height="20px" ToolTip="حذف" AlternateText="حذف" CausesValidation="false" UseSubmitBehavior="false"></asp:ImageButton>

                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
        </>
        <div style="margin: 10px">
            <table class="table " style="width: 400px; height: 50px;">
                <tr>
                    <td>الاجمالي</td>
                    <td>

                        <asp:TextBox ID="txtTotalPriceFooter" runat="server" OnPreRender="txtTotalPriceFooter_PreRender"></asp:TextBox></td>

                    <td>بعد الخصم</td>
                    <td>
                        <asp:TextBox ID="txtAfterDiscountFooter" runat="server" OnPreRender="txtAfterDiscountFooter_PreRender"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>خصم اصناف</td>
                    <td>
                        <asp:TextBox ID="txtDiscountItemsFooter" runat="server" OnPreRender="txtDiscountItemsFooter_PreRender"></asp:TextBox>
                        <asp:TextBox ID="txtDiscountItems2Footer" runat="server"></asp:TextBox>
                    </td>
                    <td>الضرائب</td>
                    <td>
                        <asp:TextBox ID="txtTaxFooter" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>خصم اضافي</td>
                    <td>
                        <asp:TextBox ID="txtAdditionalDiscountFooter" runat="server" value="0" onblur='if(this.value==""){this.value=0;}'></asp:TextBox>
                        <asp:TextBox ID="txtAdditionalDiscount2Footer" runat="server"></asp:TextBox>
                    </td>
                    <td>الصافي</td>
                    <td>
                        <asp:TextBox ID="txtNetFooter" runat="server" OnPreRender="txtNetFooter_PreRender"></asp:TextBox></td>
                    <td>قيمة البونص</td>
                    <td>
                        <asp:TextBox ID="txtBonusQuantityFooter" runat="server" ReadOnly="true"></asp:TextBox></td>
                    <td>بضاعة بسعر</td>
                    <td>
                        <asp:TextBox ID="txtGoodsPriceFooter" runat="server" ReadOnly="true"></asp:TextBox></td>
                </tr>
            </table>
            <div class="modal-footer">
                <table class="table" style="width: 250px; padding: 0; margin: auto">
                    <tr>
                        <td>
                            <asp:Button ID="btnSave" runat="server" Text="حفظ" OnClick="btnSave_Click" CssClass="btn btn-primary" Style="border: 1px solid transparent; padding: 0.375rem 0.75rem;"
                                CausesValidation="true" OnClientClick="if (!deleteConfirmation()) return false;" UseSubmitBehavior="false" />

                        </td>
                        <td>
                            <asp:Button ID="btnCancel" runat="server" Text="الغاء" CssClass="btn btn-primary" Style="background-color: firebrick; border: 1px solid transparent; padding: 0.375rem 0.75rem;"
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

    </tbody>

    <script type="text/javascript">
        var control = document.getElementById("txtSanad");
        control.disabled = true;
        function deleteConfirmation() {
            return confirm("هل تريد حفظ الفاتورة؟");
        }

        var grid = document.getElementById('<%=grdPurchasing.ClientID %>');
           var rowscount =  <%=grdPurchasing.Rows.Count %>;


        function calBal() {
            var rowlenght = 1000;
            // calculate Total price              
            for (var i = 0; i < rowlenght; i++) {
                var txtTotAmt = document.getElementById('MainContent_grdPurchasing_txtTotalPrice_' + [i]);
                var txtAmtPaid = document.getElementById('MainContent_grdPurchasing_txtUnitPrice_' + [i]);
                var txtBal = document.getElementById('MainContent_grdPurchasing_txtQuantity_' + [i]);
                var txtItemPrice = document.getElementById('MainContent_grdPurchasing_txtItemPrice_' + [i]);
                var txtDiscountQuantity = document.getElementById('MainContent_grdPurchasing_txtDiscountQuantity_' + [i]);
                var txtDiscountPur2 = document.getElementById('MainContent_grdPurchasing_txtDiscountPur2_' + [i]);

                var txtBonusPur = document.getElementById('MainContent_grdPurchasing_txtBonusPur_' + [i]);
                var txtBonusQuantity = document.getElementById('MainContent_grdPurchasing_txtBonusQuantity_' + [i]);
                var txtUnitCost = document.getElementById('MainContent_grdPurchasing_txtUnitCost_' + [i]);

                //txtBonusQuantity.value = (parseFloat(txtBal.value) * parseFloat(txtBonusPur.value) / 100);

                //txtUnitCost.value = (parseFloat(txtItemPrice.value)) / (parseFloat(txtBal.value) + parseFloat(txtBonusQuantity.value)).toFixed(2);

                txtTotAmt.value = (parseFloat(txtAmtPaid.value) * parseFloat(txtBal.value)).toFixed(2);

                  
                var temp = (parseFloat(txtTotAmt.value) - parseFloat(txtDiscountQuantity.value)) * (parseFloat(txtDiscountPur2.value) / 100);
                txtItemPrice.value = (parseFloat(txtTotAmt.value) - parseFloat(txtDiscountQuantity.value) - temp).toFixed(2);
                   

                //  Calculate txtTotalPriceFooter
                var txtTotal = 0.00;
                $(".calculate").each(function (index, value) {
                    var val = value.value;
                    val = val.replace(",", ".");
                    txtTotal = MathRound(parseFloat(txtTotal) + parseFloat(val));
                });

                document.getElementById("<%=txtTotalPriceFooter.ClientID %>").value = txtTotal.toFixed(2); 


                   var txtTotal2 = 0.00;
                   $(".calculateTxtItemPrice").each(function (index, value) {
                       var val = value.value;
                       val = val.replace(",", ".");
                       txtTotal2 = MathRound(parseFloat(txtTotal2) + parseFloat(val));
                   });
                   document.getElementById("<%=txtAfterDiscountFooter.ClientID %>").value = txtTotal2.toFixed(2);
               }
           }
           function calBal2() {
               var rowlenght = 1000;
               for (var i = 0; i < rowlenght; i++) {
                   var txtDiscountPur1 = document.getElementById('MainContent_grdPurchasing_txtDiscountPur1_' + [i]);
                   var txtTotalPrice = document.getElementById('MainContent_grdPurchasing_txtTotalPrice_' + [i]);
                   var txtDiscountQuantity = document.getElementById('MainContent_grdPurchasing_txtDiscountQuantity_' + [i]);
                   txtDiscountQuantity.value = ((parseFloat(txtDiscountPur1.value) / 100) * (parseFloat(txtTotalPrice.value))).toFixed(2);

                 

               }
           }

           function calBal3() {
                        
               var rowlenght = 1000;
               for (var i = 0; i < rowlenght; i++) {
                   var txtItemPrice = document.getElementById('MainContent_grdPurchasing_txtItemPrice_' + [i]);
                   var txtTaxQuantity = document.getElementById('MainContent_grdPurchasing_txtTaxQuantity_' + [i]);
                   var txtTax = document.getElementById('MainContent_grdPurchasing_txtTax_' + [i]);
                   txtTaxQuantity.value = (parseFloat(txtTax.value) * parseFloat(txtItemPrice.value) / 100).toFixed(2);

                   var txtTotal = 0.00;
                   $(".calculatetxtTaxQuantity").each(function (index, value) {
                       var val = value.value;
                       val = val.replace(",", ".");
                       txtTotal = MathRound(parseFloat(txtTotal) + parseFloat(val));
                   });
                   document.getElementById("<%=txtTaxFooter.ClientID %>").value = txtTotal.toFixed(2);
               }
           }



           function calBal4() {

               var rowlenght = 1000;
               var total = 0;
               for (var i = 0; i < rowlenght; i++) {
                   var txtDiscountPur1 = document.getElementById('MainContent_grdPurchasing_txtDiscountPur1_' + [i]);
                   var txtDiscountPur2 = document.getElementById('MainContent_grdPurchasing_txtDiscountPur2_' + [i]);
                   var txtTotalPrice = document.getElementById('MainContent_grdPurchasing_txtTotalPrice_' + [i]);
                   var temp = (parseFloat(txtDiscountPur1.value) * parseFloat(txtTotalPrice.value) / 100);
                   var temp2 = parseFloat(txtTotalPrice.value) - temp;
                   var temp3 = parseFloat(txtDiscountPur2.value) * temp2 /100;
                   var temp4 = temp + temp3;
                   total = total + temp4;

                   document.getElementById("<%=txtDiscountItemsFooter.ClientID %>").value = total.toFixed(2);
                  
               } 
           }


           function calBal5() {
               var txtAfterDiscountFooter = document.getElementById('MainContent_txtAfterDiscountFooter');
               var txtTaxFooter = document.getElementById('MainContent_txtTaxFooter');
               var txtAdditionalDiscountFooter = document.getElementById('MainContent_txtAdditionalDiscountFooter');
               var txtNetFooter = document.getElementById('MainContent_txtNetFooter');

               txtNetFooter.value = (parseFloat(txtAfterDiscountFooter.value) + parseFloat(txtTaxFooter.value) - parseFloat(txtAdditionalDiscountFooter.value)).toFixed(2);




           }
           function MathRound(number) {
               return Math.round(number * 100) / 100;
           }

           function calBal6() {
               var rowlenght = 1000;
               for (var i = 0; i < rowlenght; i++) {
                   var txtBal = document.getElementById('MainContent_grdPurchasing_txtQuantity_' + [i]);
                   var txtItemPrice = document.getElementById('MainContent_grdPurchasing_txtItemPrice_' + [i]);
                   var txtDiscountQuantity = document.getElementById('MainContent_grdPurchasing_txtDiscountQuantity_' + [i]);
                   var txtDiscountPur2 = document.getElementById('MainContent_grdPurchasing_txtDiscountPur2_' + [i]);
                   var txtBonusPur = document.getElementById('MainContent_grdPurchasing_txtBonusPur_' + [i]);
                   var txtBonusQuantity = document.getElementById('MainContent_grdPurchasing_txtBonusQuantity_' + [i]);
                   var txtUnitCost = document.getElementById('MainContent_grdPurchasing_txtUnitCost_' + [i]);

                   txtBonusQuantity.value = (parseFloat(txtBal.value) * parseFloat(txtBonusPur.value) / 100);
               }



           }
           
    </script>

</asp:Content>
