<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AMERA.aspx.cs" Inherits="mid.AMERA" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <style>
        *{
            margin:0;
            padding:0;
        }

        /*#note{
            text-align:center;
        }*/
        th{
            text-align:right;
        }
       
        .auto-style1 {
            width: 100%;
            border: 1px solid #C4E3F3;
        }
        .row{
            margin-bottom:20px;
        }
        #tab{
            align-content:center;
            margin-right:2PX;
        }
        .no1 ,.no2{
            border-radius:10px;
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
       

    </style>
    <div class="container">
    <div class="row">
        <div class="row">
            <div class="col-sm-12" style="background-color:#d5dde1">
                <h4 id="nv">البيانات اللأاساسية >بيانات الموردين</h4>

            </div>
        </div>
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

         <!--start table -->
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
          <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>

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


    </tr>
    <tr>

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
    <tr>

 <td>
          <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>

      </td>
      <td>
           
          <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>

      </td>
      
      <td> 
           
          <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>

      </td>
      
      <td>
           
          <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>

      </td>
    
    </tr>
       <tr>
       <td>
          <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>

      </td>
      <td>
          <asp:TextBox ID="TextBox16" runat="server"></asp:TextBox>

      </td>
      <td>
          <asp:TextBox ID="TextBox17" runat="server"></asp:TextBox>

      </td>

      
      <td>
          <asp:TextBox ID="TextBox18" runat="server"></asp:TextBox>

      </td>


    </tr>
       <tr>
       <td>
          <asp:TextBox ID="TextBox19" runat="server"></asp:TextBox>

      </td>
      <td>
          <asp:TextBox ID="TextBox20" runat="server"></asp:TextBox>

      </td>
      <td>
          <asp:TextBox ID="TextBox21" runat="server"></asp:TextBox>

      </td>

      
      <td>
          <asp:TextBox ID="TextBox22" runat="server"></asp:TextBox>

      </td>


    </tr>
  </tbody>
</table>

            </div>

        </div>
        <!--end table-->
        <div class="row">
         
              <div class="col-sm-8" id="note">
                  <asp:Label ID="Label5" runat="server" Text="ملاحظات"></asp:Label>
                  <asp:TextBox ID="TextBox23" runat="server" ></asp:TextBox>
            </div>
          
    </div>

    </div>
        </div>
</asp:Content>
