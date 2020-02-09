<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="insert_mtd_emp_cntrct.aspx.cs" Inherits="mid.insert_mtd_emp_cntrct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<%--    <div class="content-wrapper">--%>
        <ol class="breadcrumb" style="width: 1050px;">
            <h1><small>البيانات الاساسية < اضافة بيانات اساسية للموظفين</small></h1>
        </ol>

        <div class="row">
            <div class="col-xs-12">
                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title"></h3>
                    </div>
                    <!-- /.box-header -->
                    <div style="margin-right: 35px">



                        <div class="box-body">
                            <table id="example2" class="table table-borderless">
                                <thead>
                                </thead>
                                <tbody>
                                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                                    <tr>
                                        <td><asp:Label ID="Label3" runat="server" style="margin:0 -276px 0 0" Text="رقم الموظف"></asp:Label></td>
                                        <td>
                                            <asp:TextBox ID="TextBox1" runat="server" style="Width: 100px;   margin: 0 -222% 0 0;" ></asp:TextBox></td>
                                      
                                    </tr>
                                    <tr>
                                      <td><asp:Label ID="Label4" runat="server" style="margin:0 -276px 0 0" Text="اسم الموظف"></asp:Label></td>
                                        <%--     <td>
                      <asp:TextBox ID="TextBox2" runat="server" style="margin-bottom:10px"></asp:TextBox>
                      <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                  </td>--%>

                                        <td>
                                            <div style="direction: ltr;">
                                                AR
                
                      <asp:TextBox ID="TextBox2" runat="server" Style="margin-bottom: 10px;   direction: rtl; width: 311px;  margin: 0 -148% 0 0;" required="true"></asp:TextBox>
                                            </div>


                                            <asp:TextBox ID="TextBox3" runat="server" Style="width: 313px;  margin: 10px -147% 0 0;" required="true"></asp:TextBox>
                                            EN
                  
                                        </td>
                                        </tr>
                                    <tr>
                                        <td style="height: 24px"><asp:Label ID="Label5" runat="server" style="margin:0 -276px 0 0" Text="بداية التعاقد"></asp:Label></td>
                                        <td style="height: 24px ">
                                            <asp:TextBox ID="TextBox4" runat="server" style="width:137px; margin:0 -213% 0 0; "  ></asp:TextBox></td>
                                        <td style="height: 24px"><asp:Label ID="Label6" runat="server" style=" width:0px; margin:0 -288% 0 0;"  Text="نهاية التعاقد"></asp:Label></td>
                                        <td style="height: 24px">
                                            <asp:TextBox ID="TextBox5" runat="server" style=" width:100px;margin: 0 -1173% 0 0;"></asp:TextBox></td>
                                        <td style="height: 24px"><asp:Label ID="Label7" runat="server"  style=" width:0px; margin: 0 -2173% 0 0; " Text="تاريخ تجديد التعاقد"></asp:Label></td>
                                        <td>
                                            <asp:TextBox ID="TextBox6" runat="server" style=" width:100px;margin: 0 -925% 0 0;" ></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        
                                        <td><asp:Label ID="Label8" runat="server" style="margin:0 -79% 0 0" Text="حساب الراتب"></asp:Label></td>
                                        <td>
                                            <asp:RadioButtonList ID="RadioButtonList1" runat="server" style="width: 120px; display: flex; margin: 5px -254px;" RepeatDirection="Horizontal" RepeatLayout="Flow">

                                              <asp:ListItem Value="1">يومي</asp:ListItem>
                                                 <asp:ListItem Value="2">شهري</asp:ListItem>

                                            </asp:RadioButtonList>

                                            
                                           </td>
                                        <td> <asp:Label ID="Label9" runat="server" style=" width:0px; margin:0 -288% 0 0;" Text="الحالة الوظفية"></asp:Label> </td>
                                        <td>


                                            <asp:DropDownList ID="DropDownList2" Style="width: 100px;margin: 0 -1173% 0 0; border: 1px solid lightblue;" runat="server">
                                                
                                            </asp:DropDownList></td>
                                      
                                         <td><asp:Label ID="Label10" runat="server"  style=" width:0px; margin:0 -1005px 0 0;" Text="الاداره او القسم"></asp:Label></td>
                                        
                                        <td>
                                            <asp:DropDownList ID="DropDownList3" Style="width: 100px; margin: 0 -919% 0 0; height: 30px; border: 1px solid lightblue;" runat="server"></asp:DropDownList></td>


                                    </tr>
                                    
                                    
                                    <tr>
                                        <td><asp:Label ID="Label11" runat="server" style="margin:0 -276px 0 0" Text="راتب اساسى"></asp:Label></td>
                                        <td>
                                            <asp:TextBox ID="TextBox7" runat="server" style="margin:0 -213% 0 0;  width:131px; " ></asp:TextBox></td>
                                        <td><asp:Label ID="Label12" runat="server" style=" width:0px; margin:0 -288% 0 0;" Text="طريقة دفع الراتب"></asp:Label></td>
                                        <td>
                                            <asp:DropDownList ID="DropDownList4" runat="server" Style="width: 100px; margin: 0 -1173% 0 0; height: 29px;"></asp:DropDownList></td>
                                         <td><asp:Label ID="Label13" runat="server"  style=" width:0px; margin:0 -998px 0 0;" Text="البنك للشركة"></asp:Label></td>
                                        <td>
                                            <asp:DropDownList ID="DropDownList5" runat="server" style="width: 100px; margin: 0 -920% 0 0; height: 29px;" ></asp:DropDownList></td>

                                    </tr>
                                    <tr>

                                        <td><asp:Label ID="Label14" runat="server" style="margin:0 -276px 0 0" Text="بدل انتقال"></asp:Label></td>
                                        <td>
                                            <asp:TextBox ID="TextBox8" runat="server" style="width: 131px; margin:0 -213% 0 0;"></asp:TextBox></td>
                                         <td> <asp:Label ID="Label15" runat="server" style=" width:0px; margin:0 -288% 0 0;" Text="عدد ساعات العمل"></asp:Label></td>
                                         <td>
                                             <asp:TextBox ID="TextBox23" runat="server" style="width: 100px;margin: 0 -1173% 0 0; height: 29px;"></asp:TextBox></td>
                                        <td><asp:Label ID="Label16" runat="server"  style=" width:0px; margin:0 -995px 0 0;" Text="حساب الشركة بالبنك"></asp:Label></td>
                                        <td> <asp:TextBox ID="TextBox24" runat="server" style="width: 100px; margin: 0 -917% 0 0; height: 27px;"></asp:TextBox></td>
                                    </tr>


                                    <tr>
                                        <td><asp:Label ID="Label17" runat="server" style="margin:0 -276px 0 0" Text="بدل السكن"></asp:Label></td>
                                        <td>   <asp:TextBox ID="TextBox9" runat="server" style="width: 131px; margin:0 -213% 0 0;" ></asp:TextBox>    </td>
                                        
                                        <td><asp:Label ID="Label18" runat="server" style=" width:0px; margin:0 -288% 0 0;" Text="تكلفة ساعة العمل"></asp:Label></td>
                                        <td>
                                            <asp:TextBox ID="TextBox25" runat="server" style="width: 100px; margin: 0 -1173% 0 0; height: 29px;"></asp:TextBox></td>

                                        <td><asp:Label ID="Label19" runat="server"  style=" width:0px; margin:0 -996px 0 0;" Text="البنك للموظف"></asp:Label></td>
                                        <td>
                                            <asp:DropDownList ID="DropDownList6" runat="server" style="width: 100px;margin: 0 -921% 0 0; height: 27px;"></asp:DropDownList></td>

                                        
                                   </tr>






                  
                                    <tr>

                                        <td><asp:Label ID="Label20" runat="server" style="margin:0 -276px 0 0" Text="بدل غدا"></asp:Label>ء</td>
                                        <td> <asp:TextBox ID="TextBox10" runat="server" style="width: 131px; margin:0 -213% 0 0;" ></asp:TextBox></td>
                                         <td>
                                             <asp:Label ID="Label21" runat="server" style=" width:0px; margin:0 -288% 0 0;" Text="تذاكر الموظف"></asp:Label></td>
                                         <td>
                                             <asp:TextBox ID="TextBox11" runat="server" style="width: 102%; margin: 0px -1168% 0 0;"></asp:TextBox></td>
                                        <td><asp:Label ID="Label22" runat="server"  style=" width:0px; margin: 0 -2158% 0 0;" Text="حساب الموظف بالبنك"></asp:Label></td>
                                        <td>
                                            <asp:TextBox ID="TextBox12" runat="server" style="width: 100px; margin: 0 -925% 0 0; height: 27px;" ></asp:TextBox></td>

                                       
                                    </tr>




                                    <tr>
                                      
                                        <td><asp:Label ID="Label23" runat="server" style="margin:0 -276px 0 0" Text="بدلات اخرى"></asp:Label></td>
                                        <td>
                                            <asp:TextBox ID="TextBox13" runat="server" style="width: 131px; margin:0 -213% 0 0; height:28px;"></asp:TextBox>
                                           </td>
                                         <td><asp:Label ID="Label24" runat="server" style=" width:0px; margin:0 -291% 0 0; height: 29px;" Text="درجة التذكرة"></asp:Label></td>
                                         <td>
                                             <asp:TextBox ID="TextBox14" runat="server" style="width: 100px; margin: 0 -1169% 0 0; height: 29px;"></asp:TextBox></td>
                                        <td>
                                            <asp:Label ID="Label25" runat="server"  style=" width:0px; margin:0 -997px 0 0;" Text="فرع البنك للموظف"></asp:Label></td>
                                        <td>
                                            <asp:TextBox ID="TextBox15" runat="server" style="width: 100px; margin: 0 -930% 0 0; height: 27px;"></asp:TextBox ></td>


                                    </tr>
                                  



                                    <tr>
                                        <td><asp:Label ID="Label26" runat="server" style="margin:0 -276px 0 0" Text="نوع الدوام"></asp:Label></td>
                                         <td>
                                             <asp:DropDownList ID="DropDownList7" runat="server" style="width: 131px; margin:0-213% 0 0; height:28px;"></asp:DropDownList></td>
                                       
                                        <td>
                                            <asp:Label ID="Label27" runat="server" style=" width:0px; margin:0 -294% 0 0; height: 29px;" Text="تذاكر اولاد الموظف"></asp:Label></td>
                                        <td>
                                            <asp:TextBox ID="TextBox16" runat="server" style="width: 100px; margin: 0 -1169% 0 0; height: 29px;" ></asp:TextBox>
                                            </td>

                                            <td><asp:Label ID="Label28" runat="server"  style=" width:0px; margin:0 -1006px 0 0;" Text="اول المدة مدين"></asp:Label></td>
                                            <td>
                                                <asp:TextBox ID="TextBox17" runat="server" style="width: 100px; margin: 0 -930% 0 0; height: 27px;"  ></asp:TextBox></td>

                                    </tr>




                                    <tr>
                                            <td><asp:Label ID="Label29" runat="server" style="margin:0 -276px 0 0" Text="عدد ساعات الراحة"></asp:Label></td>
                                         <td> <asp:TextBox ID="TextBox18" runat="server" style="width: 131px; margin:0 -213%0 0; height:28px;"></asp:TextBox>   </td>

                                         <td>
                                             <asp:CheckBox ID="CheckBox1" style="margin:0 -341% 0 0" runat="server" /></td>
                                         <td>
                                             <asp:Label ID="Label30" runat="server"  style="margin: 0 -1472% 0 0" Text="موظف المبيعات"></asp:Label></td>
                                        <td>
                                            <asp:Label ID="Label34" runat="server" style="margin: 0 -3266% 0 0; " Text="النسبة %"></asp:Label></td>
                                         <td>
                                             <asp:TextBox ID="TextBox19" runat="server" style="width:30px; margin: 0 -1600% 0 0;"></asp:TextBox></td>

                                         <td> <asp:Label ID="Label2" runat="server" style="margin: 0 -1332px 0 0; height: 27px;" Text="اول مدة دائن"></asp:Label> </td>
                                         <td>
                                             <asp:TextBox ID="TextBox20" runat="server" style="width: 100px; margin: 0 -1103px 0 0;" ></asp:TextBox></td>

                                       
                                    </tr>





                                    <tr><td>
                                        <asp:CheckBox ID="CheckBox2" runat="server" style="margin:0 -34% 0 0;" /></td>

                                        <td><asp:Label ID="Label31" runat="server" style="margin: 0 -204% 0 0;" Text="يحسب له اضافي"></asp:Label></td>

                                        <td> <asp:Label ID="Label32" runat="server" style="margin: 0 -288% 0 0 ;" Text="الرقم بالمبيعات"></asp:Label></td>
                                        <td>
                                            <asp:TextBox ID="TextBox21" style="width: 31px; margin: 0 -1234px 0 0;"  runat="server"></asp:TextBox></td>

                                        <td><asp:Label ID="Label33" style="margin:0 -990px 0 0;"  runat="server" Text="حساب الذمم للموظف"></asp:Label></td>
                                             <td>
                                                 <asp:TextBox ID="TextBox22" style=" width: 100px; margin:0 -931px 0 0; height:25px"  runat="server"></asp:TextBox></td>
                                          
                                    </tr>

                                    <tr>         <td>  

                                        <asp:Button ID="Button1" Style="position: absolute; margin: -3px -51px 0 0; background-color: #dc3545; height: 30px; background-color: #007bff; width: 52px" runat="server" Text="حفظ" OnClick="Button1_Click" />


                                                 </td>
                                        <td>

  <asp:Button ID="Button2" Style="position: absolute; margin: -3px -339px 0 0; height: 30px; background-color: #dc3545; width: 52px" runat="server" Text="تراجع" OnClick="Button2_Click" />

                                        </td>





                                    </tr>

                                    
                            </table>
                        </div>
                        <div>
                            

                           

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


    </div>













</asp:Content>
