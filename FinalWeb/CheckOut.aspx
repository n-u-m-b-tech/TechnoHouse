<%@ Page Title="" Language="C#" MasterPageFile="~/TechnoMaster.Master" AutoEventWireup="true" CodeBehind="CheckOut.aspx.cs" Inherits="FinalWeb.CheckOut" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="flex-w flex-sb">
  <div class="w-size13 p-t-30 respon5">
    <div class="wrap-slick3 flex-sb flex-w">
          <h2>Process payment</h2>
            <h4>Credit/Cheque Card</h4>
                   
            <div class="field">
                <asp:Label ID="lblnumber" runat="server" class="label" Text="Card Number"></asp:Label>
                <br />
                <input type="text" name="txtcard" id="cardnum"  runat="server" />
                <asp:RequiredFieldValidator ID="rqdcardnum" runat="server" ErrorMessage="*" ControlToValidate="cardnum"></asp:RequiredFieldValidator>
            </div>
            <div class="field">
                <asp:Label ID="lblname" runat="server" class="label" Text="Card Holder Name"></asp:Label>
                <br />
                <input type="text" name="txtname" id="name" runat="server" />
                <asp:RequiredFieldValidator ID="rqdholder" runat="server" ErrorMessage="*" ControlToValidate="name"></asp:RequiredFieldValidator>
            </div>
            <div class="dropdown">
                <asp:Label ID="lblmonth" runat="server" class="label" Text="Expiry Month"></asp:Label>
                <br />
                <asp:DropDownList ID="drpdate" runat="server">
                    <asp:ListItem>01 - January</asp:ListItem>
                    <asp:ListItem>02 - February</asp:ListItem>
                    <asp:ListItem>03 - March</asp:ListItem>
                    <asp:ListItem>04 - April</asp:ListItem>
                    <asp:ListItem>05 - May</asp:ListItem>
                    <asp:ListItem>06 - June</asp:ListItem>
                    <asp:ListItem>07 - July</asp:ListItem>
                    <asp:ListItem>08 - August</asp:ListItem>
                    <asp:ListItem>09 - September</asp:ListItem>
                    <asp:ListItem>10 - October</asp:ListItem>
                    <asp:ListItem>11 - November</asp:ListItem>
                    <asp:ListItem>12 - December</asp:ListItem>
                </asp:DropDownList>
                                     
                <asp:RequiredFieldValidator ID="rqdmonth" runat="server" ErrorMessage="*" ControlToValidate="drpdate"></asp:RequiredFieldValidator>
                                     
            </div>
            <br />
            <div class="field">
                <asp:Label ID="lblyear" runat="server" class="label" Text="Expire Year"></asp:Label>
                <br />
                <input type="text" name="txtyear" id="year" runat="server" />
                <asp:RequiredFieldValidator ID="rqdyear" runat="server" ErrorMessage="*" ControlToValidate="year"></asp:RequiredFieldValidator>
            </div>
            <div class="field">
                <asp:CheckBox ID="checksave" Text ="Save my card information" runat="server" />
            </div>
        </div>
    <div class="container-right">
        <p>Confirm your order</p>
            <div class="cart-up" id="confirm" runat="server">
              <asp:Table ID="confirmTable" runat="server" Width="100%">
                  <asp:TableRow>
                      <asp:TableCell>Product Name</asp:TableCell>
                      <asp:TableCell>Unit Price</asp:TableCell>
                      <asp:TableCell>Quantity</asp:TableCell>
                      <asp:TableCell>Total</asp:TableCell>
                  </asp:TableRow>
              </asp:Table>
            </div>
        <div class="deliv-down">
            <p>Delivery </p>
            <div class="field">
                <asp:Label ID="lblship" runat="server" class="label" Text="Choose a shipping method"></asp:Label>
                <br />
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>Standard Shipping - R20</asp:ListItem>
                    <asp:ListItem>Express Shipping - R40</asp:ListItem>
                </asp:DropDownList><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="cardnum"></asp:RequiredFieldValidator>
            </div>
            <br />

                <div class="field">
                <asp:Label ID="lblTutor" runat="server" class="label" Text="Select Tutorial Package"></asp:Label>
                <br />
                <asp:DropDownList ID="drpttu" runat="server">
                    <asp:ListItem>Standard Tutorial - R20</asp:ListItem>
                    <asp:ListItem>Express Turial - R40</asp:ListItem>
                </asp:DropDownList><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="cardnum"></asp:RequiredFieldValidator>
            </div>
            <br />
            <div class="field">
                <asp:Label ID="lbldiscount" runat="server" class="label" Text="Add Discount Code"></asp:Label>
                <br />
                <input type="text" name="txtcard" id="discount"  runat="server" />
                <asp:Button ID="BtnDiscount" runat="server" Text="Use" OnClick="BtnDiscount_Click" />
                </div>

        </div>
        </div>
        <ul class="actions">
        <li>
            <asp:Button ID="BtnOrder" runat="server" type="submit" Text="Order" class="primary" OnClick="BtnOrder_Click" />
        </li>
    </ul>

    </div>
</div>
</asp:Content>
