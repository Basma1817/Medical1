<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Amera3.aspx.cs" Inherits="mid.Amera3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        *{
            margin:0;
            padding:0;
        }
         
        .row{
            margin-bottom:30px;
        }
        .no1 ,.no2{
            border-radius:10px;
        }
           #tab{
            align-content:center;
            margin-right:2PX;
        }
             li{
            font-size:9px;
            
           
        }
        li:hover{
            background-color:blue;
        }
        a{
            color:black;
        }
          .radio_btn{
              text-align:center;
          }
    </style>
    <div class="container">
        <div class="row">
            <!--start nav-->
            <div class="row">
                  <div class="col-md-12" style="background-color:#d5dde1">
                <h4 id="nv">البيانات اللأاساسية >بيانات الموردين</h4>
            </div>
            </div>
            <!--end nav-->
            <!--start dropdownlist-->
            <div class="row">
                   <div class="col-md-6">
                <asp:Label ID="Label1" runat="server" Text="الفرع"></asp:Label>
                <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>

                <asp:Label ID="Label2" runat="server" Text="الرقم"></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server" class="no1"></asp:TextBox>

            </div>
            <div class="col-md-6">
                       <asp:Label ID="Label3" runat="server" Text="الشركة"></asp:Label>
                <asp:DropDownList ID="DropDownList2" runat="server"></asp:DropDownList>

                <asp:Label ID="Label4" runat="server" Text="الرقم"></asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server" class="no2"></asp:TextBox>

            </div>
            </div>

            <!--end dropdownlist-->
            <!--strat buttons-->

            <div class="row">
                <div class="col-md-6" hidden>

               </div>

                 <div class="col-md-6">
                        <button type="button" class="btn btn-primary">اضافة </button>
                        <button type="button" class="btn btn-danger">حذف</button>
                        <button type="button" class="btn btn-info">تعديل</button>
                        <button type="button" class="btn btn-success">تقرير</button>
                </div>
            </div>

            <!--end buttons-->
            <!--start tap-->
            <div class="row">
         <div class="col-md-4">


         </div>
          <div class="col-md-4" id="tab" >
            <ul class="nav nav-tabs" >
                    <li class="nav-item">
                         <a class="nav-link active" href="#" >حركة البيانات  </a>
                    </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#"> الأشخاص المسؤلين  </a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#">البيانات اللأساسية </a>
                  </li>
                 
            </ul>

            </div>
            <div class="col-md-4">

         </div>
            
        </div>

            <!--start tap-->


            <!--start table-->
             <div class ="row">
                          <div class="col-md-10">
                               <div class="radio_btn">
                                   <asp:Label ID="Label23" runat="server" Text="نوع الحساب"></asp:Label>
                                    <asp:RadioButtonList ID="equalsOrLike" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal">
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
                              <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                          </td>
                          <td>
                             <asp:Label ID="Label6" runat="server" Text="رقم المستوي"></asp:Label>

                          </td>
                          <td>
                              <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>

                          </td>
                            <td>
                             <asp:Label ID="Label7" runat="server" Text="الدولة "></asp:Label>

                            </td>
                            <td>
                                <asp:DropDownList ID="DropDownList3" runat="server"></asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                         <td>
                             <asp:Label ID="Label8" runat="server" Text=" اسم المورد AR"></asp:Label>
         
                         </td>
                          <td>
                              <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>

                          </td>
                          <td></td>
                          <td></td>

                          <td>
                             <asp:Label ID="Label9" runat="server" Text=" فئة المورد"></asp:Label>

                          </td>
                               <td>
                                <asp:DropDownList ID="DropDownList4" runat="server"></asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                          <td>
                             <asp:Label ID="Label10" runat="server" Text=" EN"></asp:Label>
            
                          </td>
                          <td>
                              <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>

                          </td>
                          <td></td>
                          <td></td>
                             <td>
                             <asp:Label ID="Label11" runat="server" Text=" العملة"></asp:Label>
            
                          </td>
                             <td>
                                <asp:DropDownList ID="DropDownList5" runat="server"></asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                         <td>
                             <asp:Label ID="Label12" runat="server" Text="التليفون "></asp:Label>
                         </td>
                          <td>
                              <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                          </td>
                          <td>
                             <asp:Label ID="Label13" runat="server" Text="رئيسي"></asp:Label>

                          </td>
                          <td>
                              <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>

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
                              <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                          </td>
                          <td>
                             <asp:Label ID="Label16" runat="server" Text="رئيسي"></asp:Label>

                          </td>
                          <td>
                              <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>

                          </td>
                            <td>
                             <asp:Label ID="Label17" runat="server" Text="رقم الحساب  "></asp:Label>

                            </td>
                            <td>
                              <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
            
                            </td>
                        </tr>

                        <tr>
                          <td>
                             <asp:Label ID="Label18" runat="server" Text=" مدة السداد"></asp:Label>
            
                          </td>
                          <td>
                              <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>

                          </td>
                          <td></td>
                          <td></td>
                             <td>
                             <asp:Label ID="Label19" runat="server" Text=" اول المدة مدين"></asp:Label>
            
                          </td>
                             <td>
                                <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>

                            </td>
                        </tr>
                        <tr>
                          <td>
                             <asp:Label ID="Label20" runat="server" Text=" بريد الكتروني "></asp:Label>
            
                          </td>
                          <td>
                              <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>

                          </td>
                          <td></td>
                          <td></td>
                             <td>
                             <asp:Label ID="Label21" runat="server" Text=" دائن  "></asp:Label>
            
                          </td>
                             <td>
                                <asp:TextBox ID="TextBox16" runat="server"></asp:TextBox>

                            </td>
                        </tr>

                          <tr>
                              <td>
                             <asp:Label ID="Label22" runat="server" Text=" العنوان  "></asp:Label>

                              </td>
                              <td>
                                <asp:TextBox ID="TextBox17" runat="server"></asp:TextBox>

                              </td>
                          </tr>
                      </tbody>
                            </table>
                          </div>
                          <!--start tree view-->
                          <div class="col-md-2">
                             
                          </div>
                          <!--start tree view-->

                      </div>
            <!--start table-->
         

        </div>
    </div>
</asp:Content>
