<%@ Page Title="Editting User Details" Language="C#" MasterPageFile="~/WebSite.Master" AutoEventWireup="true" CodeBehind="EditUser.aspx.cs" Inherits="TechWeb.EditUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="navigation" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contents" runat="server">
    <div class="fields">
            <div class="field"> 
                <h3><i>Full Name</i></h3>
                <input type="text" name="txttitle" id="title" placeholder="Title" runat="server" maxlength="5" min="2" /><asp:RequiredFieldValidator ID="idrequire" runat="server" ErrorMessage="*" ControlToValidate="title"></asp:RequiredFieldValidator>
                <input type="text" name="txtname" id="name" placeholder="Full Name" runat="server" /><asp:RequiredFieldValidator ID="namerequire" runat="server" ErrorMessage="*" ControlToValidate="name"></asp:RequiredFieldValidator>
                <input type="text" name="txtsurname" id="surname" placeholder="Last Name" runat="server" /><asp:RequiredFieldValidator ID="surnamerequire" runat="server" ErrorMessage="*" ControlToValidate="surname"></asp:RequiredFieldValidator>
                <br />
                <h3>Physical Address</h3>
                <input type="text" name="txtadd1" id="add1" placeholder="Address Line1" runat="server" class="auto-style13" /><asp:RequiredFieldValidator ID="add1require" runat="server" ErrorMessage="*" ControlToValidate="add1"></asp:RequiredFieldValidator>
                                     
                <br />
                                     
                <br />
                <input type="text" name="txtadd2" id="add2" placeholder="Address Line2" runat="server" class="auto-style12" /><asp:RequiredFieldValidator ID="add2require" runat="server" ErrorMessage="*" ControlToValidate="add2"></asp:RequiredFieldValidator>
                <br />
                <br />
                <input type="text" name="txtcontact" id="contact" placeholder="Contact" runat="server" class="auto-style3" />
                <input type="text" name="txtcity" id="city" placeholder="City" runat="server" class="auto-style3" /><asp:RequiredFieldValidator ID="cityrequire" runat="server" ErrorMessage="*" ControlToValidate="city"></asp:RequiredFieldValidator>
                <input type="text" name="txtprov" id="prov" placeholder="Province" runat="server" class="auto-style4" /><asp:RequiredFieldValidator ID="provrequire" runat="server" ErrorMessage="*" ControlToValidate="prov"></asp:RequiredFieldValidator>
                <input type="text" name="txtzip" id="zip" placeholder="Zip Code" runat="server" class="auto-style8" maxlength="5" /><asp:RequiredFieldValidator ID="ziprequire" runat="server" ErrorMessage="*" ControlToValidate="zip"></asp:RequiredFieldValidator>
                <br />
                <br />
                <h3>Email Address</h3>
                <input type="text" name="txtemail" id="email" placeholder="Email" runat="server" class="auto-style2" /><asp:RequiredFieldValidator ID="emailrequitre" runat="server" ErrorMessage="*" ControlToValidate="email"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="regexprss" runat="server" ErrorMessage="Invalid Email Address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="email"></asp:RegularExpressionValidator>
                <br />
                <br />
                <br />
                <br />
                <input type="text" name="txtusername" id="username" placeholder="UserName" runat="server" class="auto-style9" /><asp:RequiredFieldValidator ID="userrequire" runat="server" ErrorMessage="*" ControlToValidate="username"></asp:RequiredFieldValidator>
                <br />
                <br />

                 <input type="text" name="txttyper" id="user_type" placeholder="User Type" runat="server" /><br />
                <br />
                  <input type="text" name="txtActive" id="active" placeholder="Is Active" runat="server" /><asp:RequiredFieldValidator ID="activerequire" runat="server" ErrorMessage="*" ControlToValidate="active"></asp:RequiredFieldValidator>
                </div>

        </div>
    <ul class="actions">
        <li class="auto-style5">
            <asp:Button ID="BtnEdit" runat="server" type="edit" Text="Update" class="primary" OnClick="BtnEdit_Click" />
        </li>
    </ul>
</asp:Content>
