﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="mtssuplir.aspx.cs" Inherits="mid.mtssuplir" %>

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
            <h2 class="panel-title" style="font-size: 29px;">بيانات الموردين</h2>
        </div>
    </div>


    <%--<section class="content-header">--%>

    <div class="modal fade" tabindex="-1" id="loginModal"
        data-keyboard="false" data-backdrop="static">
        <div class="modal-dialog" style="width: 55%">
            <div class="modal-content" style="direction: ltr;">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" style="margin-right: 75%;">
                        &times;
                    </button>
                    <h4 class="modal-title">حذف سجل</h4>
                </div>
                <div class="modal-body">

                    <h4 style="margin-left: 59%;">هل انت متأكد من الحذف؟</h4>
                </div>
                <div class="modal-footer" style="margin-right: 74%">
                    <asp:Button ID="Button4" runat="server" type="submit" class="btn btn-primary" Text="حذف" OnClick="Button4_Click"></asp:Button>
                    <button type="button" class="btn btn-primary"
                        data-dismiss="modal">
                        إغلاق</button>
                </div>
            </div>
        </div>
    </div>


    <div class="row">
        <div class="col-lg-5">
        </div>
        <div class="col-lg-1">
            <div class="form-group" style="display: flex; justify-content: space-between">
                <asp:Label ID="Label17" runat="server" Text="الرقم"></asp:Label>
                <asp:TextBox ID="TextBox17" runat="server" CssClass="form-control" Style="display: flex;"></asp:TextBox>
            </div>
        </div>
        <div class="col-md-2">
            <div class="form-group" style="display: flex; justify-content: space-between">
                <asp:Label ID="Label4" runat="server" Text="النشاط"></asp:Label>
                <asp:DropDownList ID="DropDownList5" runat="server" CssClass="form-control" AutoPostBack="true">
                </asp:DropDownList>
            </div>
        </div>
        <div class="col-lg-1">
            <div class="form-group" style="display: flex; justify-content: space-between">
                <asp:Label ID="Label12" runat="server" Text="الرقم"></asp:Label>
                <asp:TextBox ID="TextBox28" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <div class="col-lg-3">
            <div class="form-group" style="display: flex; justify-content: space-between">
                <asp:Label ID="Label1" runat="server" Text="الشركة"></asp:Label>
                <asp:DropDownList ID="DropDownList4" runat="server" CssClass="form-control"
                    AutoPostBack="true" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged">
                </asp:DropDownList>
            </div>
        </div>
    </div>


   <%-- <div class="wrapper" id="app" style="float: left; width: 100%; margin-right: 43px;">--%>

       <%-- <div class="content" style="border-style: hidden;">--%>
           <div class="row">
         <div class="col-sm-4">
         </div>
               <div class="row">
        <div class="col-lg-9" style="display:flex; justify-content:right">
            <ul class="nav nav-pills" role="tablist">
                <li class="nav-item">
                 <a class="nav-link active" data-toggle="pill" href="#info" >حركة البيانات</a>
                </li>
                <li class="nav-item">
                 <a class="nav-link"  data-toggle="pill" href="#respppl"> الأشخاص المسؤلين</a>
                </li>
                <li class="nav-item">
                <a class="nav-link" data-toggle="pill" href="#basicinfo">البيانات اللأساسية</a>
                </li>
            </ul>
        </div>
    </div>
      
            <div class="col-sm-4">

         </div>
            
        </div>
        <!--end tap-->

         

        <div class="tab-content">
                <div id="basicinfo" class="container tab-pane active">
                   <div class="col-lg-12">
            <div class="col-lg-5" style="display: flex; justify-content: flex-end">
            <asp:Button ID="Button2" runat="server" type="submit" Text="إضافة" OnClick="Button2_Click" class="btn btn-primary" />
            <asp:Button ID="Button1" runat="server" type="submit" Text="تعديل" OnClick="Button1_Click" class="btn btn-success" />
            <asp:HyperLink ID="HyperLink1" runat="server" class="btn btn-primary" data-target="#loginModal" data-toggle="modal" href="#" Style="background-color: darkred; ">حذف</asp:HyperLink>

            <%-- <asp:HyperLink ID="HyperLink1" runat="server" class="btn btn-primary" data-target="#loginModal" data-toggle="modal" href="#" style="background-color: darkred;">حذف</asp:HyperLink>--%>

            <asp:Button ID="Button5" runat="server" Text="طباعة" OnClick="Button3_Click" class="btn btn-dark" />
        </div>

                     <div class ="row">
                          <div class="col-md-9">
                               <div class="radio_btn">
                                   <asp:Label ID="Label23" runat="server" Text="نوع الحساب"></asp:Label>
                                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal">
                                    <asp:ListItem Text="رئيسي"  Selected="True" />
                                    <asp:ListItem Text="فرعي"  />
                                    </asp:RadioButtonList>
                                                    </div>
                              <table class="table table-striped">
                                   
                                               
                            <tbody>
                                   
                         <tr>
                         <td>
                             <asp:Label ID="Label5" runat="server" Text="رقم المورد"></asp:Label>
                         </td>
                          <td>
                              <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
                          </td>
                          <td>
                             <asp:Label ID="Label6" runat="server" Text="رقم المستوي"></asp:Label>

                          </td>
                          <td>
                              <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

                          </td>
                            <td>
                             <asp:Label ID="Label7" runat="server" Text="الدولة "></asp:Label>

                            </td>
                            <td>
                                <asp:DropDownList ID="DropDownList3" runat="server" style="width: 80%;"></asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                         <td>
                             <asp:Label ID="Label8" runat="server" Text=" اسم المورد AR"></asp:Label>
         
                         </td>
                          <td>
                              <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>

                          </td>
                          <td></td>
                          <td></td>

                          <td>
                             <asp:Label ID="Label9" runat="server" Text=" فئة المورد"></asp:Label>

                          </td>
                               <td>
                                <asp:DropDownList ID="DropDownList2" runat="server" style="width: 80%;"></asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                          <td>
                             <asp:Label ID="Label10" runat="server" Text=" EN"></asp:Label>
            
                          </td>
                          <td>
                              <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>

                          </td>
                          <td></td>
                          <td></td>
                             <td>
                             <asp:Label ID="Label11" runat="server" Text=" العملة"></asp:Label>
            
                          </td>
                             <td>
                                <asp:DropDownList ID="DropDownList1" runat="server" style="width: 80%;"></asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                         <td>
                             <asp:Label ID="Label2" runat="server" Text="التليفون "></asp:Label>
                         </td>
                          <td>
                              <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                          </td>
                          <td>
                             <asp:Label ID="Label13" runat="server" Text="رئيسي"></asp:Label>

                          </td>
                          <td>
                              <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>

                          </td>
                            <td>
                             <asp:Label ID="Label14" runat="server" Text="حد الإتمان "></asp:Label>

                            </td>
                            <td>
                              <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
            
                            </td>
                        </tr>
                        <tr>
                         <td>
                             <asp:Label ID="Label15" runat="server" Text="الموبايل "></asp:Label>
                         </td>
                          <td>
                              <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                          </td>
                          <td>
                             <asp:Label ID="Label16" runat="server" Text="رئيسي"></asp:Label>

                          </td>
                          <td>
                              <asp:TextBox ID="TextBox27" runat="server"></asp:TextBox>

                          </td>
                            <td>
                             <asp:Label ID="Label3" runat="server" Text="رقم الحساب  "></asp:Label>

                            </td>
                            <td>
                              <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
            
                            </td>
                        </tr>

                        <tr>
                          <td>
                             <asp:Label ID="Label18" runat="server" Text=" مدة السداد"></asp:Label>
            
                          </td>
                          <td>
                              <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>

                          </td>
                          <td></td>
                          <td></td>
                             <td>
                             <asp:Label ID="Label19" runat="server" Text=" اول المدة مدين"></asp:Label>
            
                          </td>
                             <td>
                                <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>

                            </td>
                        </tr>
                        <tr>
                          <td>
                             <asp:Label ID="Label20" runat="server" Text=" بريد الكتروني "></asp:Label>
            
                          </td>
                          <td>
                              <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>

                          </td>
                          <td></td>
                          <td></td>
                             <td>
                             <asp:Label ID="Label21" runat="server" Text=" دائن  "></asp:Label>
            
                          </td>
                             <td>
                                <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>

                            </td>
                        </tr>

                          <tr>
                              <td>
                             <asp:Label ID="Label22" runat="server" Text=" العنوان  "></asp:Label>

                              </td>
                              <td>
                                <asp:TextBox ID="TextBox16" runat="server"></asp:TextBox>

                              </td>
                          </tr>
                      </tbody>
                            </table>
                          </div>
                          <!--start tree view-->
                         
                          <!--start tree view-->

                   
                <div class="col-md-3" style="height: 650px; overflow: auto; overflow-x: hidden">
                <div class="panel panel-default" style="margin-top: 10px">
                <div class="panel-body">
                <asp:TreeView ID="TreeView1" runat="server" Font-Bold="False" Font-Size="Medium" ShowLines="True" OnTreeNodePopulate="TreeView1_TreeNodePopulate" OnSelectedNodeChanged="TreeView1_SelectedNodeChanged">
                </asp:TreeView>
            </div>
        </div>
    </div>
                  </div>
                                 </div>
                        <!-- /.box-body -->
                    </div>
                    
                <div id="respppl" class="container tab-pane fade">
                    <div class="row">
       
            <div class="col-md-12">
        <table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">المسؤل </th>
      <th scope="col">الوظيفة</th>
      <th scope="col">بريد الكتروني </th>
      <th scope="col">موبايل</th>
    </tr>
  </thead>
  <tbody>
    <tr>
       <td>
          <asp:TextBox ID="TextBox22" runat="server"></asp:TextBox>

      </td>
      <td>
          <asp:TextBox ID="TextBox23" runat="server"></asp:TextBox>

      </td>
      <td>
          <asp:TextBox ID="TextBox24" runat="server"></asp:TextBox>

      </td>

      
      <td>
          <asp:TextBox ID="TextBox25" runat="server"></asp:TextBox>

      </td>


    </tr>
    <tr>

     <td>
          <asp:TextBox ID="TextBox30" runat="server"></asp:TextBox>

      </td>
      <td>
           
          <asp:TextBox ID="TextBox37" runat="server"></asp:TextBox>
          </td>
      
      
      <td>
           
          <asp:TextBox ID="TextBox41" runat="server"></asp:TextBox>

      </td>
      
      <td>
          <asp:TextBox ID="TextBox45" runat="server"></asp:TextBox>

      </td>
     
    </tr>
    <tr>

 <td>
          <asp:TextBox ID="TextBox31" runat="server"></asp:TextBox>

      </td>
      <td>
           
          <asp:TextBox ID="TextBox38" runat="server"></asp:TextBox>

      </td>
      
      <td> 
           
          <asp:TextBox ID="TextBox42" runat="server"></asp:TextBox>

      </td>
      
      <td>
           
          <asp:TextBox ID="TextBox46" runat="server"></asp:TextBox>

      </td>
    
    </tr>
       <tr>
       <td>
          <asp:TextBox ID="TextBox35" runat="server"></asp:TextBox>

      </td>
      <td>
          <asp:TextBox ID="TextBox39" runat="server"></asp:TextBox>

      </td>
      <td>
          <asp:TextBox ID="TextBox43" runat="server"></asp:TextBox>

      </td>

      
      <td>
          <asp:TextBox ID="TextBox47" runat="server"></asp:TextBox>

      </td>


    </tr>
       <tr>
       <td>
          <asp:TextBox ID="TextBox36" runat="server"></asp:TextBox>

      </td>
      <td>
          <asp:TextBox ID="TextBox40" runat="server"></asp:TextBox>

      </td>
      <td>
          <asp:TextBox ID="TextBox44" runat="server"></asp:TextBox>

      </td>

      
      <td>
          <asp:TextBox ID="TextBox48" runat="server"></asp:TextBox>

      </td>


    </tr>
  </tbody>
