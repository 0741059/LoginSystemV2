<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Login.aspx.vb" Inherits="LoginSystemV2.Login" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Log In</title>
    <link rel="stylesheet" href="/Content/Site.css" type="text/css" />
</head>
<body>
    <div class="login">
        <div class="wrapper">
            <div class="title">Log In</div>
    <form id="form1" runat="server">        
        <div class="field">
           
                                   
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            <label>User Name</label>
                    <asp:RequiredFieldValidator class="valid" ForeColor="Red" ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="*Enter User Name"></asp:RequiredFieldValidator>
                         
            </div>
            <div class="field">                   
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                <label>Password</label>
                    <asp:RequiredFieldValidator class="valid" ForeColor="Red" ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="*Enter Password"></asp:RequiredFieldValidator>
                     
                </div>
           <div>&nbsp;</div>
            <div class="field">            
                    <asp:Button ID="Button1" runat="server" OnClick="Login" Text="Submit" Type="submit"/>
            </div>
        <asp:Label ID="Label1" runat="server" Text="Create an Account?"></asp:Label>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Register.aspx">Register</asp:HyperLink>
        <p>
            <asp:Label ID="Label2" runat="server"></asp:Label>
        </p>
    </form>
    </div>
</body>
</html>
