<%@ Page Title="" Language="C#" MasterPageFile="~/WebSite.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="TechWeb.LoginPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="navigation" runat="server">

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contents" runat="server">
    <div class="fields">
        <div class="field">
            <input type="text" name="txtemail" id="email" placeholder="Email-" runat="server" />
        </div>
        <div class="field">
            <input type="password" name="txtpass" id="pass" placeholder="Password" runat="server" />
        </div>                            
    </div>

    <ul class="actions">
    <li>
        <asp:Button ID="BtnLogIn" runat="server" type="login" Text="Log In" class="primary" OnClick="BtnLogIn_Click" />
    </li>
        <li>
            <h5>Did you <asp:HyperLink ID="passrecover" ForeColor="Blue" runat="server">forget you password?</asp:HyperLink>
            </h5>
    </li>
                                 
</ul>
</asp:Content>
