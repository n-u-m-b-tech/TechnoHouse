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

             

              <div id="logohelp">
                <input id="imageloc" type="text" size="50" value="" /><br />
                (max width: 540px, max height: 100px)
              </div>
              <img id="image" src="images/logo.png" alt="logo" />
            </div>
		
		</div>
		
		<div style="clear:both"></div>
		
		<div id="customer" runat="server">

            <h2 id="title" runat="server"> </h2>

            <table id="meta">
                <tr>
                    <td class="meta-head">Invoice #</td>
                    <td><span id="invoiceNumber" runat="server"></span></td>
                </tr>
                <tr>

                    <td class="meta-head">Date</td>
                    <td><span id="date" runat="server"></span></td>
                </tr>
                <tr>
                    <td class="meta-head">Amount Due</td>
                    <td><div class="due" id="amount" runat="server"></div></td>
                </tr>

            </table>
		
		</div>
		
        <div id="table" runat="server">


        </div>
		
		
		<div id="terms">
		  <h5><b>Terms</b></h5>
		  <span>NET 30 Days. Terms and Conditions Do Apply</span>
		</div>
	
	</div>
	

</asp:Content>
