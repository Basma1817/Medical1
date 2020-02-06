<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="mts_custmr.aspx.cs" Inherits="mid.mts_custmr" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   
     <style>
        .nav-pills>li.active>a, .nav-pills>li.active>a:hover, .nav-pills>li.active>a:focus{
             /*font-size: 18px;
            background: #649bff;
            color: #fff;
            border: none;
            transition: all .3s ease-in-out;
            border-top: 2px solid transparent;*/
        }

        .nav-pills>li.active>a{
             background: #0289d8 !important;
             border: none !important;
            transition: all .3s ease-in-out;
        }

        .nav-pills>li.active>a:hover{
            transition: all .2s ease-in-out;
        }

        .nav-pills>li>a{
             font-size: 18px;
            background: #105e8c;
            letter-spacing: 1px;
            color: #fff;
            border: none !important;
        
            transition: all .3s ease-in-out;
        }

        .nav-pills>li>a:hover{
            background: #0289d8;
            color: #fff;
             transition: all .3s ease-in-out;
          
        }

       

        /*.nav-pills>li>a{
             font-size: 18px;*/
    </style>

     <div class="panel panel-default col-lg-12">
        <div class="panel-body">
            <h2 class="panel-title" style="font-size: 29px;">لوحة التحكم < البيانات الاساسية للعملاء </h2>
        </div>
    </div>

    <div class="row">

        <div class="col-lg-5" style="display: flex; justify-content: flex-end">
            <asp:Button ID="Button2" runat="server" type="submit" Text="إضافة" OnClick="Button2_Click" class="btn btn-success" />
            <asp:Button ID="Button1" runat="server" Text="تعديل" OnClick="Button1_Click" class="btn btn-primary" />
            <asp:Button ID="Button4" runat="server" type="submit" Text="حذف" OnClick="Button4_Click" class="btn btn-success" />

            <%-- <asp:HyperLink ID="HyperLink1" runat="server" class="btn btn-primary" data-target="#loginModal" data-toggle="modal" href="#" style="background-color: darkred;">حذف</asp:HyperLink>--%>

            <asp:Button ID="Button3" runat="server" Text="تقرير" OnClick="Button3_Click" class="btn btn-dark" />

        </div>
        <div class="col-lg-1">
            <div class="form-group">
                <asp:Label ID="Label12" runat="server" Text="رقم الشركة"></asp:Label>
                <asp:TextBox ID="TextBox26" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
                
    
        <div class="col-lg-3">
            <div class="form-group">
                <asp:Label ID="Label1" runat="server" Text="أسم الشركة"></asp:Label>
                <asp:DropDownList ID="DropDownList4" runat="server" CssClass="form-control"
                AutoPostBack="true"  OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged" >
                </asp:DropDownList>
            </div>
        </div>
        <div class="col-lg-1">
            <div class="form-group">
                <asp:Label ID="Label17" runat="server" Text="رقم النشاط"></asp:Label>
                <asp:TextBox ID="TextBox22" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <div  class="col-md-2">
            <div class="form-group">
                <asp:Label ID="Label2" runat="server" Text="النشاط"></asp:Label>
                <asp:DropDownList ID="DropDownList5" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="DropDownList5_SelectedIndexChanged">
                </asp:DropDownList>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-lg-9" style="display:flex; justify-content:right">
            <ul class="nav nav-pills" role="tablist">
                <li class="nav-item">
                <a class="nav-link" data-toggle="pill" href="#purshase">حركة البيانات</a>
                </li>
                <li class="nav-item">
                <a class="nav-link" data-toggle="pill" href="#details">الاشخاص المسئولين</a>
                </li>
                <li class="nav-item">
                <a class="nav-link active" data-toggle="pill" href="#basicinfo">البيانات الاساسية</a>
                </li>
            </ul>
        </div>
    </div>

    <div class="tab-content">
        <div id="basicinfo" class="tab-pane active">

           
           <div class="row">
                <div class="col-lg-8">
                <div class="panel panel-default" style="margin-top: 10px ">

                     <div class="panel-body" >

                           <div class="col-md-7">
                                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                                    <asp:ListItem Value="0">رئيسي</asp:ListItem>
                                    <asp:ListItem Value="1">فرعي</asp:ListItem>
                                </asp:RadioButtonList>
                               <asp:Label ID="Label10" runat="server" Style="width: 20%; margin: 0 -188px;font-size: medium;" Text="رقم الصنف"></asp:Label>
   
    

                            </div>

                         </div>

                    

                    <div class="panel-body" >
                        <div style="display: flex">
                            <div style="display: flex">
                                <asp:Label ID="Label29" runat="server" Style="width: 16%" Text="رقم الصنف"></asp:Label>
                                <asp:TextBox ID="TextBox42" runat="server" Style="width: 27%; background: #fff" CssClass="form-control"></asp:TextBox>

                                <asp:Label ID="Label30" runat="server" Style="width: 19%; margin-right: 5px" Text=" مستوي"></asp:Label>
                                <asp:TextBox ID="TextBox43" runat="server" Style="width: 17%; background: #fff" CssClass="form-control"></asp:TextBox>
                            </div>
                          
                          
                            <div class="col-md-5" style="display: flex;">
    

                                  <asp:Label ID="Label31" runat="server" Style="width: 15%;" Text=" الدولة    "></asp:Label>
                              <asp:DropDownList ID="DropDownList2" runat="server" Style="width: 86%;" CssClass="form-control"></asp:DropDownList>
    

                            </div>

                        </div>
                    </div>


                    <div class="row" >
                        <div class="col-lg-12 col-xs-12 pull-right"  >
                            <div class="col-md-6 col-xs-6 pull-right" style="display: flex;  ">
                                <asp:Label ID="Label7" runat="server"  Text="AR"></asp:Label>
                                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>                                                              
                            </div>

                                

                              <div class="col-md-6 col-xs-6 " >
                          <asp:Label Class="col-md-2 pull-right" ID="Label13" runat="server" style="display:flex" Text="فئة العميل"></asp:Label>
                                    <asp:DropDownList class="col-md4" ID="DropDownList9" runat="server" Style="width: 80%; " CssClass="form-control"></asp:DropDownList>
                                  </div>   
                                                            
                            <div class="col-md-6 col-xs-6 pull-right" style="display: flex; ">
                                <asp:Label  ID="Label8" runat="server"  Text="EN"></asp:Label>
                                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>

                            <div class="col-md-6 col-xs-6" >
   
                                 
                          <asp:Label class="col-md-2 pull-right" ID="Label14" runat="server"   Text="العملة"></asp:Label>
                                 
                                 <asp:DropDownList ID="DropDownList10" runat="server"  CssClass="form-control" style="width:80%"></asp:DropDownList>
   
                             </div>

                                 
