﻿<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="Register.aspx.cs" Inherits="mid.Register.Register" %>

<!DOCTYPE html>
<html lang="ar" style="direction: rtl" >
<head>
	<title>تسجيل الدخول</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="text/javascript">
        function validate() {
            var txt1 = document.getElementById("TextBox3").value;
            var txt2 = document.getElementById("TextBox4").value;
            if (txt1 == txt2) {

                alert("ERROR!! Password should match");
                return false;
            }
            return true;

        }
    </script>
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
</head>
<body>
	<form runat="server">
	<div class="limiter">
		<div class="container-login100" style="background-image: url('images/admin-img00.jpg');">
			<div class="wrap-login100 p-l-110 p-r-110 p-t-62 p-b-33" style="width: 36%;bottom: -3px;padding: 55px;">
				<form class="login100-form validate-form flex-sb flex-w">
					<div class="p-t-31 p-b-9">
						<span class="txt1">
							الاسم بالكامل
						</span>
					</div>
					<div class="wrap-input100 validate-input" data-validate = "Username is required" >
                        <asp:TextBox ID="TextBox1" class="input100" runat="server" required="true" style="height:25px"></asp:TextBox>
						<span class="focus-input100"></span>
					</div>
					<div class="p-t-31 p-b-9">
						<span class="txt1">
							الايميل
						</span>
					</div>
					<div class="wrap-input100 validate-input" data-validate = "email is required">
                        <asp:TextBox ID="TextBox2" class="input100" runat="server" required="true" type="email" style="height:25px"></asp:TextBox>
						
						<span class="focus-input100"></span>
					</div>
					
					<div class="p-t-13 p-b-9">
						<span class="txt1">
							الرقم السري
						</span>
					</div>
					<div class="wrap-input100 validate-input" data-validate = "Password is required">
                        <asp:TextBox ID="TextBox3" class="input100" runat="server" required="true"
                            type="password" style="height:25px"></asp:TextBox>
						<span class="focus-input100"></span>
                    </div>
					<div class="p-t-13 p-b-9">
						<span class="txt1">
							تاكيد الرقم السري
						</span>
					</div>
                    <div class="wrap-input100 validate-input" data-validate = "Password is required">
                        <asp:TextBox ID="TextBox4" class="input100" runat="server" required="true" type="password" style="height:25px"></asp:TextBox>
						<span class="focus-input100"></span>
					</div>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="خانات الرقم السري غير متطابقة" ControlToCompare="TextBox3" ControlToValidate="TextBox4"></asp:CompareValidator>
					<div class="p-t-13 p-b-9">
						<span class="txt1">
							نوع الصلاحية
						</span>
					</div>
					<div class="wrap-input100 validate-input" data-validate = "Password is required">
                        <asp:DropDownList ID="DropDownList1" runat="server" style="width: 100%;"></asp:DropDownList>
						<span class="focus-input100" style="height:25px"></span>
                    </div>

					<div class="container-login100-form-btn m-t-17">
                        <asp:Button ID="Button1" CssClass="login100-form-btn" runat="server" Text="تسجيل" OnClick="Button1_Click" style="height:37px"/>
					</div>
				</form>
			</div>
             <div class="footer_admin" style="
    width: 100%;
    position: absolute;
    display: flex;
    justify-content: space-around;
    align-items: center;
    margin-top:30%">
    <p class="left" style="float: left ;
    color: #000;
    text-align: center;">
    InfoSas company since 2001
        <br /> <span style="color: red">contact us  </span> infosas.ics@gmail.com <br /> T:01002610620 | T:01003461364 </span> </p>
    <img style="    width: 13%;
    height: 83%;" src="https://ramadanco.com.eg/storage/icon/info.png">
    <p style="float: right;
    direction: rtl;
color: #000;
text-align: center" class="right">
         شركه الاستشارية المتقدمة لنظم المعلومات منذ 2001 <br /><span style="color: red">تواصل معنا</span>  infosas.ics@gmail.com
        <br />ت: 01002610620 |
        ت : 01003461364</span>
    </p>
</div>
		</div>
	</div>
	
</form>
	<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>