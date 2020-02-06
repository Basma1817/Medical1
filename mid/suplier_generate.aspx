<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="suplier_generate.aspx.cs" Inherits="mid.suplier_generate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

 <ol class="breadcrumb">
        <h1 style="padding-left: 717px;"><small>البيانات الاساسيه > تقاريرالموردين</small></h1>
    </ol>

    <hr />

    <div style="width: 100%;">
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/Treetog-Junior-Printer.ico" Style="width: 3%; margin-left: 140px;" OnClick="ImageButton1_Click" /> <%--OnClientClick="window.open('cstmReports.aspx','_blank')"--%>
    </div>

    <hr />

    <div style="float: right; width: 33%;" dir="rtl">
        <fieldset style="text-align: justify; margin: 65px;">
            <legend style="position: absolute; margin: -38px -10px;">قائمة العملاء</legend>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" BorderColor="Black" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" AutoPostBack="True" style="font-size:20px">
                <asp:ListItem>الفرع</asp:ListItem>
                <asp:ListItem>تصنيف المورد</asp:ListItem>
             
            
                <%--<asp:ListItem>التصنيف</asp:ListItem>--%>
            </asp:RadioButtonList>
        </fieldset>

    </div>

    <div style="float: right; width: 33%; direction: rtl">
        <fieldset style="text-align: justify; margin: 65px;">
            <legend style="position: absolute; margin: -38px -10px;">تقارير العملاء</legend>
            <asp:RadioButtonList ID="RadioButtonList2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList2_SelectedIndexChanged" style="font-size:20px">
                <asp:ListItem>حد الائتمان</asp:ListItem>
                <asp:ListItem>قائمة الموردين</asp:ListItem>
    
            </asp:RadioButtonList>
        </fieldset>

    </div>

    <div style="float: right; width: 33%; direction: rtl">
        <fieldset style="text-align: justify; margin: 65px;">
            <legend style="position: absolute; margin: -38px -10px;">حالة العملاء</legend>
            <asp:RadioButtonList ID="RadioButtonList3" runat="server" AutoPostBack="True" style="font-size:20px">
                <asp:ListItem>فعال</asp:ListItem>
                <asp:ListItem>غير فعال</asp:ListItem>
                <asp:ListItem>الكل</asp:ListItem>
            </asp:RadioButtonList>
        </fieldset>

    </div>

    <div style="width: 100%; position: inherit; margin: 176px 240px; direction: ltr">



        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>

    </div>

    <div style="width: 100%; position: inherit; margin: -135px 240px; direction: ltr">

        <asp:TextBox ID="TextBox2" runat="server" Style="margin-bottom: 10px;"></asp:TextBox>
        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged"></asp:DropDownList>
        <asp:Label ID="Label2" runat="server" Text=""></asp:Label>

        

        
    </div>


    <div style="width: 100%; position: inherit; margin: -80px 240px; direction: ltr">
        <asp:TextBox ID="TextBox3" runat="server" Style="margin-bottom: 10px;"></asp:TextBox>
        <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" style="height:30px;"></asp:DropDownList>
        <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
    </div>




























</asp:Content>
