
<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="chart_ac.aspx.cs" Inherits="mid.chart_ac" EnableTheming="False" StylesheetTheme="" Theme="" %>

        <asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

        <section>
        <div class="container ">
            <div class="input-group mb-3 row">
                <div class="input-group-prepend col-sm-1">
                  <span class="input-group-text" id="basic-addon1">اسم الشركة</span>
                </div>
                <div class="col-sm-6">
                    <select class="form-control form-control-lg ">
                        <option>اختر ....</option>
                        <option  value=""> first company</option>
                        <option  value=""> first company</option>
                        <option  value=""> first company</option>
                      </select>
                </div>
            </div>

            <div dir="ltr" class="row">
            <ul class="nav nav-pills " >
                <li class="nav-item btn">
                    <button type="button" class="btn btn-info">Info</button>
                </li>
                <li class="nav-item btn">
                    <button type="button" class="btn btn-danger">Danger</button>
                </li>
                <li class="nav-item btn">
                    <button type="button" class="btn btn-success">Success</button>
                </li>
                <li class="nav-item btn">
                    <button type="button" class="btn btn-primary">Primary</button>
                </li>
                </ul>
            </div>
            
            <form class="form-inline container" action="/action_page.php">
                <div class="row">
                    <div class="col-md-6">
                        <div class="row">
                            <label class="col-md-3">رقم الحساب</label>
                            <input type="text" class="col-md-3">

                            <label class="col-md-3">رقم المستوى</label>
                            <input type="text" class="col-md-3">
                        </div>
                        
                        <br>
                        <div class="row">
                            <label class="col-md-3">اسم الحساب</label>
                            <input type="text" class="col-md-9">
                        </div>
                        <br>
                        <div class="row">
                            <label class="col-md-3">En</label>
                            <input type="text" class="col-md-9">
                        </div>
                        <br>
                        <div class="row">
                            <label class="col-md-3">بند الميزانيه</label>
                            <select name="" class="col-md-6 offset-1 m-2 form-control">
                                <option>fgf</option>
                            </select>
                            <input type="text" class="col-md-2 form-control">
                        </div>
                        <br>
                        <div class="row">
                            <label class="col-md-3">قائمة الدخل</label>
                            <select name="" class="col-md-6 offset-1 m-2 form-control">
                                <option>fgf</option>
                            </select>
                            <br>
                            <input type="text" class="col-md-2 form-control">
                        </div>
                        <br>
                        <div class="row form-group">
                            <input type="checkbox" class="col-md-1">
                            <label class="col-md-2">مركز تكلفة</label>
                            <select name="" class="col-md-6 offset-1 m-2 form-control">
                                <option>fgf</option>
                            </select>
                            <input type="text" class="col-md-2 form-control">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group" style="display: flex;justify-content: space-between;">
                            <label >نوع المستوى</label>
                            <input  type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
                            <label >رئيسى</label>
                            <input  type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
                            <label >فرعى</label>
                        </div>
                        <br>
                        <div class="form-group" style="display: flex;justify-content: space-between;">
                            <label >طبيعة الحساب</label>
                            <input type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
                            <label >دائن</label>
                            <input  type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
                            <label >مدين</label>
                        </div>
                        <br>
                        <div class="form-group" style="display: flex;justify-content: space-between;">
                            <label>أول المدة مدين</label>
                            <input type="text" name="inlineRadioOptions" id="inlineRadio1">
                        </div>
                        <br>
                        <div class="form-group" style="display: flex;justify-content: space-between;">
                            <label>أول المدة دائن</label>
                            <input type="text" name="inlineRadioOptions" id="inlineRadio1" >
                        </div>
                        <br>
                        <div class="form-group" style="display: flex;justify-content: space-between;">
                            <label>رصيد تقديرى</label>
                            <input type="text" name="inlineRadioOptions" id="inlineRadio1">
                        </div>
                    
                    </div>
                </div>
            </form>
        </div>
    </section>






    <%-- <script type = "text/javascript">
      function Confirm() {
          var confirm_value = document.createElement("INPUT");
          confirm_value.type = "hidden";
          confirm_value.name = "confirm_value";
          if (confirm("Do you want to save data?")) {
              confirm_value.value = "Yes";
          } else {
              confirm_value.value = "No";
          }
          document.forms[0].appendChild(confirm_value);
      }
    </script>--%>

    <%--<div class="modal-dialog" style="width:55%;">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h4 class="modal-title" id="custom-width-modalLabel">حذف سجل</h4>
                </div>
                <div class="modal-body">
                    <h4>هل انت متأكد من الحذف؟</h4>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default waves-effect remove-data-from-delete-form" data-dismiss="modal">اغلاق</button>
                    <button type="submit" class="btn btn-danger waves-effect waves-light" admin+="">حذف</button>
                </div>
            </div>
        </div>--%>

    <div class="modal fade" tabindex="-1" id="loginModal"
                data-keyboard="false" data-backdrop="static">
                <div class="modal-dialog" style="width:55%">
                    <div class="modal-content" style="direction: ltr;">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" style="margin-right: 75%;">
                                &times;
                            </button>
                            <h4 class="modal-title">حذف سجل</h4>
                            <%--<h4 class="modal-title">Login</h4>--%>
                        </div>
                        <div class="modal-body">
                            <%--<form>--%>
                                <h4 style="margin-left: 59%;">هل انت متأكد من الحذف؟</h4>
                                <%-- <div class="form-group">
                        <label for="inputUserName">Username</label>
                        <input class="form-control" placeholder="Login Username"
                                type="text" id="inputUserName" />
                    </div>
                    <div class="form-group">
                        <label for="inputPassword">Password</label>
                        <input class="form-control" placeholder="Login Password"
                                type="password" id="inputPassword" />
                    </div>--%>
                            <%--</form>--%>
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


    <ol class="breadcrumb">
        <h1 style="padding-left: 750px;"><small>البيانات الأساسية > دليل الحسابات </small></h1>
    </ol>
    <div style="margin:0 0 2% 55%">
        <asp:Label ID="Label2" runat="server" Text="اسم الشركة"></asp:Label>
            <asp:DropDownList ID="DropDownList4" runat="server">
                <asp:ListItem>--اختر--</asp:ListItem>
            </asp:DropDownList>
        </div>
    <div class="wrapper" id="app" style="float: left; width: 100%; margin-right: 30px;">
        <div style="direction: rtl; padding: 10px 10px 10px 58px">

            <%--<asp:TextBox Style="height: 25px;" ID="TextBox1" runat="server" Enabled="False"></asp:TextBox>

            <asp:TextBox Style="height: 25px;margin-left: 3.7%;" ID="TextBox2" runat="server" Enabled="False"></asp:TextBox>--%>

            <%--<asp:Button ID="Button1" Style="padding: 3px;" class="btn btn-primary" runat="server" Text="بحث" OnClick="Button1_Click" />--%>

            <%--<asp:Label ID="Label1" runat="server" Text="البيان المختار"></asp:Label>--%>

            <%--<asp:TextBox ID="TextBox3" runat="server" Enabled="False"></asp:TextBox>
            <asp:TextBox ID="TextBox4" runat="server" Enabled="False"></asp:TextBox>--%>

            <asp:Button ID="Button2" runat="server" Text="إضافة" OnClick="Button2_Click" Style="margin-right: 40px;background-color: dodgerblue;" class="btn btn-success"/>

            <asp:Button ID="Button1" runat="server" Text="تعديل" OnClick="Button1_Click" class="btn btn-primary" style="background-color: green;" />

            <%--<asp:button ID="Button5" runat="server" AutoPostBack="false" Text="حذف" data-target="#loginModal" data-toggle="modal" class="btn btn-warning"></asp:button>--%>
            <asp:HyperLink ID="HyperLink1" runat="server" class="btn btn-primary" data-target="#loginModal" data-toggle="modal" href="#" style="background-color: darkred;">حذف</asp:HyperLink>
            <%--<a href="#" class="btn btn-primary" data-target="#loginModal" data-toggle="modal"> حذف </a>--%>

            <%--OnClientClick="Confirm()"--%>

            <asp:Button ID="Button3" runat="server" Text="تقرير" OnClick="Button3_Click" class="btn btn-dark" style="margin-left: 17.7%;background-color: lightseagreen;" />

        </div>


      <%--  <div>
            <asp:TreeView ID="TreeView1" runat="server" OnTreeNodePopulate="TreeView1_TreeNodePopulate" Font-Bold="False" Font-Size="Medium" OnSelectedNodeChanged="TreeView1_SelectedNodeChanged" ShowLines="True" Style="font-size: Medium;font-weight: normal;position: absolute;border: 1px solid #5423B5;min-height: 440px;min-width: 77%;" NodeWrap="True">
            </asp:TreeView>



        </div>--%>

        <div class="row" style="height: 875px;">
            <div class="col-xs-12" style="width: 70%; margin-right: 275px;">
                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title"></h3>
                    </div>
                    <!-- /.box-header -->

                    <%--<div style="margin-right:20px">
                <asp:TreeView ID="TreeView1" runat="server" OnTreeNodePopulate="TreeView1_TreeNodePopulate" Font-Bold="False" Font-Size="Medium" OnSelectedNodeChanged="TreeView1_SelectedNodeChanged" ShowLines="True">
                </asp:TreeView>
            </div>--%>





                        <div class="box-body">
                            <table id="example2" class="table table-borderless" style="margin-right: -11%;">
                                <thead>
                                </thead>
                                <tbody>
                                    <tr>

                                        <td>رقم الحساب</td>
                                        <td>
                                            <asp:TextBox ID="TextBox5" runat="server" Style="width: 150px; margin-right: -114px;" Enabled="false"></asp:TextBox>
                                        </td>

                                        <td style="position: absolute; margin: 0 -35px">رقم المستوي</td>
                                        <td>
                                            <asp:TextBox ID="TextBox9" runat="server" Style="width: 39px; margin: 0px 1px; position: absolute;" Enabled="false"></asp:TextBox>
                                        </td>

                                        <td style="position: absolute; margin: 0 22px">نوع المستوى</td>
                                        <td>
                                            <%--<asp:DropDownList ID="DropDownList1" runat="server" Style="width: 150px">
                                                <asp:ListItem Value="0">رئيسى</asp:ListItem>
                                                <asp:ListItem Value="1">فرعى</asp:ListItem>
                                            </asp:DropDownList>--%>

                                            <asp:RadioButtonList ID="RadioButtonList1" runat="server" Style="width: 120px; display: flex; margin: 6px 209px;" RepeatDirection="Horizontal" RepeatLayout="Flow" Width="50px">
                                                <%--Style="position: absolute; margin: -2% 50%; display: flex;"--%>
                                                <asp:ListItem Value="0">رئيسي</asp:ListItem>
                                                <asp:ListItem Value="1">فرعي</asp:ListItem>
                                            </asp:RadioButtonList>


                                        </td>
                                    </tr>


                                    <tr>

                                        <td>اسم الحساب عربى</td>
                                        <td>
                                            <asp:TextBox ID="TextBox6" runat="server" Style="width: 300px; margin: 0 -152px; position: absolute;" Enabled="false"></asp:TextBox>
                                        </td>
                                    </tr>

                                    <tr>

                                        <td>EN</td>
                                        <td>
                                            <asp:TextBox ID="TextBox7" runat="server" Style="width: 300px; margin: 0 -152px; position: absolute;" Enabled="false"></asp:TextBox>
                                        </td>

                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:CheckBox ID="CheckBox1" runat="server" Text="مركز تكلفه" style="width:200px" Enabled="false"/></td>
                                        <td>
                                            <asp:DropDownList ID="DropDownList2" Style="border: 1px solid lightblue; width: 150px; margin: 0 -152px; position: absolute;" runat="server" Enabled="false">
                                            </asp:DropDownList>
                                            </td>
                                        <td>
                                          <asp:TextBox ID="TextBox12" runat="server" style="width: 30px;margin: 0 10px;"></asp:TextBox>
                                           
                                        </td>
                                    </tr>
                                    <%--<tr>
                                        
                                        <td>
                                            <asp:TextBox ID="TextBox4" runat="server" Style="width: 30px; margin: 0 -135px; position: absolute;" ></asp:TextBox>

                                        </td>
                                        <td></td>
                                    </tr>--%>

                                    <tr>
                                        <td>بند الميزانيه</td>
                                        <td>
                                            <asp:DropDownList ID="DropDownList3" Style="border: 1px solid lightblue; height:30px; width: 150px ;margin: 0 -152px;
                                                 position: absolute;" runat="server" Enabled="false"></asp:DropDownList>
                                         </td>
                                        <td>   <asp:TextBox ID="TextBox2" runat="server" style="width: 30px;margin: 0 10px;"></asp:TextBox>
                                        </td>

                                    </tr>

                                     <tr>
                                        <td>قائمة الدخل</td>
                                        <td>
                                            <asp:DropDownList ID="DropDownList1" Style="border: 1px solid lightblue; width: 150px ;margin: 0 -152px;
                                             position: absolute;" runat="server" Enabled="false"></asp:DropDownList>
                                        </td>
                                         <td>
                                            <asp:TextBox ID="TextBox3" runat="server" style="width: 30px;margin: 0 10px;"></asp:TextBox>
                                        </td>

                                    </tr>

                                </tbody>
                                <tfoot style="width: 28%; position: absolute;margin: -232px 522px;">
                                    <tr>
                                        <td>طبيعة الحساب</td>
                                        <td>
                                            <asp:RadioButtonList ID="RadioButtonList2" runat="server" Style="width: 90px; display: flex; margin: 6px 50px;" RepeatDirection="Horizontal" RepeatLayout="Flow" Width="50px">
                                                <asp:ListItem Value="0">دائن</asp:ListItem>
                                                <asp:ListItem Value="1">مدين</asp:ListItem>
                                            </asp:RadioButtonList>
                                            <%-- <asp:DropDownList ID="DropDownList4" Style="border: 1px solid lightblue; width: 150px" runat="server">
                                                    <asp:ListItem Value="0">دائن</asp:ListItem>
                                                    <asp:ListItem Value="1">مدين</asp:ListItem>

                                                </asp:DropDownList>--%>
                                        </td>
                                    </tr>
                                    <tr>

                                        <td>اول المده مدين</td>
                                        <td>
                                            <asp:TextBox ID="TextBox8" runat="server" Style="width: 150px" Enabled="false"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>اول المده دائن</td>
                                        <td>
                                            <asp:TextBox ID="TextBox10" runat="server" Style="width: 150px" Enabled="false"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            رصيد تقديري
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox1" runat="server" Style="width: 150px" Enabled="false"></asp:TextBox>
                                        </td>
                                    </tr>
                                </tfoot>
                                <tr>
                                    <td></td>
                                    <td>
                                        <asp:TextBox ID="TextBox11" Visible="false" runat="server"></asp:TextBox>
                                    </td>
                                </tr>

                               <%-- <tr>

                                    <td>
                                        <asp:Button ID="Button5" Style="margin: -3px 80%; border: none; background-color: #007bff; width: 57px;" runat="server" Text="حفظ" OnClick="Button1_Click" />
                                    </td>
                                    <td>
                                        <asp:Button ID="Button6" Style="border: none; margin: -3px -95% 0 0; background-color: #F00; width: 52px" runat="server" Text="تراجع" OnClick="Button2_Click" />

                                    </td>
                                </tr>--%>
                            </table>
                        </div>
                        <div>

                            <br />
                            <br />

                        </div>
                        <div style="position: absolute; margin: -27% -45%;">
                            <%--<asp:HyperLink ID="HyperLink1" runat="server" ></asp:HyperLink>--%>
                           <%-- <asp:Button ID="Button7" runat="server" Width="25%" Text="دليل الحسابات" onclick="Button7_Click"/>
                            <asp:TextBox Style="height: 25px; width: 23%;" ID="TextBox12" runat="server" Enabled="False"></asp:TextBox>

                            <asp:TextBox Style="height: 25px; width: 23%;" ID="TextBox13" runat="server" Enabled="False"></asp:TextBox>--%>
                        </div>
                        <div>
                            <asp:TreeView ID="TreeView1" runat="server" OnTreeNodePopulate="TreeView1_TreeNodePopulate" Font-Bold="False" Font-Size="Medium" OnSelectedNodeChanged="TreeView1_SelectedNodeChanged" ShowLines="True" EnableTheming="True" Style="font-size: Medium;height: 100%; font-weight: normal; position: absolute; border: 1px solid #5423B5; margin: -338px -521px;margin-right: -262px; min-height: 265px; width: 23.1%; word-wrap: break-word; top: 47%;" BorderStyle="None" >
                            </asp:TreeView>
                        </div>
                        <div>
                            <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped" BackColor="White" Style="font-size: 12px; margin: -43px -155px; text-align:center;border-color: #5bc0de;"></asp:GridView>



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
        <%--<div style="width: 100px; position: center; height: 1500px; justify-content: center; width: 100%; padding-left: 55px; padding-right: 300px; text-align: center;">
                <asp:GridView ID="GridView1" BackColor="White" CssClass="table table-striped" Style="direction: ltr; font-size: 14px;" GridLines="None" runat="server" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging" >
                    <Columns>
                        <asp:HyperLinkField DataNavigateUrlFields="رقم_الحساب" ControlStyle-BackColor="Green" ControlStyle-ForeColor="White" ControlStyle-CssClass="p-2" DataNavigateUrlFormatString="update_chart_ac.aspx?no={0}" HeaderText="تعديل" NavigateUrl="~/update_chart_ac.aspx" Text='<i class="fa fa-edit"></i>' />
                   
                        
                        
                        <asp:HyperLinkField DataNavigateUrlFields="رقم_الحساب" ControlStyle-BackColor="red" ControlStyle-ForeColor="White" ControlStyle-CssClass="p-2" DataNavigateUrlFormatString="update_chart_ac.aspx?no={0}" HeaderText="حذف" NavigateUrl="~/update_chart_ac.aspx" Text='<i class="fa fa-trash"></i>' />
                        
                        
                        
                        
                        
                        
                         </Columns>

                </asp:GridView>--%>
    
    








</asp:Content>
