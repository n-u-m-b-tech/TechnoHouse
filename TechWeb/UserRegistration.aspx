<%@ Page Title="User Registration" Language="C#" MasterPageFile="~/WebSite.Master" AutoEventWireup="true" CodeBehind="UserRegistration.aspx.cs" Inherits="TechWeb.UserRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/Login.css" rel="stylesheet" />
    <link href="css/Register.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="navigation" runat="server">

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contents" runat="server">
       <div class="register-box">
           <h1>Create an account</h1>
            <div class="textbox">          
                <input type="text" name="txttitle" id="title" placeholder="Title" runat="server" maxlength="5" min="2" /><asp:RequiredFieldValidator ID="idrequire" runat="server" ErrorMessage="*" ControlToValidate="title"></asp:RequiredFieldValidator>
                <input type="text" name="txtname" id="name" placeholder="Full Name" runat="server" /><asp:RequiredFieldValidator ID="namerequire" runat="server" ErrorMessage="*" ControlToValidate="name"></asp:RequiredFieldValidator>
                <input type="text" name="txtsurname" id="surname" placeholder="Last Name" runat="server" /><asp:RequiredFieldValidator ID="surnamerequire" runat="server" ErrorMessage="*" ControlToValidate="surname"></asp:RequiredFieldValidator>
                <br />
                <br />

                <div>
                    <input type="text" name="txtemail" id="email" placeholder="Email" runat="server" class="auto-style2" /><asp:RequiredFieldValidator ID="emailrequitre" runat="server" ErrorMessage="*" ControlToValidate="email"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="regexprss" runat="server" ErrorMessage="Invalid Email Address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="email"></asp:RegularExpressionValidator>
                    <input type="text" name="txtconfirmmail" id="mailcom" placeholder="Confirm Email" runat="server" class="auto-style2" /><asp:RequiredFieldValidator ID="confirmrequire" runat="server" ErrorMessage="*" ControlToValidate="mailcom"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="mailcompr" runat="server" ErrorMessage="Emails Don't Match" ControlToCompare="email" ControlToValidate="mailcom"></asp:CompareValidator>
                </div>

                <div>
                    <input type="text" name="txtusername" id="username" placeholder="UserName" runat="server" class="auto-style9" /><asp:RequiredFieldValidator ID="userrequire" runat="server" ErrorMessage="*" ControlToValidate="username"></asp:RequiredFieldValidator>
                    <input type="password" name="txtpass" id="pass" placeholder="Password" runat="server" class="auto-style10" /><asp:RequiredFieldValidator ID="passrequire" runat="server" ErrorMessage="*" ControlToValidate="pass"></asp:RequiredFieldValidator>
                    <br />
                    <input type="password" name="txtconfirm" id="confirm" placeholder="Confirm Password" runat="server" class="auto-style11" /><asp:RequiredFieldValidator ID="passconfirmrequire" runat="server" ErrorMessage="*" ControlToValidate="confirm"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="passcomprr" runat="server" ErrorMessage="Passwords Don't Match" ControlToCompare="pass" ControlToValidate="confirm"></asp:CompareValidator>
                </div>

            </div>
            <div class="textbox">
                <input type="text" name="txtadd1" id="add1" placeholder="Address Line1" runat="server" class="auto-style13" /><asp:RequiredFieldValidator ID="add1require" runat="server" ErrorMessage="*" ControlToValidate="add1"></asp:RequiredFieldValidator>                                   
                <input type="text" name="txtadd2" id="add2" placeholder="Address Line2" runat="server" class="auto-style12" /><asp:RequiredFieldValidator ID="add2require" runat="server" ErrorMessage="*" ControlToValidate="add2"></asp:RequiredFieldValidator>
                <div>
                    <input type="text" name="txtcity" id="city" placeholder="City" runat="server" class="auto-style3" /><asp:RequiredFieldValidator ID="cityrequire" runat="server" ErrorMessage="*" ControlToValidate="city"></asp:RequiredFieldValidator>
                    <input type="text" name="txtprov" id="prov" placeholder="Province" runat="server" class="auto-style4" /><asp:RequiredFieldValidator ID="provrequire" runat="server" ErrorMessage="*" ControlToValidate="prov"></asp:RequiredFieldValidator>
                    <input type="text" name="txtzip" id="zip" placeholder="Zip Code" runat="server" class="auto-style8" maxlength="5" /><asp:RequiredFieldValidator ID="ziprequire" runat="server" ErrorMessage="*" ControlToValidate="zip"></asp:RequiredFieldValidator>
                </div>
            </div>
                <asp:Button ID="BtnRegister" runat="server" type="register" Text="Register" class="btn" OnClick="BtnRegister_Click" />
        </div>
    
</asp:Content>