<%-----------------------------------------------------------------------------------------------------------------------------------------------------%>

                            <div class="col-md-12 col-xs-12 pull-right" style="display: flex; margin-top: 10px;" >
                                
                                <div class="col-md-1 col-xs-1" style="margin: 7px -28px 0 0" >
                                     <asp:Label ID="Label6" runat="server"  Text="التلفون" ></asp:Label>
                                                                        
                                </div>

                                <div class="col-md-3 col-xs-3" >
                                      <asp:TextBox ID="TextBox25" runat="server" CssClass="form-control" style="width: 163px;"></asp:TextBox>
                                </div>

                                   <div class="col-md-1 col-xs-1 " style="margin: 7px 21px 0 0;" >
                                     <asp:Label ID="Label15" runat="server"  Text="رئيسي" ></asp:Label>                                    
                                </div>

                                
                                <div class="col-md-3  col-xs-3" >
                                      <asp:TextBox ID="TextBox27" runat="server" CssClass="form-control" style="width: 171px;margin: 0 -23px 0 0;"></asp:TextBox>                                        
                                </div>

                                 <div class="col-md-1  col-xs-1"  >
                                     <asp:Label ID="Label16" runat="server"  Text="حد الائتمان" ></asp:Label>                                    
                                </div>

                                 <div class="col-md-3 col-xs-3" >
                                      <asp:TextBox ID="TextBox28" runat="server" CssClass="form-control" style="width: 184px; margin: 0px -12px 0 0;"></asp:TextBox>

                                </div>


                            </div>
                            <%-----------------------------------------------------------------------------------------------------------------------------------------------------%>

                            <div class="col-md-12 col-xs-12 " style="display: flex; justify-content: space-between; margin-top: 10px">
                                <div style="display: flex">
                                    <asp:Label ID="Label4" runat="server" Text="الموبايل" ></asp:Label>
                                    <asp:TextBox ID="TextBox16" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div style="display: flex; justify-content: space-between">
                                    <asp:Label ID="Label19" runat="server" Text="رئيسي"></asp:Label>
                                    <asp:TextBox ID="TextBox19" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div style="display: flex">
                                    <asp:Label ID="Label20" runat="server" Text="رقم الحساب"></asp:Label>
                                    <asp:TextBox ID="TextBox18" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-12 col-xs-12" style="display: flex; justify-content: space-between; margin-top: 10px">

                              

                             
                            </div>
                        </div>
                        <div class="col-md-2 col-xs-2 pull-right" style="margin-bottom: 10px;">
                          
                        </div>
                        <div class="col-md-2 col-xs-2 pull-right" style="margin-bottom: 10px;">
                            
                        </div>
                        <div class="col-md-12 col-xs-12" style="margin-top: 10px">
                            <div class="panel panel-default" >
                                <div class="panel-body">
                                    <div class="row">
                                        <div class="col-md-6 col-xs-6">
                                            <div style="display: flex">
                                                <asp:Label ID="Label22" Style="width: 20%" runat="server" Text="اول مده مدين"></asp:Label>
                                                <asp:TextBox ID="TextBox14" Style="width: 20%" class="form-control" runat="server"></asp:TextBox>
                                            </div>

                                        </div>
                                        <div class="col-md-6 col-xs-6">
                                            <div style="display: flex">
                                                <asp:Label ID="Label21" Style="width: 15%" runat="server" Text="مدة السداد"></asp:Label>                                              
                                                <asp:TextBox ID="TextBox15" Style="width: 71%" class="form-control" runat="server"></asp:TextBox>
                                            </div>
                                        </div>

                                    </div>
                                    <br>

                                    <div class="row">
                                        
                                        

                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div style="display: flex">
                                                <asp:Label ID="Label25" Style="width: 20%" runat="server" Text="دائن"></asp:Label>
                                                <asp:TextBox ID="TextBox61" Style="width: 20%" class="form-control" runat="server"></asp:TextBox>
                                            </div>

                                        </div>
                                        <div class="col-md-6">
                                            <div style="display: flex">
                                                <asp:Label ID="Label26" Style="width: 15%; margin: 0 -7px 0 7px;" runat="server" Text="البريد الالكتروني"></asp:Label>
                                               
                                                <asp:TextBox ID="TextBox62" Style="width: 71%" class="form-control" runat="server"></asp:TextBox>
                                            </div>
                                        </div>

                                    </div>
                                    <div class="row" style="margin-top: 10px">
                                        <div style="display: flex; flex-direction: column">
                                           
                                            <div class="col-md-6">
                                                <div style="display: flex; margin-top: 10px">
                                                    <asp:Label ID="Label28" Style="width: 15%" runat="server" Text="العنوان"></asp:Label>
                                                    <asp:TextBox ID="TextBox64" Style="width: 73%" class="form-control" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                       
                    </div>
                </div>

               
            </div>
            <div class="col-md-3  pull-right" style="overflow: auto; overflow-x: hidden">
                <div class="panel panel-default" style="margin-top: 10px">
                    <div class="panel-body">
                        <asp:TreeView ID="TreeView1" runat="server" Font-Bold="False" Font-Size="Medium" ShowLines="True" OnTreeNodePopulate="TreeView1_TreeNodePopulate" OnSelectedNodeChanged="TreeView1_SelectedNodeChanged">
                        </asp:TreeView>
                    </div>
                </div>
            </div>
           </div>

        </div>
        <div id="details" class="tab-pane fade" style="margin-top:10px">
            <div class="row">
              
            <div class="panel panel-primary col-md-6">
                    <div class="panel-heading">
                        <h3 class="panel-title">الوظيفة</h3>
                    </div>
                    <div class="panel-body">
                        <div class="col-md-12">
                            <asp:TextBox ID="TextBox6" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-12">
                            <asp:TextBox ID="TextBox9" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-12"> 
                            <asp:TextBox ID="TextBox10" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                          <div class="col-md-12">
                            <asp:TextBox ID="TextBox7" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>

                    </div>
                </div>
               <div class="panel panel-primary col-md-6">
                   <div class="panel-heading">
                       <h3 class="panel-title">المسئول</h3>
                   </div>
                   <div class="panel-body">
                       <div class="col-md-12">
                          
                           <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server"></asp:TextBox>
                       </div>
                       <div class="col-md-12">
                           
                           <asp:TextBox ID="TextBox8" CssClass="form-control" runat="server"></asp:TextBox>
                       </div>
                       <div class="col-md-12">
                           
                           <asp:TextBox ID="TextBox23" CssClass="form-control" runat="server"></asp:TextBox>
                       </div>
                          <div class="col-md-12">
                           
                           <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox>
                       </div>

                   </div>
               </div>
           </div>
            <div class="row">
                   <div class="panel panel-primary col-lg-6">
                    <div class="panel-heading">
                        <h3 class="panel-title">موبايل</h3>
                    </div>
                    <div class="panel-body">
                        <div class="col-md-12">
                          
                            <asp:TextBox ID="TextBox11" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-12">
                            
                            <asp:TextBox ID="TextBox12" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                          <div class="col-md-12">
                            
                            <asp:TextBox ID="TextBox24" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                          <div class="col-md-12">
                            
                            <asp:TextBox ID="TextBox29" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>

                    </div>
                </div>
               <div class="panel panel-primary col-lg-6">
                   <div class="panel-heading">
                       <h3 class="panel-title">بريد الكتروني</h3>
                   </div>
                   <div class="panel-body">
                       <div class="col-md-12">
                          
                           <asp:TextBox ID="TextBox17" CssClass="form-control" runat="server"></asp:TextBox>
                       </div>
                       <div class="col-md-12">
                           
                           <asp:TextBox ID="TextBox20" CssClass="form-control" runat="server"></asp:TextBox>
                       </div>
                       <div class="col-md-12">
                           
                           <asp:TextBox ID="TextBox21" CssClass="form-control" runat="server"></asp:TextBox>
                       </div>

                         <div class="col-md-12">
                           
                           <asp:TextBox ID="TextBox13" CssClass="form-control" runat="server"></asp:TextBox>
                       </div>
                   </div>
               </div>
                 <div class="panel panel-primary col-lg-6 pull-right">
                   
                    <div class="panel-heading">
                       <h3 class="panel-title">ملاحظات</h3>
                   </div>
                        <div class="panel-body">

                             <div class="col-md-12">
                          
                           <asp:TextBox ID="TextBox30" CssClass="form-control" runat="server"></asp:TextBox>
                       </div>

                            </div>
                </div>
              </div>
           
            
            
            
            
            
           <%-- <fieldset>
                <legend>مقاسات الحديد</legend>
                <table>
                    <tr>
                        <td>الطول</td>
                        <td>
                    </tr>
                    <tr>
                        <td>العرض</td>
                        <td>
                            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>قوة التحمل</td>
                        <td>
                    </tr>
                </table>
            </fieldset>--%>

            <%--<fieldset>
                <legend>مقاسات الورق</legend>
                <table>
                    <tr>
                        <td>الطول</td>
                        <td>
                            <asp:TextBox ID="TextBox51" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>العرض</td>
                        <td>
                            <asp:TextBox ID="TextBox52" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>الوزن</td>
                        <td>
                            <asp:TextBox ID="TextBox53" runat="server"></asp:TextBox></td>
                    </tr>
                </table>
            </fieldset>--%>

            <%--<fieldset>
                <legend>الاوزان للعبوات</legend>
                <table>
                    <tr>
                        <td>وزن اجمالى كجم</td>
                        <td>
                            <asp:TextBox ID="TextBox54" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>وزن صافى كجم</td>
                        <td>
                            <asp:TextBox ID="TextBox55" runat="server"></asp:TextBox></td>
                    </tr>
                </table>
            </fieldset>

            <fieldset>
                <legend>الادوية</legend>
                <table>
                    <tr>
                        <td>المجموعة الدوائية</td>
                        <td>
                            <asp:TextBox ID="TextBox21" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>الصنف البديل</td>
                        <td>
                            <asp:TextBox ID="TextBox58" runat="server"></asp:TextBox></td>

                        <td>مكان التخزين</td>
                        <td>
                            <asp:TextBox ID="TextBox59" runat="server"></asp:TextBox></td>
                    </tr>
                </table>
            </fieldset>

            <table>
                <tr>
                    <td>الصنف البديل 1 
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList10" runat="server"></asp:DropDownList>
                    </td>

                    <td>
                        <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                    </td>

                    <td>مكان التخزين/الرف</td>

                    <td>
                        <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>الصنف البديل 2</td>

                    <td>
                        <asp:DropDownList ID="DropDownList11" runat="server"></asp:DropDownList>
                    </td>

                    <td>
                        <asp:TextBox ID="TextBox56" runat="server"></asp:TextBox>
                    </td>

                    <td>الصنف البديل 3</td>

                    <td>
                        <asp:DropDownList ID="DropDownList12" runat="server"></asp:DropDownList>
                    </td>

                    <td>
                        <asp:TextBox ID="TextBox57" runat="server"></asp:TextBox>
                    </td>


                    <td>ملاحـظـات2 </td>
                    <td>
                        <asp:TextBox ID="TextBox17" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>ملاحـظـات</td>
                    <td>
                        <asp:TextBox ID="TextBox30" runat="server"></asp:TextBox>
                    </td>
                </tr>


                <tr>
                    <td>المجموعة الدوائية 1</td>
                    <td>
                        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                    </td>

                    <td>المجموعة الدوائية 2</td>
                    <td>
                        <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                    </td>

                    <td>المجموعة الدوائية 3</td>
                    <td>
                        <asp:TextBox ID="TextBox20" runat="server"></asp:TextBox>
                    </td>

                </tr>

                <tr>

                    <td>
                        <asp:Label ID="Label456" runat="server" Text="الصورة"></asp:Label>
                    </td>
                    <td>
                        <img src="https://media.geeksforgeeks.org/wp-content/uploads/20190719161521/core.jpg" alt="circls" style="width: 119px; height: 188px; border: dotted; margin: -73% 249% 117% 0%;" /></td>
                </tr>
            </table>--%>
        </div>
        <div id="purshase" class="container tab-pane fade  col-lg-12 pull-right"">
              
                   <div class="panel panel-default" style="margin-top: 10px;">
                           <div class="panel-body" >
                               <div class="row" style="margin-top: 29px;">
                               <div class="col-md-12" style="margin-bottom: 20px;"  >
                       <div class="col-md-6 pull-right"  >
                           <asp:Label ID="Label3" runat="server" Text="اسم المورد"></asp:Label>
                           <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox> 
                                                    
                       </div>

                                     <div class="col-md-6 " >
                           <asp:Label ID="Label5" runat="server" Text="رقم المورد"></asp:Label>
                           <asp:TextBox ID="TextBox31" runat="server"></asp:TextBox>                          
                       </div>

                                   
            
                         </div>

                               </div>
                               <div class="row" >
                                      <div class="col-md-12 "  style="margin-bottom: 20px;"  > 
                       <div class="col-md-5 col-md  col-xs-6 pull-right" style=" padding-right: 63px;" >                         
                              <asp:Label ID="Label9" runat="server" Text="EN"></asp:Label>
                           <asp:TextBox ID="TextBox32" runat="server"></asp:TextBox>                                                
                       </div>

                                         
            
                <div class="col-md-5  col-xs-6" style="margin-left: 116px">
                            
                      <asp:Label ID="Label11" runat="server" Text="اول المده مدين"></asp:Label>
                           <asp:TextBox ID="TextBox33" runat="server"></asp:TextBox>  

                       </div>
                                          </div>
                         </div>

                                <div class="col-md-12 " >
                                     <div class="col-md-6 pull-right" style="margin-right: 20px;">
                             <asp:Label ID="Label27" runat="server" Text="مدين"></asp:Label>
                     <asp:TextBox ID="TextBox35" runat="server" Style="width: 29%; background: #fff " ></asp:TextBox>
                       </div>
                                     <div class="col-md-6 pull-right">

                                         <br />
                                         <div class="col-md-12 pull-right"  >

                                             <div class="panel panel-primary ">
                   <div class="panel-heading">
                       <h3 class="panel-title">اخر فاتورة مشتريات</h3>
                   </div>
                   <div class="panel-body">
                      <div class="col-md-12">
                            <asp:Label Text="رقم الفاتورة" runat="server" />
                            <asp:TextBox ID="TextBox36" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-12">
                            <asp:Label Text="تاريخ الفاتورة" runat="server" />
                            <asp:TextBox ID="TextBox37" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-12">
                            <asp:Label Text="مبلغ الفاتورة" runat="server" />
                            <asp:TextBox ID="TextBox38" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                   </div>
               </div>

                                         </div>


                                           


                                         </div>

                                    </div>

                                   <%-----------------------------------------------------------------------------------------------------------------------------------------------------%>

                              
                                <div class="col-md-12 " >


                                    <div class="col-md-6 pull-right">

                                         <div class="col-md-12 pull-right"  >

                                             <div class="panel panel-primary ">
                   <div class="panel-heading">
                       <h3 class="panel-title">اخر فاتورة مشتريات</h3>
                   </div>
                   <div class="panel-body">
                      <div class="col-md-12">
                            <asp:Label Text="رقم الفاتورة" runat="server" />
                            <asp:TextBox ID="TextBox39" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-12">
                            <asp:Label Text="تاريخ الفاتورة" runat="server" />
                            <asp:TextBox ID="TextBox40" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-12">
                            <asp:Label Text="مبلغ الفاتورة" runat="server" />
                            <asp:TextBox ID="TextBox41" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                   </div>
               </div>

                                         </div>


                                           


                                         </div>





                                    </div>







                       </div>
                        </div>
                   </div>
               .
           </div>
    <div id="purshase" class="container tab-pane fade  col-lg-12 pull-right"">
              
                   <div class="panel panel-default" style="margin-top: 10px;">
                           <div class="panel-body" >
                               <div class="row">
                               <div class="col-md-12"  >
                       <div class="col-md-6 pull-right"  >
                           <asp:Label ID="Label18" runat="server" Text="اسم المورد"></asp:Label>
                           <asp:TextBox ID="TextBox34" runat="server"></asp:TextBox> 
                                                    
                       </div>

                                     <div class="col-md-6 " >
                           <asp:Label ID="Label23" runat="server" Text="رقم المورد"></asp:Label>
                           <asp:TextBox ID="TextBox44" runat="server"></asp:TextBox>                          
                       </div>

                                   
            
                         </div>

                               </div>
                               <div class="row" >
                                      <div class="col-md-12 " style="border:solid red" > 
                       <div class="col-md-4 col-md  pull-right" >                         
                              <asp:Label ID="Label24" runat="server" Text="EN"></asp:Label>
                           <asp:TextBox ID="TextBox45" runat="server"></asp:TextBox>                                                
                       </div>

                                         
            
                <div class="col-md-5 ">
                            
                      <asp:Label ID="Label32" runat="server" Text="اول المده مدين"></asp:Label>
                           <asp:TextBox ID="TextBox46" runat="server"></asp:TextBox>  

                       </div>
                                          </div>
                         </div>
       



            <%--<table class="table table-responsive table-bordered">
              
                       
                           
                            <tr>
                                <td>
                                    <asp:CheckBox ID="CheckBox10" runat="server" Text="تفعيل الكمية بالوحدة الثالثة" />
                                </td>
                                <td>
                                    <asp:CheckBox ID="CheckBox11" runat="server" Text="تفعيل الكمية بالوحدة الثانية" />
                                </td>
                            </tr>
                        </table>--%>


            <%--   <div>
                <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped" BackColor="White"></asp:GridView>

            </div>--%>
        </div>
   


</asp:Content>