<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="mts_lc_show.aspx.cs" Inherits="mid.mts_lc_show" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <div class="content-wrapper">
        
           <ol class="breadcrumb" style="width:1050px;"> 
        <h1 >  <small>لوحة التحكم < عرض بيانات اساسية للإعتمادات</small></h1>
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
                      <asp:TextBox ID="TextBox1" Enabled="false" runat="server"></asp:TextBox></td>
                  <td>الفرع</td>
                  <td>
                      <asp:DropDownList ID="DropDownList3" Enabled="false" style=" width:333px; border: 1px solid lightblue;" runat="server"></asp:DropDownList></td>
                  
              </tr>
                      <tr>
<td>التاريخ</td>
                  <td>
                      <asp:TextBox ID="TextBox3" ReadOnly="true" runat="server"></asp:TextBox></td>
                 <%-- <td>ت هجرى</td>
                  <td>
                      <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>--%>
                  <td>طريقة الدفع</td>
                  <td>

                      <asp:DropDownList ID="DropDownList7" Enabled="false" runat="server"></asp:DropDownList>
                 
              </tr>
                            <tr>
                 <td>اسم البنك</td>
                  <td>
                      <asp:DropDownList ID="DropDownList4" Enabled="false" runat="server"></asp:DropDownList>
              </tr>
                        <tr>
                  <td>حساب البنك</td>
                  <td>
                      <asp:TextBox ID="TextBox7" ReadOnly="true" runat="server"></asp:TextBox></td>
                 
                         </tr>
                    <tr>   
                             <td>حساب الاعتماد</td>
                  <td>
                      <asp:TextBox ID="TextBox8" ReadOnly="true" runat="server"></asp:TextBox></td>
                  
                  <td>المورد</td>
                  <td>
                      <asp:DropDownList ID="DropDownList5" Enabled="false" runat="server"></asp:DropDownList></td>
                 </tr>
                    <tr>
                        
                         <td>الدوله</td>
                  <td>
                      <asp:DropDownList ID="DropDownList6" Enabled="false" runat="server"></asp:DropDownList></td>
                  <td>فاتوره مبدئيه</td>
                  <td>
                      <asp:TextBox ID="TextBox12" ReadOnly="true" runat="server"></asp:TextBox></td>
              </tr>
                    <tr>
                        <td>قيمة الاعتماد</td>
                        </tr>
                    <tr>
                        <td>
                             العمله         
                        </td>
                        <td><asp:DropDownList ID="DropDownList1" Enabled="false" style=" width:333px; border: 1px solid lightblue;" runat="server"></asp:DropDownList></td>
                        <td>
                            القيمه
                        </td>
                        <td><asp:TextBox ID="TextBox13" ReadOnly="true" runat="server"></asp:TextBox></td>
                        
                        </tr>
                    <tr>
                        <td>
                            سعر الصرف
                        </td>
                        <td><asp:TextBox ID="TextBox14" ReadOnly="true" runat="server"></asp:TextBox></td>
                        <td>
                            العمله المحليه
                        </td>
                        <td><asp:TextBox ID="TextBox15" ReadOnly="true" runat="server"></asp:TextBox></td>
                       
                        
                    </tr>
                    <tr>
                         <td>
                            فتح الاعتماد
                        </td>
                        <td><asp:TextBox ID="TextBox16" ReadOnly="true" runat="server"></asp:TextBox></td>
                        <td>
                            اغلاق الاعتماد
                        </td>
                        <td><asp:TextBox ID="TextBox17" ReadOnly="true" runat="server"></asp:TextBox></td>
                        </tr>
                    <tr>
                        <td>مصاريف بنكيه</td>
                        </tr>
                    <tr>
                       <td>
                           العمله
                       </td>
                     <td><asp:DropDownList ID="DropDownList2" Enabled="false" runat="server"></asp:DropDownList></td>
                    <td>
                        القيمه
                    </td>
                        <td><asp:TextBox ID="TextBox18" ReadOnly="true" runat="server"></asp:TextBox></td>
                       
                      
                    </tr>
                      <tr>
                      <td>
                            سعر الصرف
                        </td>
                        <td><asp:TextBox ID="TextBox19" ReadOnly="true" runat="server"></asp:TextBox></td>
                        <td>
                            العمله المحليه
                        </td>
                         <td><asp:TextBox ID="TextBox20" ReadOnly="true" runat="server"></asp:TextBox></td>

                       </tr>
                    <tr>
                        
                    <td>طريقة الشحن</td>
                  <td>
                      <asp:TextBox ID="TextBox21" ReadOnly="true" runat="server"></asp:TextBox></td>
                  
                  <td>اعدت بواسطة</td>
                  <td>
                      <asp:TextBox ID="TextBox22" ReadOnly="true" runat="server"></asp:TextBox></td>
                   </tr>
                    <tr>

                  <td>مكان التسليم</td>
                  <td>
                      <asp:TextBox ID="TextBox23" ReadOnly="true" runat="server"></asp:TextBox></td>
                      
             
                  <td>عدد الاصناف</td>
                  <td>
                      <asp:TextBox ID="TextBox24" ReadOnly="true" runat="server"></asp:TextBox></td>
                         </tr>
                      <tr>
                  <td>المستلم</td>
                  <td>
                      <asp:TextBox ID="TextBox25" ReadOnly="true" runat="server"></asp:TextBox></td>
                 
              </tr>
       
            
              </table>
            </div>
                        <div>
                       
                            <asp:Button ID="Button3" Style="width: 100px; position: absolute; margin: 82px -640px; border: none;" runat="server" Text="تراجع" OnClick="Button3_Click" />   
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
