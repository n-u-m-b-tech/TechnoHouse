<%@ Page Title="" Language="C#" MasterPageFile="~/WebSite.Master" AutoEventWireup="true" CodeBehind="SearchUser.aspx.cs" Inherits="TechWeb.SearchUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="navigation" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contents" runat="server">
 <header>
                        <h1 >Edit User</h1>
                    </header>
                    <section>
                              <div class="fields">
                                  <div class="field">
                                      <input type="text" name="email" id="txt" placeholder="Enter User Email" runat="server" class="auto-style1" /><br />
<asp:Button ID="btnEditUser" runat="server" OnClick="btnEditUser_Click" Text="Edit User" style="height: 26px" />
                                  </div>
                               </div>
                    </section>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="BodyContent" runat="server">
</asp:Content>