</table>

            </div>

        </div>
                     <div class="row">
         
              <div class="col-sm-8" id="note">
                  <asp:Label ID="Label24" runat="server" Text="ملاحظات"></asp:Label>
                  <asp:TextBox ID="TextBox60" runat="server" ></asp:TextBox>
            </div>
          
    </div>
            
                    <%--<div class="row" style="margin: 13px 304px; font-size: 16px;">
                        <div class="col-xs-6 col-sm-3" style="margin: 0px -289px 0px 158px;">
                            المسئول
                      <br />
                            <asp:TextBox ID="TextBox22" Style="width: 250px; margin: 10% 0 0 -37%; border-radius: 0px; height: 30px; border: 1px solid lightblue;" runat="server"></asp:TextBox>
                        </div>

                        <div class="col-xs-6 col-sm-3">
                            الوظيفه
                            <br />
                            <asp:TextBox ID="TextBox23" Style="width: 230px; margin: 9% -51% 0 0; position: absolute; border-radius: 0px; height: 30px; border: 1px solid lightblue;" runat="server"></asp:TextBox>
                        </div>

                        <div class="col-xs-6 col-sm-3" style="margin: -67px 346px;">
                            بريدالكترونى
                            <br />
                            <asp:TextBox ID="TextBox24" Style="width: 220px; margin: 15% -121% 0 -25%; position: absolute; border-radius: 0px; height: 30px; border: 1px solid lightblue;" runat="server"></asp:TextBox>
                        </div>

                        <div class="col-xs-6 col-sm-3" style="margin: -59px 122% -66px 0px;">
                            موبيل
                            <br />
                            <asp:TextBox ID="TextBox25" Style="width: 175px; margin: 10% 0 0 -24%; border-radius: 0px; height: 30px; border: 1px solid lightblue;" runat="server"></asp:TextBox>
                        </div>


                    </div>


                    <div class="row" style="margin: 47px -95px 0 0; font-size: 16px;">
                        <div class="col-xs-6 col-sm-3">
                            <asp:TextBox ID="TextBox30" Style="width: 250px; margin: -10% -155px 0 0; position: absolute; border-radius: 0px; height: 30px; border: 1px solid lightblue;" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-xs-6 col-sm-3">
                            <asp:TextBox ID="TextBox37" Style="width: 230px; margin: -10% -51% 0 0; position: absolute; border-radius: 0px; height: 30px; border: 1px solid lightblue;" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-xs-6 col-sm-3">
                            <asp:TextBox ID="TextBox41" Style="width: 220px; margin: -10% -53% 0 -24%; position: absolute; border-radius: 0px; height: 30px; border: 1px solid lightblue;" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-xs-6 col-sm-3">
                            <asp:TextBox ID="TextBox45" Style="width: 175px; margin: -10% -59.6% 0 -24%; position: absolute; border-radius: 0px; height: 30px; border: 1px solid lightblue;" runat="server"></asp:TextBox>
                        </div>
                    </div>



                    <div class="row" style="margin: 47px -95px 0 0; font-size: 16px;">
                        <div class="col-xs-6 col-sm-3">
                            <asp:TextBox ID="TextBox31" Style="width: 250px; margin: -10% -155px 0 0; position: absolute; border-radius: 0px; height: 30px; border: 1px solid lightblue;" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-xs-6 col-sm-3">
                            <asp:TextBox ID="TextBox38" Style="width: 230px; margin: -10% -51% 0 0; position: absolute; border-radius: 0px; height: 30px; border: 1px solid lightblue;" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-xs-6 col-sm-3">
                            <asp:TextBox ID="TextBox42" Style="width: 220px; margin: -10% -53% 0 -24%; position: absolute; border-radius: 0px; height: 30px; border: 1px solid lightblue;" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-xs-6 col-sm-3">
                            <asp:TextBox ID="TextBox46" Style="width: 175px; margin: -10% -59.6% 0 -24%; position: absolute; border-radius: 0px; height: 30px; border: 1px solid lightblue;" runat="server"></asp:TextBox>
                        </div>
                    </div>


                    <div class="row" style="margin: 47px -95px 0 0; font-size: 16px;">
                        <div class="col-xs-6 col-sm-3">
                            <asp:TextBox ID="TextBox35" Style="width: 250px; margin: -10% -155px 0 0; position: absolute; border-radius: 0px; height: 30px; border: 1px solid lightblue;" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-xs-6 col-sm-3">
                            <asp:TextBox ID="TextBox39" Style="width: 230px; margin: -10% -51% 0 0; position: absolute; border-radius: 0px; height: 30px; border: 1px solid lightblue;" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-xs-6 col-sm-3">
                            <asp:TextBox ID="TextBox43" Style="width: 220px; margin: -10% -53% 0 -24%; position: absolute; border-radius: 0px; height: 30px; border: 1px solid lightblue;" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-xs-6 col-sm-3">
                            <asp:TextBox ID="TextBox47" Style="width: 175px; margin: -10% -59.6% 0 -27%; position: absolute; border-radius: 0px; height: 30px; border: 1px solid lightblue;" runat="server"></asp:TextBox>
                        </div>
                    </div>

                    <div class="row" style="margin: 47px -95px 0 0; font-size: 16px;">
                        <div class="col-xs-6 col-sm-3">
                            <asp:TextBox ID="TextBox36" Style="width: 250px; margin: -10% -155px 0 0; position: absolute; border-radius: 0px; height: 30px; border: 1px solid lightblue;" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-xs-6 col-sm-3">
                            <asp:TextBox ID="TextBox40" Style="width: 230px; margin: -10% -51% 0 0; position: absolute; border-radius: 0px; height: 30px; border: 1px solid lightblue;" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-xs-6 col-sm-3">
                            <asp:TextBox ID="TextBox44" Style="width: 220px; margin: -10% -53% 0 -24%; position: absolute; border-radius: 0px; height: 30px; border: 1px solid lightblue;" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-xs-6 col-sm-3">
                            <asp:TextBox ID="TextBox48" Style="width: 175px; margin: -10% -59.6% 0 -24%; position: absolute; border-radius: 0px; height: 30px; border: 1px solid lightblue;" runat="server"></asp:TextBox>
                        </div>
                    </div>

                    <div style="margin: 25px 387px;">
                        ملاحظات 

                         <asp:TextBox ID="TextBox60" runat="server" Style="margin: 14px -36px; border-radius: 0px; width: 584px; padding: 10px;"></asp:TextBox>
                    </div>--%>

                </div>

                <div id="info" class="container tab-pane fade">
                    <div class="row" style="width: 1px; margin: 13px 304px; font-size: 16px;">
                        <div class="col-xs-6 col-sm-3">

                            <table style="margin: -11px -258px; position: absolute; font-size: 13px;">

                                <tr>
                                    <td style="position: absolute; margin: -4% -84%">رقم المورد</td>
                                    <td>
                                        <asp:TextBox ID="TextBox51" runat="server" Style="position: absolute; margin: -3% -156%; width: 60px; border-radius: 0px;"></asp:TextBox>
                                    </td>

                                    <td style="margin: -3% -117%; position: absolute;">اسم المورد </td>
                                    <td>
                                        <asp:TextBox ID="TextBox50" runat="server" Style="position: absolute; margin: -3% -85%; border-radius: 0px;"></asp:TextBox>
                                    </td>

                                </tr>
                                <tr>
                                    <td style="margin: 32px -3px; position: absolute;">EN  </td>
                                    <td>
                                        <asp:TextBox ID="TextBox52" runat="server" Style="margin: 30px; border-radius: 0px;"></asp:TextBox>
                                    </td>
                                    <td style="position: absolute; margin: -6% 4%">أ.م دائن</td>
                                    <td>
                                        <asp:TextBox ID="TextBox53" runat="server" Style="margin: -49px 53px 0px 0px; position: absolute; border-radius: 0px;"></asp:TextBox>
                                    </td>
                                </tr>

                                <tr>
                                    <td style="position: absolute; margin: -22% 104%;">مدين</td>
                                    <td>
                                        <asp:TextBox ID="TextBox54" runat="server" Style="border-radius: 0px; position: absolute; margin: -51px 55px"></asp:TextBox>
                                    </td>
                                </tr>

                            </table>

                            <fieldset style="border: 1px solid; margin: -44% 1456%; padding: 10px; width: 223px; background-color: aliceblue; position: absolute;">
                                <legend>اخر فاتورة مشتريات</legend>

                                <table>
                                    <tr>
                                        <td>رقم فاتوره
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox3" Style="width: 140px; margin: 0 5px 6px 100%; border: 1px solid lightblue;" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>

                                        <td>تاريخ الفاتوره
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox4" Style="width: 140px; margin: 0 5px 6px 100%; border: 1px solid lightblue;" runat="server"></asp:TextBox>
                                        </td>

                                    </tr>
                                    <tr>
                                        <td>مبلغ الفاتوره
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox18" Style="width: 140px; margin: 0 5px 6px 100%; border: 1px solid lightblue; border-radius: 0px;" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                </table>
                            </fieldset>
                            <fieldset style="border: 1px solid; margin: 564% 1450% 0 0; padding: 10px; background-color: aliceblue; width: 223px; position: absolute;">
                                <legend>اخر سند صرف</legend>
                                <table>
                                    <tr>
                                        <td>رقم سند 
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox19" Style="width: 140px; margin: 0 5px 6px 100%; border: 1px solid lightblue;" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>


                                    <tr>
                                        <td>تاريخ السند
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox20" Style="width: 140px; margin: 0 5px 6px 100%; border: 1px solid lightblue;" runat="server"></asp:TextBox>
                                        </td>

                                    </tr>

                                    <tr>
                                        <td>المبلغ
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox21" Style="width: 140px; margin: 0 5px 6px 100%; border-radius: 0px; height: 30px; border: 1px solid lightblue;" runat="server"></asp:TextBox>
                                        </td>

                                    </tr>
                                </table>
                            </fieldset>

                            <div>
                                <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped" BackColor="White" Style="font-size: 12px; margin: 99px 438px; width: 660px; text-align: center; border-color: #5bc0de;"></asp:GridView>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        
              
</asp:Content>

