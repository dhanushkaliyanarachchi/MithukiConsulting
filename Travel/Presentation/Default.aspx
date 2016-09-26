<%@ Page Title="" Language="C#" MasterPageFile="~/Presentation/MainSite.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Travel.Presentation.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <script>
        $('.carousel').carousel({
            interval: 1000
        })
    </script>

    <style>
		#slideshow {width : 500px; height: 335px}
		#carousel_img{
			width:900px;
			height:409px;
		}
		
		p{
			color:black;
		}
		
		body{
			background:#333 url(../images/thumbs/bg.jpg) repeat top left;
			font-family:Arial;
		}	
	</style>

	<style>
		h3,h4{
			color: white;
			font-family : Helvetica;
			margin-top : 0px;
		}
	</style>

    <div class="index_container">
        <div id="main" style="width:1000px;margin:0px auto">
            <div class="container">

                <div id="logo" style="width: 1000px; height: 0px; background-color: #FFFFFF; margin: 40px 150px 0px 150px;">
                </div>

                <div style="background-color: ; height: 407px; width: 248px; border: 1px solid white; margin-left: -150px; margin-top: 00px">

                    <div align="center" style="background-color: #30b2eb; width: 246px; height: 75px; line-height: 75px">
                        <h3>Plan Your Trip</h3>
                        <h4>Now!</h4>
                    </div>
                    <div align="center" style="background-color: :white; width: 248px; height: 75px">
                        <p style="color: white;">HOTLINE</p>
                        <p style="color: #30b2eb">+94716496789</p>
                        <hr>
                    </div>
                    <div align="center" style="background-color: :white; width: 248px; height: 75px">
                        <p style="color: white">EMAIL</p>
                        <p style="color: #30b2eb">dishanthagayan@gmail.com</p>
                        <hr>
                    </div>
                    <div align="center" style="background-color: ; width: 248px; height: 75px">
                        <p style="color: white">SKYPE ID</p>
                        <p style="color: #30b2eb">mithuki.travels</p>
                        <hr>
                    </div>
                    <div align="center" style="background-color: #30b2eb; width: 246px; height: 109px; margin-top: -4px">
                        <h3>Enjoy You Journy With Us</h3>
                    </div>

                </div>


                <div id="myCarousel" class="carousel slide" data-ride="carousel" style="width: 800px; margin: 0px auto; float: left; margin-top: -410px; margin-left: 100px">
                    <ol class="carousel-indicators">
                        <li data-target="mycarousel" data-slid-to="0" class="active"></li>
                        <li data-target="mycarousel" data-slid-to="1"></li>
                        <li data-target="mycarousel" data-slid-to="2"></li>
                        <li data-target="mycarousel" data-slid-to="3"></li>
                    </ol>
                    <div class="carousel-inner">

                        <div class="item active">
                            <img id="carousel_img" src="../images/carousel/slide2.jpg" alt="" style="width: 900px; height: 409px">
                            <div class="container">
                                <div class="carousel-caption">
                                    <h2>Dalada maligawa perahara</h2>
                                </div>
                            </div>
                        </div>

                        <div class="item">
                            <img id="Img1" src="../images/carousel/slide1.jpg" alt="" style="width: 900px; height: 410px">
                            <div class="container">
                                <div class="carousel-caption">
                                    <h2>Another example headline.</h2>
                                </div>
                            </div>
                        </div>

                        <div class="item">
                            <img id="Img2" src="../images/carousel/slide3.jpg" alt="" style="width: 900px; height: 410px">
                            <div class="container">
                                <div class="carousel-caption">
                                    <h2>One more for good measure.</h2>
                                </div>
                            </div>
                        </div>

                        <div class="item">
                            <img id="Img3" src="../images/carousel/slide2.jpg" alt="" style="width: 900px; height: 410px">
                            <div class="container">
                                <div class="carousel-caption">
                                    <h2>One more for good measure.</h2>
                                </div>
                            </div>
                        </div>

                    </div>
                    <a class="left carousel-control" href="#myCarousel" data-slide="prev"></a>
                    <a class="right carousel-control" href="#myCarousel" data-slide="next"></a>


                </div>
                <div style="color: #e7e7e7; height: 405px; width: 250px; margin-left: 900px; margin-top: -410px; border: 1px solid">

                    <div align="center" style="background-color: #30b2eb; width: 248px; height: 75px; line-height: 75px">
                        <h3>Plan Your Trip</h3>
                        <h4>Now!</h4>
                    </div>
                    <div align="center" style="background-color: :white; width: 248px; height: 75px">
                        <p style="color: white;">HOTLINE</p>
                        <p style="color: #30b2eb">+94716496789</p>
                        <hr>
                    </div>
                    <div align="center" style="background-color: :white; width: 248px; height: 75px">
                        <p style="color: white">EMAIL</p>
                        <p style="color: #30b2eb">dishanthagayan@gmail.com</p>
                        <hr>
                    </div>
                    <div align="center" style="background-color: ; width: 248px; height: 75px">
                        <p style="color: white">SKYPE ID</p>
                        <p style="color: #30b2eb">mithuki.travels</p>
                        <hr>
                    </div>
                    <div align="center" style="background-color: #30b2eb; width: 248px; height: 108px; margin-top: -4px">
                        <h3>Enjoy You Journy With Us</h3>
                    </div>
                </div>

            </div>
        </div>
    </div>

</asp:Content>
