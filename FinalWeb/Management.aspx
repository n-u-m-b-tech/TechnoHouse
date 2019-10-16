<%@ Page Title="" Language="C#" MasterPageFile="~/TechnoMaster.Master" AutoEventWireup="true" CodeBehind="Management.aspx.cs" Inherits="FinalWeb.Management" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/AdminHome.css" rel="stylesheet" />
    <link href="css/datepicker3.css" rel="stylesheet">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <!--SideBar-->
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />

    <div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">
		<div class="profile-sidebar">
			<div class="profile-userpic">
				<img src="http://placehold.it/50/30a5ff/fff" class="img-responsive" alt="">
			</div>
			<div class="profile-usertitle">
				<div class="profile-usertitle-name">Admin</div>
				<div class="profile-usertitle-status"><span class="indicator label-success"></span>Online</div>
			</div>
			<div class="clear"></div>
		</div>
		<div class="divider"></div>
		<ul class="nav menu">
			<li class="active"><a href="index.html"><em class="fa fa-dashboard">&nbsp;</em> Dashboard</a></li>
			<li><a href="AddProduct.aspx"><em class="fa fa-calendar">&nbsp;</em> Add Product</a></li>
			<li><a href="SearchProduct.aspx"><em class="fa fa-bar-chart">&nbsp;</em> Edit Product</a></li>
			<li><a href="SearchUser.aspx"><em class="fa fa-bar-chart">&nbsp;</em> Edit User</a></li>
            <li><a href="#"><em class="fa fa-toggle-off">&nbsp;</em> Stats </a></li>
            <li><a href="#"><em class="fa fa-toggle-off">&nbsp;</em> View Report </a></li>
		</ul>
	</div><!--/.sidebar-->

    <!--Main-->
    <div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
        <br />
        <br />
        <br />
        <br />

        <!--Row-->
        <div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">Dashboard</h1>
			</div>
		</div><!--/.row-->

        <!--.panel-->
        <div class="panel panel-container">
 <%--              <asp:Chart ID="Chart1" runat="server">
                    <Series>
                        <asp:Series Name="Series1"></asp:Series>
                    </Series>
                    <Series>
                        <asp:Series Name="djjd"></asp:Series>
                    </Series>
                    <ChartAreas>
                        <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                    </ChartAreas>
                   <ChartAreas>
                        <asp:ChartArea Name="ChartArea2"></asp:ChartArea>
                    </ChartAreas>
                </asp:Chart>--%>


			<div class="row">
				<div class="col-xs-6 col-md-3 col-lg-3 no-padding">
					<div class="panel panel-teal panel-widget border-right">
						<div class="row no-padding"><em class="fa fa-xl fa-shopping-cart color-blue"></em>
							<div id="salesss" runat="server" class='large'></div>
							<div  class="text-muted">Admins/div>
						</div>
					</div>
				</div>

				<div class="col-xs-6 col-md-3 col-lg-3 no-padding">
					<div class="panel panel-blue panel-widget border-right">
						<div class="row no-padding"><em class="fa fa-xl fa-comments color-orange"></em>
							<div id="usersss" runat="server" class='large'></div>
							<div class="text-muted" ">Registered users</div>
						</div>
					</div>
				</div>
                
                <div class="col-xs-6 col-md-3 col-lg-3 no-padding">
					<div class="panel panel-blue panel-widget border-right">
						<div class="row no-padding"><em class="fa fa-bar-chart" aria-hidden="true"></em>
							<div id="Div1" runat="server" class='large'>555</div>
							<div class="text-muted">Website Visitors</div>
						</div>
					</div>
				</div>
				<div class="col-xs-6 col-md-3 col-lg-3 no-padding">
					<div class="panel panel-orange panel-widget border-right">
						<div class="row no-padding"><em class="fa fa-xl fa-users color-teal"></em>
							<div id="proddd" runat="server" class='large'></div>
							<div class="text-muted">Products On Stock</div>
						</div>
					</div>
				</div>
				<div class="col-xs-6 col-md-3 col-lg-3 no-padding">
					<div class="panel panel-red panel-widget ">
						<div class="row no-padding"><em class="fa fa-xl fa-search color-red"></em>
							<div class="large">0.2k</div>
							<div class="text-muted">Page Views</div>
						</div>
					</div>
				</div>
			</div><!--/.row-->
		</div><!--.panel-->
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
   
    </div>


    <!--Scripts-->
    <script src="Scripts/Custom/chart.min.js"></script>
	<script src="Scripts/Custom/chart-data.js"></script>
	<script src="Scripts/Custom/easypiechart.js"></script>
	<script src="Scripts/Custom/easypiechart-data.js"></script>
	<script src="Scripts/Custom/bootstrap-datepicker.js"></script>
	<script src="Scripts/Custom/custom.js"></script>
	<script>
		window.onload = function () {
	    var chart1 = document.getElementById("line-chart").getContext("2d");
	    window.myLine = new Chart(chart1).Line(lineChartData, {
	    responsive: true,
	    scaleLineColor: "rgba(0,0,0,.2)",
	    scaleGridLineColor: "rgba(0,0,0,.05)",
	    scaleFontColor: "#c5c7cc"
	    });
    };
	</script>


</asp:Content>
