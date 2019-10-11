<%@ Page Title="" Language="C#" MasterPageFile="~/TechnoMaster.Master" AutoEventWireup="true" CodeBehind="EditUser.aspx.cs" Inherits="FinalWeb.EditUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="container bgwhite p-t-35 p-b-80">
		<div class="flex-w flex-sb">
		 <div class="w-size13 p-t-30 respon5">
		  <div class="wrap-slick3 flex-sb flex-w">
          
              <h4 class="m-text26 p-b-36 p-t-15">Edit User</h4>	

              <div class="bo4 of-hidden size15 m-b-20">
		      	  <input class="sizefull s-text7 p-l-22 p-r-22" id="title" runat="server" type="text" name="title" placeholder="Tiitle" required="">
              </div>
             <div class="bo4 of-hidden size15 m-b-20">
                  <input class="sizefull s-text7 p-l-22 p-r-22" id="name" runat="server" type="text" name="name" placeholder="Full Name(s)" required="">
             </div>

             <div class="bo4 of-hidden size15 m-b-20">
                 <input class="sizefull s-text7 p-l-22 p-r-22" id="surname" runat="server" type="text" name="surname" placeholder="Surname" required="">
			 </div>

               <div class="bo4 of-hidden size15 m-b-20">
                 <input class="sizefull s-text7 p-l-22 p-r-22" id="contact" runat="server" type="text" name="phone" placeholder="Phone Number(s)" required="">
			   </div>


              <div class="bo4 of-hidden size15 m-b-20">
		      	  <input class="sizefull s-text7 p-l-22 p-r-22" id="add1" runat="server" type="text" name="add1" placeholder="Address Line 1" required="">
                </div> 

              <div class="bo4 of-hidden size15 m-b-20">
                  <input class="sizefull s-text7 p-l-22 p-r-22" id="add2" runat="server" type="text" name="add2" placeholder="Address Line 2" required=""><br />
             </div>

              <div class="bo4 of-hidden size15 m-b-20"> 
                  <input class="sizefull s-text7 p-l-22 p-r-22" id="city" runat="server" type="text" name="city" placeholder="City" required="">
             </div>
                 
              <div class="bo4 of-hidden size15 m-b-20"> 
                 <input class="sizefull s-text7 p-l-22 p-r-22" id="prov" runat="server" type="text" name="prov" placeholder="Province" required="">
           
              </div>

             <div class="bo4 of-hidden size15 m-b-20"> 
                 <input class="sizefull s-text7 p-l-22 p-r-22" id="zip" runat="server" type="text" name="zip" placeholder="Zip Code" required="">
			</div>

               <div class="bo4 of-hidden size15 m-b-20">
		      	  <input class="sizefull s-text7 p-l-22 p-r-22" id="username" runat="server" type="text" name="username" placeholder="Username" required="">
                 </div>

              <div class="bo4 of-hidden size15 m-b-20">
                   <input class="sizefull s-text7 p-l-22 p-r-22" id="email" runat="server" type="text" name="email" placeholder="Email" required=""><br />
                   <asp:RegularExpressionValidator ID="emailValid" runat="server" ErrorMessage="Invalid Email Address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="email"></asp:RegularExpressionValidator>
                  </div>

               <div class="bo4 of-hidden size15 m-b-20">
		      	  <input class="sizefull s-text7 p-l-22 p-r-22" id="type" runat="server" type="text" name="type" placeholder="Personnel Type" required="">
              </div>

               <div class="bo4 of-hidden size15 m-b-20">
                 <input class="sizefull s-text7 p-l-22 p-r-22" id="active" runat="server" type="text" name="active" placeholder="Personnel Still Active?" required="">
			   </div>

              <div class="submit-w3l">
					 <asp:Button ID="BtnEdit" runat="server" Text="Update"  BackColor="#CC0000" BorderColor="#666666" BorderWidth="2px"  Width="220px" OnClick="BtnEdit_Click"/>
			  </div>
          </div>
        </div>
    </div>
      </div>
</asp:Content>
