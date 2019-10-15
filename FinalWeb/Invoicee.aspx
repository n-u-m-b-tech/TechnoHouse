<%@ Page Title="" Language="C#" MasterPageFile="~/TechnoMaster.Master" AutoEventWireup="true" CodeBehind="Invoicee.aspx.cs" Inherits="FinalWeb.Invoicee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<meta http-equiv='Content-Type' content='text/html; charset=UTF-8' />
	
	
	<link rel='stylesheet' type='text/css' href='css/invoice.css' />
	<link rel='stylesheet' type='text/css' href='css/print.css' media="print" />
	<script type='text/javascript' src='js/jquery-1.3.2.min.js'></script>
	<script type='text/javascript' src='js/example.js'></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


	<div id="page-wrap">
		<h2 id="header">INVOICE</h2>
		<div id="identity">
            <span id="address">Chris Coyier
           123 Appleseed Street
           Appleville, WI 53719

           Phone: (555) 555-5555</span>

            <div id="logo">

              <div id="logoctr">
                <a href="javascript:;" id="change-logo" title="Change logo">Change Logo</a>
                <a href="javascript:;" id="save-logo" title="Save changes">Save</a>
                |
                <a href="javascript:;" id="delete-logo" title="Delete logo">Delete Logo</a>
                <a href="javascript:;" id="cancel-logo" title="Cancel changes">Cancel</a>
              </div>

              <div id="logohelp">
                <input id="imageloc" type="text" size="50" value="" /><br />
                (max width: 540px, max height: 100px)
              </div>
              <img id="image" src="images/logo.png" alt="logo" />
            </div>
		
		</div>
		
		<div style="clear:both"></div>
		
		<div id="customer">

            <h2 id="customer-title">Widget Corp.
c/o Steve Widget</h2>

            <table id="meta">
                <tr>
                    <td class="meta-head">Invoice #</td>
                    <td><span>000123</span></td>
                </tr>
                <tr>

                    <td class="meta-head">Date</td>
                    <td><span id="date">December 15, 2009</span></td>
                </tr>
                <tr>
                    <td class="meta-head">Amount Due</td>
                    <td><div class="due">$875.00</div></td>
                </tr>

            </table>
		
		</div>
		
		<table id="items">
		
		  <tr>
		      <th>Item</th>
		      <th>Description</th>
		      <th>Unit Cost</th>
		      <th>Quantity</th>
		      <th>Price</th>
		  </tr>
		  
		  <tr class="item-row">
		      <td class="item-name"><div class="delete-wpr"><span>Web Updates</span></div></td>
		      <td class="description">Monthly web updates for http://widgetcorp.com (Nov. 1 - Nov. 30, 2009)</td>
		      <td class="cost">$650.00</td>
		      <td class="qty">1</td>
		      <td><span class="price">$650.00</span></td>
		  </tr>
		  
		  <tr class="item-row">
		      <td class="item-name"><div class="delete-wpr"><span>SSL Renewals</span></div></td>

		      <td class="description"><span>Yearly renewals of SSL certificates on main domain and several subdomains</span></td>
		      <td><span class="cost">$75.00</span></td>
		      <td><span class="qty">3</span></td>
		      <td><span class="price">$225.00</span></td>
		  </tr>
		  
		  <tr id="hiderow">
		    <td colspan="5"><a id="addrow" href="javascript:;" title="Add a row">Add a row</a></td>
		  </tr>
		  
		  <tr>
		      <td colspan="2" class="blank"> </td>
		      <td colspan="2" class="total-line">Subtotal</td>
		      <td class="total-value"><div id="subtotal">$875.00</div></td>
		  </tr>
		  <tr>

		      <td colspan="2" class="blank"> </td>
		      <td colspan="2" class="total-line">Total</td>
		      <td class="total-value"><div id="total">$875.00</div></td>
		  </tr>
		  <tr>
		      <td colspan="2" class="blank"> </td>
		      <td colspan="2" class="total-line">Amount Paid</td>

		      <td class="total-value"><span id="paid">$0.00</span></td>
		  </tr>
		 
		</table>
		
		<div id="terms">
		  <h5><b>Terms</b></h5>
		  <span>NET 30 Days. Terms and Conditions Do Apply</span>
		</div>
	
	</div>
	

</asp:Content>
