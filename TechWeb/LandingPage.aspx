<%@ Page Title="Welcome to Techno House" Language="C#" MasterPageFile="~/TECHNO.Master" AutoEventWireup="true" CodeBehind="LandingPage.aspx.cs" Inherits="TechWeb.LandingPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="LandingPage.aspx" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
<section class="probootstrap-slider flexslider">
    <ul class="slides">
      <li style="background-image: url(images/slider/home.png);">
        <div class="container">
          <div class="row">
            <div class="col-md-12 text-center">
              <div class="slides-text probootstrap-animate">
                <h2>Your Home Re-invented.</h2>
                <p><a href="Catalogue.aspx" target="_blank" class="btn btn-primary">Shop now</a></p>
              </div>
            </div>
          </div>
        </div>
      </li>
      <li style="background-image: url(images/slider/kitchen.jpg);">
        <div class="container">
          <div class="row">
            <div class="col-md-12 text-center">
              <div class="slides-text probootstrap-animate">
                <h2>Smart Kitchen Design.</h2>
                <p><a href="Catalogue.aspx" target="_blank" class="btn btn-primary">Shop now</a></p>
              </div>
            </div>
          </div>
        </div>
      </li>
      <li style="background-image: url(images/slider/living.jpg);">
        <div class="container">
          <div class="row">
            <div class="col-md-12 text-center">
              <div class="slides-text probootstrap-animate">
                <h2>Smart Living Design.</h2>
                <p><a href="Catalogue.aspx"" target="_blank" class="btn btn-primary">Shop now</a></p>
              </div>
            </div>
          </div>
        </div>
      </li>


     <li style="background-image: url(images/slider/bathroom.jpg);">
        <div class="container">
          <div class="row">
            <div class="col-md-12 text-center">
              <div class="slides-text probootstrap-animate">
                <h2>Smart Bathroom Design.</h2>
                <p><a href="Catalogue.aspx"" target="_blank" class="btn btn-primary">Shop now</a></p>
              </div>
            </div>
          </div>
        </div>
      </li>

     <li style="background-image: url(images/slider/samsung-kitchen.jpg);">
        <div class="container">
          <div class="row">
            <div class="col-md-12 text-center">
              <div class="slides-text probootstrap-animate">
                <h2>Featured Samsung Smart Appliances.</h2>
                <p><a href="Catalogue.aspx"" target="_blank" class="btn btn-primary">Shop now</a></p>
              </div>
            </div>
          </div>
        </div>
      </li>
        
    </ul>
  </section>
  <!-- END: slider  -->

  <div class="probootstrap-section">
    <div class="container">
      <div class="row">
        <div class="col-md-6 probootstrap-animate" data-animate-effect="fadeInLeft">

          <div class="panel-group probootstrap-panel" id="accordion" role="tablist" aria-multiselectable="true">
            <div class="panel panel-default">
              <div class="panel-heading" role="tab" id="headingOne">
                <h3 class="panel-title">
                  <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">

                    Business Strategy
                  </a>
                </h3>
              </div>
              <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                <div class="panel-body">
                  <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>

                  
                </div>
              </div>
            </div>
            <div class="panel panel-default">
              <div class="panel-heading" role="tab" id="headingTwo">
                <h3 class="panel-title">
                  <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                    Business Marketing
                  </a>
                </h3>
              </div>
              <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                <div class="panel-body">
                  <p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
                  
                </div>
              </div>
            </div>
            <div class="panel panel-default">
              <div class="panel-heading" role="tab" id="headingThree">
                <h3 class="panel-title">
                  <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                    Business Profit
                  </a>
                </h3>
              </div>
              <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                <div class="panel-body">
                  <p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.</p>
                </div>
              </div>
            </div>
          </div>
          <!-- END panel-group -->
        </div>
        <div class="col-md-6 probootstrap-animate" data-animate-effect="fadeInRight">

          <figure>
            <div class="probootstrap-video">
              <a href="https://vimeo.com/45830194" class="popup-vimeo probootstrap-video-play"><i class="icon-play3"></i></a>
              <img src="img/slider_2.jpg" alt="Free HTML5 Bootstrap Template by uicookies.com" class="img-responsive img-border">
            </div>
            <figcaption>This is a caption. Far far away, behind the word mountains.</figcaption>
          </figure>

        </div>
      </div>
    </div>
  </div>
  <!-- END section -->
  

  <section class="probootstrap-section">
    <div class="container">
      <div class="row">
        <div class="col-md-12 section-heading probootstrap-animate">
          <h2>The Projects</h2>
        </div>
      </div>
      <div class="row">
        <div class="col-md-4 probootstrap-animate">
          <div class="probootstrap-card">
            <div class="probootstrap-card-media">
              <a href="single-page.html"><img src="img/slider_1.jpg" class="img-responsive img-border" alt="Free HTML5 Template by uicookies.com"></a>
            </div>
            <div class="probootstrap-card-text">
              <h2 class="probootstrap-card-heading mb0">A Clever Bike</h2>
              <p class="category">Design &amp; Model</p>
              <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
              <p><a href="single-page.html">View details</a></p>
            </div>
          </div>
        </div>
        <div class="col-md-4 probootstrap-animate">
          <div class="probootstrap-card">
            <div class="probootstrap-card-media">
              <a href="single-page.html"><img src="img/slider_2.jpg" class="img-responsive img-border" alt="Free HTML5 Template by uicookies.com"></a>
            </div>
            <div class="probootstrap-card-text">
              <h2 class="probootstrap-card-heading mb0">Sleek Spaker</h2>
              <p class="category">Design</p>
              <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
              <p><a href="single-page.html">View details</a></p>
            </div>
          </div>
        </div>
        <div class="col-md-4 probootstrap-animate">
          <div class="probootstrap-card">
            <div class="probootstrap-card-media">
              <a href="single-page.html"><img src="img/slider_3.jpg" class="img-responsive img-border" alt="Free HTML5 Template by uicookies.com"></a>
            </div>
            <div class="probootstrap-card-text">
              <h2 class="probootstrap-card-heading mb0">Black Person</h2>
              <p class="category">Photography</p>
              <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
              <p><a href="single-page.html">View details</a></p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- END section -->



</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

</asp:Content>
