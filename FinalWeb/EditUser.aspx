<%@ Page Title="" Language="C#" MasterPageFile="~/TechnoMaster.Master" AutoEventWireup="true" CodeBehind="EditUser.aspx.cs" Inherits="FinalWeb.EditUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="container bgwhite p-t-35 p-b-80">
		<div class="flex-w flex-sb">
		 <div class="w-size13 p-t-30 respon5">
		  <div class="wrap-slick3 flex-sb flex-w">
            <h1><em>Edit User</em></h1>
                    <br />
                    <br />
                <div>          
                    <input type="text" name="txttitle" id="title" placeholder="Title" runat="server" maxlength="5" min="2" /><asp:RequiredFieldValidator ID="idrequire" runat="server" ErrorMessage="*" ControlToValidate="title"></asp:RequiredFieldValidator><br />
                    <input type="text" name="txtname" id="name" placeholder="Full Name" runat="server" /><asp:RequiredFieldValidator ID="namerequire" runat="server" ErrorMessage="*" ControlToValidate="name"></asp:RequiredFieldValidator>
                    <input type="text" name="txtsurname" id="surname" placeholder="Last Name" runat="server" /><asp:RequiredFieldValidator ID="surnamerequire" runat="server" ErrorMessage="*" ControlToValidate="surname"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                </div>
                <div>
                    <input type="text" name="txtemail" id="email" placeholder="Email" runat="server" class="auto-style2" /><asp:RequiredFieldValidator ID="emailrequitre" runat="server" ErrorMessage="*" ControlToValidate="email"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="regexprss" runat="server" ErrorMessage="Invalid Email Address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="email"></asp:RegularExpressionValidator>
                             <br />
                    </div>

                <div>
                    <input type="text" name="txtusername" id="username" placeholder="UserName" runat="server" class="auto-style9" /><asp:RequiredFieldValidator ID="userrequire" runat="server" ErrorMessage="*" ControlToValidate="username"></asp:RequiredFieldValidator><br />
                    <input type="password" name="txtpass" id="pass" placeholder="Password" runat="server" class="auto-style10" /><asp:RequiredFieldValidator ID="passrequire" runat="server" ErrorMessage="*" ControlToValidate="pass"></asp:RequiredFieldValidator>
                    <input type="password" name="txtconfirm" id="confirm" placeholder="Confirm Password" runat="server" class="auto-style11" /><asp:RequiredFieldValidator ID="passconfirmrequire" runat="server" ErrorMessage="*" ControlToValidate="confirm"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="passcomprr" runat="server" ErrorMessage="Passwords Don't Match" ControlToCompare="pass" ControlToValidate="confirm"></asp:CompareValidator>
                    <br />
                    <br />
                </div>

            <div>
                <input type="text" name="txtadd1" id="add1" placeholder="Address Line1" runat="server" class="auto-style13" /><asp:RequiredFieldValidator ID="add1require" runat="server" ErrorMessage="*" ControlToValidate="add1"></asp:RequiredFieldValidator>                                   
                <input type="text" name="txtadd2" id="add2" placeholder="Address Line2" runat="server" class="auto-style12" /><asp:RequiredFieldValidator ID="add2require" runat="server" ErrorMessage="*" ControlToValidate="add2"></asp:RequiredFieldValidator>                
                    <br />
                    <br />
            </div>
           <div>
                <input type="text" name="txtcity" id="city" placeholder="City" runat="server" class="auto-style3" /><asp:RequiredFieldValidator ID="cityrequire" runat="server" ErrorMessage="*" ControlToValidate="city"></asp:RequiredFieldValidator>
                <input type="text" name="txtprov" id="prov" placeholder="Province" runat="server" class="auto-style4" /><asp:RequiredFieldValidator ID="provrequire" runat="server" ErrorMessage="*" ControlToValidate="prov"></asp:RequiredFieldValidator>
                <input type="text" name="txtzip" id="zip" placeholder="Zip Code" runat="server" class="auto-style8" maxlength="5" /><asp:RequiredFieldValidator ID="ziprequire" runat="server" ErrorMessage="*" ControlToValidate="zip"></asp:RequiredFieldValidator>
                  <br />
                  <br />           
           </div>
                <asp:Button ID="BtnEdit" runat="server" type="register" Text="Update" class="btn" OnClick="BtnEdit_Click" />
          </div>
          <br />
          </div>
          </div>
        </div>

</asp:Content>
