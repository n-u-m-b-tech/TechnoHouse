<%@ Page Title="" Language="C#" MasterPageFile="~/TechnoMaster.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="FinalWeb.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<link rel="stylesheet" type="text/css" href="vendor/lightbox2/css/lightbox.min.css">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Slide1 -->
	<section class="slide1">
		<div class="wrap-slick1">
          <div class="slick1">
				<div class="item-slick1 item1-slick1" style="background-image: url(images/slider/smart.jpg);">
					<div class="wrap-content-slide1 sizefull flex-col-c-m p-l-15 p-r-15 p-t-150 p-b-170">
						<span class="caption1-slide1 m-text1 t-center animated visible-false m-b-15" data-appear="fadeInDown">
							Latest Home Gadgets
						</span>
						<h2 class="caption2-slide1 xl-text1 t-center animated visible-false m-b-37" data-appear="fadeInUp">
							New arrivals
						</h2>

						<div class="wrap-btn-slide1 w-size1 animated visible-false" data-appear="zoomIn">
							<!-- Button -->
							<a href="Catalog.aspx?ID=ALL" class="flex-c-m size2 bo-rad-23 s-text2 bgwhite hov1 trans-0-4">
								Shop Now
							</a>
						</div>
					</div>
				</div>

				<div class="item-slick1 item2-slick1" style="background-image: url(images/slider/living.jpg);">
					<div class="wrap-content-slide1 sizefull flex-col-c-m p-l-15 p-r-15 p-t-150 p-b-170">
						<span class="caption1-slide1 m-text1 t-center animated visible-false m-b-15" data-appear="rollIn">
							Living Room Gadgets
						</span>

						<h2 class="caption2-slide1 xl-text1 t-center animated visible-false m-b-37" data-appear="lightSpeedIn">
							New arrivals
						</h2>

						<div class="wrap-btn-slide1 w-size1 animated visible-false" data-appear="slideInUp">
							<!-- Button -->
							<a href="Catalog.aspx?ID=Living Room" class="flex-c-m size2 bo-rad-23 s-text2 bgwhite hov1 trans-0-4">
								Shop Now
							</a>
						</div>
					</div>
				</div>

				<div class="item-slick1 item3-slick1" style="background-image: url(images/slider/kitchen.jpg);">
					<div class="wrap-content-slide1 sizefull flex-col-c-m p-l-15 p-r-15 p-t-150 p-b-170">
						<span class="caption1-slide1 m-text1 t-center animated visible-false m-b-15" data-appear="rotateInDownLeft">
							Kitchen Gadgets and Appliances.
						</span>

						<h2 class="caption2-slide1 xl-text1 t-center animated visible-false m-b-37" data-appear="rotateInUpRight">
							New arrivals
						</h2>

						<div class="wrap-btn-slide1 w-size1 animated visible-false" data-appear="rotateIn">
							<!-- Button -->
							<a href="Catalog.aspx?ID=Kitchen" class="flex-c-m size2 bo-rad-23 s-text2 bgwhite hov1 trans-0-4">
								Shop Now
							</a>
						</div>
					</div>
				</div>

                <div class="item-slick1 item3-slick1" style="background-image: url(images/slider/bathroom.jpg);">
					<div class="wrap-content-slide1 sizefull flex-col-c-m p-l-15 p-r-15 p-t-150 p-b-170">
						<span class="caption1-slide1 m-text1 t-center animated visible-false m-b-15" data-appear="rotateInDownLeft">
							Bathroom Gadgets and Appliances.
						</span>

						<h2 class="caption2-slide1 xl-text1 t-center animated visible-false m-b-37" data-appear="rotateInUpRight">
							New arrivals
						</h2>

						<div class="wrap-btn-slide1 w-size1 animated visible-false" data-appear="rotateIn">
							<!-- Button -->
							<a href="Catalog.aspx?ID=BathRoom" class="flex-c-m size2 bo-rad-23 s-text2 bgwhite hov1 trans-0-4">
								Shop Now
							</a>
						</div>
					</div>
				</div>

                <div class="item-slick1 item3-slick1" style="background-image: url(images/slider/sbed.jpg);">
					<div class="wrap-content-slide1 sizefull flex-col-c-m p-l-15 p-r-15 p-t-150 p-b-170">
						<span class="caption1-slide1 m-text1 t-center animated visible-false m-b-15" data-appear="rotateInDownLeft">
							Bed Room Gadgets and Appliances.
						</span>

						<h2 class="caption2-slide1 xl-text1 t-center animated visible-false m-b-37" data-appear="rotateInUpRight">
							New arrivals
						</h2>

						<div class="wrap-btn-slide1 w-size1 animated visible-false" data-appear="rotateIn">
							<!-- Button -->
							<a href="Catalog.aspx?ID=BedRoom" class="flex-c-m size2 bo-rad-23 s-text2 bgwhite hov1 trans-0-4">
								Shop Now
							</a>
						</div>
					</div>
				</div>
			</div>
            </div>
	</section>

	<!-- Banner -->
	<section class="banner bgwhite p-t-40 p-b-40">
		<div class="container">
			<div class="row">
				<div class="col-sm-10 col-md-8 col-lg-4 m-l-r-auto">
					<!-- block1 -->
					<div class="block1 hov-img-zoom pos-relative m-b-30">
						<img src="images/slider/living.jpg" alt="IMG-BENNER">

						<div class="block1-wrapbtn w-size2">
							<!-- Button -->
							<a href="Catalog.aspx?ID=Living Room" class="flex-c-m size2 m-text2 bg3 hov1 trans-0-4">
								Living Room
							</a>
						</div>
					</div>
				</div>

				<div class="col-sm-10 col-md-8 col-lg-4 m-l-r-auto">
					<!-- block1 -->
					<div class="block1 hov-img-zoom pos-relative m-b-30">
						<img src="images/slider/kitchen.jpg" alt="IMG-BENNER">

						<div class="block1-wrapbtn w-size2">
							<!-- Button -->
							<a href="Catalog.aspx?ID=Kitchen" class="flex-c-m size2 m-text2 bg3 hov1 trans-0-4">
								Kitchen
							</a>
						</div>
					</div>
				</div>

				<div class="col-sm-10 col-md-8 col-lg-4 m-l-r-auto">
					<!-- block -->
					<div class="block1 hov-img-zoom pos-relative m-b-30">
						<img src="images/slider/bathroom.jpg" alt="IMG-BENNER">

						<div class="block1-wrapbtn w-size2">
							<!-- Button -->
							<a href="Catalog.aspx?ID=BathRoom" class="flex-c-m size2 m-text2 bg3 hov1 trans-0-4">
								Bath Room
							</a>
						</div>
					</div>
                   </div>

				<div class="col-sm-10 col-md-8 col-lg-4 m-l-r-auto">
					<!-- block -->
					<div class="block1 hov-img-zoom pos-relative m-b-30">
						<img src="images/slider/sbed.jpg" alt="IMG-BENNER">

						<div class="block1-wrapbtn w-size2">
							<!-- Button -->
							<a href="Catalog.aspx?ID=BedRoom" class="flex-c-m size2 m-text2 bg3 hov1 trans-0-4">
								Bed Room
							</a>
						</div>
					</div>
                    </div>
            </div>
            </div>
	</section>

	<!-- New Product -->
	<section class="newproduct bgwhite p-t-45 p-b-105">
		<div class="container">
			<div class="sec-title p-b-60">
				<h3 class="m-text5 t-center">
					Featured Products
				</h3>
			</div>          
			<div class="wrap-slick2">
				<div class="slick2" id="view" runat="server">
                  
                </div>
			</div>
          
		</div>
	</section>

	<!-- Banner2 -->
	<section class="banner2 bg5 p-t-55 p-b-55">
		<div class="container">
			<div class="row">
				<div class="col-sm-10 col-md-8 col-lg-6 m-l-r-auto p-t-15 p-b-15">
					<div class="bgwhite hov-img-zoom pos-relative p-b-20per-ssm">
                        <h3>SECURIRY ALERT!!</h3>
                          <p>Check out our latest security devices</p>
						<img src="images/slider/security.jpg" alt="IMG-BANNER">
							<div class="flex-c-m p-t-44 p-t-30-xl">
								<div class="flex-col-c-m size3 bo1 m-l-5 m-r-5">
									<span class="m-text10 p-b-1 days">
										69
									</span>

									<span class="s-text5">
										days
									</span>
								</div>

								<div class="flex-col-c-m size3 bo1 m-l-5 m-r-5">
									<span class="m-text10 p-b-1 hours">
										04
									</span>

									<span class="s-text5">
										hrs
									</span>
								</div>

								<div class="flex-col-c-m size3 bo1 m-l-5 m-r-5">
									<span class="m-text10 p-b-1 minutes">
										32
									</span>

									<span class="s-text5">
										mins
									</span>
								</div>

								<div class="flex-col-c-m size3 bo1 m-l-5 m-r-5">
									<span class="m-text10 p-b-1 seconds">
										05
									</span>

									<span class="s-text5">
										secs
									</span>
								</div>
							</div>
						</div>
				      </div>
			 </div>
		  </div>
	  </section>

   <!-- Galerry -->
	<section class="blog bgwhite p-t-94 p-b-65">
		<div class="container">
			<div class="sec-title p-b-52">
				<h3 class="m-text5 t-center">
					Our Gallery
				</h3>
			</div>

			<div class="row">
				<div class="col-sm-10 col-md-4 p-b-30 m-l-r-auto">
					<!-- Block3 -->
					<div class="block3">
						<a href="#" class="block3-img dis-block hov-img-zoom">
							<img src="images/slider/SmartLiving.jpg" alt="IMG-BLOG">
						</a>

						<div class="block3-txt p-t-14">
							<h4 class="p-b-7">
								<a href="#" class="m-text11">
									
								</a>
							</h4>

							<span class="s-text6">By</span> <span class="s-text7">Nancy Ward</span>
							<span class="s-text6">on</span> <span class="s-text7">July 22, 2017</span>

							<p class="s-text8 p-t-16">
								Don't like talking and prefer controlling things the old fashioned way: by pushing buttons? The Logitech Harmony Elite is the ultimate universal remote for a reason: it controls a lot more than just TV and stereo. The pricey unit connects with the included Harmony Home Hub to control other Bluetooth, Wi-Fi, Zigbee, Z-Wave, or infrared devices in your house.
                            </p>
						</div>
					</div>
				</div>


                				<div class="col-sm-10 col-md-4 p-b-30 m-l-r-auto">
					<!-- Block3 -->
					<div class="block3">
						<a href="#" class="block3-img dis-block hov-img-zoom">
							<img src="images/slider/SmartBedroom.jpg" alt="IMG-BLOG">
						</a>

						<div class="block3-txt p-t-14">
							<h4 class="p-b-7">
								<a href="#" class="m-text11">
									
								</a>
							</h4>

							<span class="s-text6">By</span> <span class="s-text7">Nancy Ward</span>
							<span class="s-text6">on</span> <span class="s-text7">July 22, 2017</span>

							<p class="s-text8 p-t-16">
								If you're looking to add some smarts to small home appliances such as coffee makers, lamps, and TVs, the ConnectSense Smart Outlet 2 is an excellent choice. This versatile dual-outlet smart plug can be controlled with an Android or iOS mobile app and works with Alexa, Google Assistant, and Siri voice commands.
                            </p>
						</div>
					</div>
				</div>


                	<div class="col-sm-10 col-md-4 p-b-30 m-l-r-auto">
					<!-- Block3 -->
					<div class="block3">
						<a href="#" class="block3-img dis-block hov-img-zoom">
							<img src="images/aaaa.jpg" alt="IMG-BLOG">
						</a>

						<div class="block3-txt p-t-14">
							<h4 class="p-b-7">
								<a href="#" class="m-text11">
									
								</a>
							</h4>

							<span class="s-text6">By</span> <span class="s-text7">Nancy Ward</span>
							<span class="s-text6">on</span> <span class="s-text7">July 22, 2017</span>

							<p class="s-text8 p-t-16">
								The Brilliant Control is a unique wall switch that uses Wi-Fi to connect to and control various smart devices in your home. It has a 5-inch color touch screen with user-friendly button controls that let you play music, control lighting, set thermostat temperatures, and see who is at your door, among other things. It works with many popular smart home platforms including Ecobee, Nest, Philips Hue, Ring, and Sonos, and it has built-in Amazon Alexa voice support that allows it to do almost everything an Echo device can do. It's fairly pricey and requires wiring knowledge to install, but it's a smart addition to a high-tech home.
                            </p>
						</div>
					</div>
				</div>


                <div class="col-sm-10 col-md-4 p-b-30 m-l-r-auto">
					<!-- Block3 -->
					<div class="block3">
						<a href="#" class="block3-img dis-block hov-img-zoom">
							<img src="images/slider/stak.jpg" alt="IMG-BLOG">
						</a>

						<div class="block3-txt p-t-14">
							<h4 class="p-b-7">
								<a href="#" class="m-text11">
									
								</a>
							</h4>

							<span class="s-text6">By</span> <span class="s-text7">Nancy Ward</span>
							<span class="s-text6">on</span> <span class="s-text7">July 22, 2017</span>

							<p class="s-text8 p-t-16">
							The Smart Lock Pro + Connect is the latest offering from Techno House, and as with the original Techno Smart Lock and HomeKit Enabled models, it's a winner. This third-generation smart lock offers all the bells and whistles you get with the HomeKit model, and adds a few new features, including Techno's DoorSense technology, Z-Wave compatibility, and Wi-Fi connectivity	
                            </p>
						</div>
					</div>
				</div>

			
			</div>
		</div>
	</section>

</asp:Content>
