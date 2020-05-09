<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CitizenRegistration.aspx.cs" Inherits="Client_CitizenRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
         .auto-style2 {
            text-align: left;
            margin-left: 0px;
        }
        .auto-style3 {
            font-style: italic;
            text-align: right;
            width: 315px;
        }
         .auto-style4 {
            font-size: x-large;
        }
         .auto-style9 {
           
            float: none;
             width: 30%;
            /*width: 320px;*/
		height: 250px;
	    width: 650px;
	/*position: absolute;*/
	top: 50%;
    left: 50%;
	/*transform: translateX(-30%) translateY(0%);*/
	background: rgba(255, 255, 255, 0.5);
	padding: 20px;
	border: 1px solid #ffd800;
	box-shadow: 0 0 8px 3px #ffd800;
        }


        .auto-style10 {
        }
         a 
        {
            text-decoration:dotted;
            font-size:15px;
            line-height:20px;
            color:#ffc107;
        }
         a:hover 
       {    
            color:#81e219;
       }


        .auto-style11 {
            color: #990000;
            text-align: center;
        }


        .auto-style12 {
            width: 315px;
        }


    </style>
         	<!-- css files -->
    <link rel="stylesheet" href="wow/css/animate.css" />
	<link rel="stylesheet" href="css/bootstrap.css" /> <!-- Bootstrap-Core-CSS -->
	<link rel="stylesheet" href="css/style.css" type="text/css" media="all" /> <!-- Style-CSS --> 
	<link rel="stylesheet" href="css/fontawesome-all.css" /> <!-- Font-Awesome-Icons-CSS -->
	<!-- //css files -->
	
	<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="all" /><!-- for testimonials -->

	<!--web font-->
	<link href="http://localhost:3260/fonts.googleapis.com/css?family=Source+Sans+Pro:200,200i,300,300i,400,400i,600,600i,700,700i,900,900i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet" />
	<!--//web font-->


</head>
<body>
    <form id="form1" runat="server">
        </br>
        <br />
        <h1 class="auto-style11"><strong><em>Register Here</em></strong></h1>
    <div class="animated bounceIn" >

    
        <br />
        <table align="center" class="auto-style9">
             <tr>
                <td class="auto-style12">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Enter User Name<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" CssClass="auto-style4" ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
                <td class="text-center">
                    <asp:TextBox ID="txtName" runat="server"  placeholder="Enter User Name" CausesValidation="True" class="form-control"></asp:TextBox>
                
                    <b>
                
                    <br />
                
                    </b>
                
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Enter Email Id<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtEmail" CssClass="auto-style4" ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
                <td class="text-center">
                    <asp:TextBox ID="txtEmail" runat="server" placeholder="Email ID" CausesValidation="True" class="form-control"></asp:TextBox>
                    <b>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="* Enter a valid email id" ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </b>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Enter Birthdate<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtBdate" CssClass="auto-style4" ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
                <td class="text-center">
                    <asp:TextBox ID="txtBdate" runat="server" placeholder="Enter Birthdate" Type="date" CausesValidation="True" class="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Select Gender<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="gender" CssClass="auto-style4" ErrorMessage=" *" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="text-center">
                     <asp:RadioButtonList ID="gender" runat="server" RepeatDirection="Horizontal" CssClass="auto-style2" TabIndex="1" TextAlign="Left">
                        <asp:ListItem Value="Male">Male</asp:ListItem>
                        <asp:ListItem Value="Female">Female</asp:ListItem>
                        </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Entre Mobile Number<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtMobileNo" CssClass="auto-style4" ErrorMessage=" *" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="text-center">
                    <asp:TextBox ID="txtMobileNo" runat="server"  placeholder="Enter Mobile Number" CausesValidation="True" class="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Enter Password<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtpassword" CssClass="auto-style4" ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
                <td class="text-center">
                    <asp:TextBox ID="txtpassword" runat="server"  TextMode="Password" name="password" class="form-control"  placeholder="Password" CausesValidation="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Enter Confirm Password
                    <br /><asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpassword" ControlToValidate="confirm_password" ErrorMessage="* Both Password must be same" ForeColor="#FF3300"></asp:CompareValidator>
                </td>
                <td class="text-center">
                    <asp:TextBox ID="confirm_password" runat="server" class="form-control"  TextMode="Password" name="confirm_password" placeholder="Confirm Password"></asp:TextBox>
                </td>
            </tr>
           
            
            <tr>
               <td class="auto-style10" colspan="2">   

                   <table align="center" class="w-50">
                       <tr>
                           <td> <asp:Button ID="txtRegister" class="btn btn-outline-info btn-rounded btn-block my-4 waves-effect z-depth-0 btn-primary" runat="server" Text="Register" OnClick="txtRegister_Click" />
            </td>
                       </tr>
                       
                   </table>

                  </tr>
            <tr>
                <td class="auto-style12">   Already Have an account???<a href="startPage.aspx">Click Here</a></td>
                <td>&nbsp;</td>
            </tr>
        </table>

    
    </div>
        <br />
        <br />
        <br />
    </form>
</body>
</html>
