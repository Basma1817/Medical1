<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="insert_mts_lc.aspx.cs" Inherits="mid.insert_mts_lc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   
      <div class="content-wrapper">
        <ol class="breadcrumb" style="width:1050px;"> 
        <h1 >  <small>البيانات الاساسية < اضافة بيانات اساسية للإعتمادات</small></h1>
        </ol>
    
      <div class="row">
        <div class="col-xs-12">
          <div class="box" style="height:875px;">
            <div class="box-header">
              <h3 class="box-title"></h3>
            </div>
            <!-- /.box-header -->
              <div style="margin-right:35px">



            <div class="box-body">
              <table id="example2" class="table table-borderless" >
                <thead>
              
                </thead>
                <tbody>
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                      <tr>

                  <td>الرقم</td>
                  <td>
                      <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                  <td>الفرع</td>
                  <td>
                      <asp:DropDownList ID="DropDownList3" style=" width:333px; border: 1px solid lightblue;" runat="server"></asp:DropDownList></td>
                  
              </tr>
                      <tr>
<td>التاريخ</td>
                  <td>
                      <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
                 <%-- <td>ت هجرى</td>
                  <td>
                      <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>--%>
                  <td>طريقة الدفع</td>
                  <td>

                      <asp:DropDownList ID="DropDownList7" runat="server"></asp:DropDownList>
                 
              </tr>
                            <tr>
                 <td>اسم البنك</td>
                  <td>
                      <asp:DropDownList ID="DropDownList4" runat="server"></asp:DropDownList>
              </tr>
                        <tr>
                  <td>حساب البنك</td>
                  <td>
                      <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox></td>
                 
                         </tr>
                    <tr>   
                             <td>حساب الاعتماد</td>
                  <td>
                      <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox></td>
                  
                  <td>المورد</td>
                  <td>
                      <asp:DropDownList ID="DropDownList5" runat="server"></asp:DropDownList></td>
                 </tr>
                    <tr>
                        
                         <td>الدوله</td>
                  <td>
                      <asp:DropDownList ID="DropDownList6" runat="server"></asp:DropDownList></td>
                  <td>فاتوره مبدئيه</td>
                  <td>
                      <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox></td>
              </tr>
                    <tr>
                        <td>قيمة الاعتماد</td>
                        </tr>
                    <tr>
                        <td>
                             العمله         
                        </td>
                        <td><asp:DropDownList ID="DropDownList1" style=" width:333px; border: 1px solid lightblue;" runat="server"></asp:DropDownList></td>
                        <td>
                            القيمه
                        </td>
                        <td><asp:TextBox ID="TextBox13" runat="server"></asp:TextBox></td>
                        
                        </tr>
                    <tr>
                        <td>
                            سعر الصرف
                        </td>
                        <td><asp:TextBox ID="TextBox14" runat="server"></asp:TextBox></td>
                        <td>
                            العمله المحليه
                        </td>
                        <td><asp:TextBox ID="TextBox15" runat="server"></asp:TextBox></td>
                       
                        
                    </tr>
                    <tr>
                         <td>
                            فتح الاعتماد
                        </td>
                        <td><asp:TextBox ID="TextBox16" runat="server"></asp:TextBox></td>
                        <td>
                            اغلاق الاعتماد
                        </td>
                        <td><asp:TextBox ID="TextBox17" runat="server"></asp:TextBox></td>
                        </tr>
                    <tr>
                        <td>مصاريف بنكيه</td>
                        </tr>
                    <tr>
                       <td>
                           العمله
                       </td>
                     <td><asp:DropDownList ID="DropDownList2" runat="server"></asp:DropDownList></td>
                    <td>
                        القيمه
                    </td>
                        <td><asp:TextBox ID="TextBox18" runat="server"></asp:TextBox></td>
                       
                      
                    </tr>
                      <tr>
                      <td>
                            سعر الصرف
                        </td>
                        <td><asp:TextBox ID="TextBox19" runat="server"></asp:TextBox></td>
                        <td>
                            العمله المحليه
                        </td>
                         <td><asp:TextBox ID="TextBox20" runat="server"></asp:TextBox></td>

                       </tr>
                    <tr>
                        
                    <td>طريقة الشحن</td>
                  <td>
                      <asp:TextBox ID="TextBox21" runat="server"></asp:TextBox></td>
                  
                  <td>اعدت بواسطة</td>
                  <td>
                      <asp:TextBox ID="TextBox22" runat="server"></asp:TextBox></td>
                   </tr>
                    <tr>

                  <td>مكان التسليم</td>
                  <td>
                      <asp:TextBox ID="TextBox23" runat="server"></asp:TextBox></td>
                      
             
                  <td>عدد الاصناف</td>
                  <td>
                      <asp:TextBox ID="TextBox24" runat="server"></asp:TextBox></td>
                         </tr>
                      <tr>
                  <td>المستلم</td>
                  <td>
                      <asp:TextBox ID="TextBox25" runat="server"></asp:TextBox></td>
                 
              </tr>
                </tfoot>
              </table>
            </div>
                        <div>
                       <asp:Button ID="Button1" Style="position: absolute; margin: 50px -80.5%; background-color: #dc3545; height: 38px; background-color: #007bff; width: 68px" runat="server" Text="حفظ" OnClick="Button1_Click" />

                            <asp:Button ID="Button2" Style="position: absolute; margin: 50px -73.5%; height: 38px; background-color: #dc3545; width: 68px" runat="server" Text="تراجع" OnClick="Button2_Click" />

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
