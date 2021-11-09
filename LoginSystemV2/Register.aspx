<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Register.aspx.vb" Inherits="LoginSystemV2.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
    <link rel="stylesheet" href="/Content/Site.css" type="text/css" />
</head>
<body>
    <div class="register">
        <div class="wrapper">

            <div class="title">Register</div>

            <form id="form1" runat="server">

                <div class="field">
                    <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                    <label>First Name</label>
                    <asp:RequiredFieldValidator class="valid" ForeColor="Red" ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFirstName" ErrorMessage="*Enter First Name"></asp:RequiredFieldValidator>
                </div>

                <div class="field">
                    <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                    <label>Last Name</label>
                    <asp:RequiredFieldValidator class="valid" ForeColor="Red" ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLastName" ErrorMessage="*Enter Last Name"></asp:RequiredFieldValidator>
                </div>

                <div class="field">
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    <label>Email</label>
                    <asp:RequiredFieldValidator class="valid" ForeColor="Red" ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmail" ErrorMessage="*Enter Email"></asp:RequiredFieldValidator>
                </div>

                <div class="field">
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                    <label>Password</label>
                    <asp:RequiredFieldValidator class="valid" ForeColor="Red" ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPassword" ErrorMessage="*Enter Password"></asp:RequiredFieldValidator>
                </div>

                <div class="field">
                    <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                    <label>Confirm Password</label>
                    <asp:RequiredFieldValidator class="valid" ForeColor="Red" ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtConfirmPassword" ErrorMessage="*Confirm Your Password"></asp:RequiredFieldValidator>


                </div>
                <asp:CompareValidator class="valid" ForeColor="Red" ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" ErrorMessage="*Passwords Must Match"></asp:CompareValidator>
                <div>
                    <asp:CheckBox ID="CheckBox1" runat="server" Text=" I Accept the Terms of Use &amp; Privacy Policy" />
                    <asp:Label class="valid" ID="Label2" runat="server"></asp:Label>
                </div>

                <div class="field">
                    <asp:Button ID="Button1" runat="server" OnClick="Register" Text="Submit" Type="submit" />
                </div>

                <asp:Label ID="Label1" runat="server" Text="Already have an Account?"></asp:Label>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx">Log In</asp:HyperLink>

                <p>
                    
                </p>
            </form>
        </div>
    </div>

</body>
</html>



