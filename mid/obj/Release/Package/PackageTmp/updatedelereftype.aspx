﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="updatedelereftype.aspx.cs" Inherits="mid.updatedelereftype" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
  
    <div class="content-wrapper">
        
    <section class="content">
      <div class="row">
        <div class="col-xs-12">
          <div class="box">
            <div class="box-header">
              <h3 class="box-title"></h3>
            </div>
            <!-- /.box-header -->
              <div style="margin-right:35px">



            <div class="box-body">
              <table id="example2" class="table table-bordered table-hover">
                <thead>
                <tr>
                  
               
                </tr>
                </thead>
                <tbody>
              <tr>
           
            <td><asp:Label ID="Label4" runat="server" Text="المرجع الفرعي للسندات"></asp:Label></td>
            
        </tr>
    <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Text="الرقم"></asp:Label></td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
       </tr>
         <tr>
        <td>
            <asp:Label ID="Label2" runat="server" Text="المرجع الرئيسى"></asp:Label></td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList></td>
         </tr>
         <tr>
        <td>
            <asp:Label ID="Label3" runat="server" Text="البيان"></asp:Label></td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>
      
         </tr>
        <tr>
            <td>    <asp:Button ID="Button1" runat="server" Text="update" OnClick="Button1_Click" />
</td>
            <td>    <asp:Button ID="Button2" runat="server" Text="delete" OnClick="Button2_Click" />
</td>
           
        </tr>
         
                </tfoot>
              </table>
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
    </section>
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
     <%-- <table class="grid">
        <tr>
            <td></td>
            <td><asp:Label ID="Label4" runat="server" Text="المرجع الفرعي للسندات"></asp:Label></td>
            <td></td>
        </tr>
    <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Text="الرقم"></asp:Label></td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
        <td>
            <asp:Label ID="Label2" runat="server" Text="المرجع الرئيسى"></asp:Label></td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList></td>
         </tr>
         <tr>
        <td>
            <asp:Label ID="Label3" runat="server" Text="البيان"></asp:Label></td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>
        <td></td>
        <td></td>
         </tr>
        <tr>
            <td>    <asp:Button ID="Button1" runat="server" Text="update" OnClick="Button1_Click" />
</td>
            <td>    <asp:Button ID="Button2" runat="server" Text="delete" OnClick="Button2_Click" />
</td>
              <td></td>
            <td></td>
        </tr>
</table>--%>




</asp:Content>
