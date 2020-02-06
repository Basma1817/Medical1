<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AMERA2.aspx.cs" Inherits="mid.AMERA2" %>
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
        #bill{
             background-color:#d8effb;           
            border-right:solid 1px black;
            border-left:solid 1px black;
            border-bottom:solid 1px black;
            margin-bottom:20px;
            width:230px;
            height:150px;
           


        }
         #bill1{
             background-color:#d8effb;
            border-right:solid 1px black;
            border-left:solid 1px black;
            border-bottom:solid 1px black;
            margin-bottom:20px;
            width:230px;
            height:150px;
           
        }
         .data td{
             padding-top:10px;
             

         }
      
    </style>


    <div class="container">
        <div class="row">
            <!--start nav-->
            <div class="row">
            <div class="col-sm-12" style="background-color:#d5dde1">
                <h4 id="nv">البيانات اللأاساسية >بيانات الموردين</h4>
            </div>
        </div>
            <!--end nav-->
            <!--start dropdownlist-->
            <div class="row">
                   <div class="col-sm-6">
                <asp:Label ID="Label1" runat="server" Text="الفرع"></asp:Label>
                <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>

                <asp:Label ID="Label2" runat="server" Text="الرقم"></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server" class="no1"></asp:TextBox>

            </div>
            <div class="col-sm-6">
                       <asp:Label ID="Label3" runat="server" Text="الشركة"></asp:Label>
                <asp:DropDownList ID="DropDownList2" runat="server"></asp:DropDownList>

                <asp:Label ID="Label4" runat="server" Text="الرقم"></asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server" class="no2"></asp:TextBox>

            </div>
            </div>
            <!--end dropdownlist-->
            <!--start tap-->
            <div class="row">
         <div class="col-sm-4">


         </div>
          <div class="col-sm-4" id="tab" >
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
            <div class="col-sm-4">

         </div>
            
        </div>
             <!--end tap-->
            <!--start table-->
            <div class="row">
                <!--first table-->
                <div class="col-sm-6">
                    <div id="bill" >
                        <span style="color:blue" > اخر فاتورة مشتريات</span>
                        

                       <table class="data">
                           <tr>
                               <td>رقم الفاتورة</td>
                               <td>
                                   <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                               </td>

                           </tr>
                          
                            <tr>
                               <td>تاريخ الفاتورة</td>
                               <td>
                                   <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                               </td>

                           </tr>
                          
                            
                            <tr>
                               <td>مبلغ الفاتورة</td>
                               <td>
                                   <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                               </td>

                           </tr>
                       </table>
                    </div>
                      <div id="bill1" >
                        <span style="color:blue" > اخر سند صرف</span>


                       <table class="data">
                           <tr>
                               <td>رقم السند</td>
                               <td>
                                   <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                               </td>

                           </tr>
                          
                            <tr>
                               <td>تاريخ السند</td>
                               <td>
                                   <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                               </td>

                           </tr>
                            
                            <tr>
                               <td>المبلغ </td>
                               <td>
                                   <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                               </td>

                           </tr>
                       </table>
                       
                    </div>
                </div>
                <!--second table-->
                <div class="col-sm-6">
                    <table class="table table-striped">
 
                     <tbody>
                    <tr>
                      <th scope="row">اسم المورد</th>
                      <td>
                          <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>

                      </td>
                      <td>رقم المورد</td>
                      <td>
                          <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>

                      </td>
                    </tr>
                    <tr>
                      <th scope="row">EN</th>
                      <td>
                          <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>

                      </td>
                      <td> أول المدة دائن</td>
                      <td>
                          <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>

                      </td>
                    </tr>
                    <tr>
                      <th scope="row"></th>
                      <td>

                      </td>
                      <td>مدين</td>
                      <td>
                          <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>

                      </td>
                    </tr>
             </tbody>
                    </table>
                </div>
            </div>
            <!--end table-->





        </div>
    </div>
</asp:Content>
