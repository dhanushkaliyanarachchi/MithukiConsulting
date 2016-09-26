<%@ Page Title="" Language="C#" MasterPageFile="~/Presentation/MainSite.Master" AutoEventWireup="true" CodeBehind="PhotoGallery.aspx.cs" Inherits="Travel.Presentation.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <!--Styles and scripts for photo gallery---->
    <link href="../Styles/css/style.css" rel="stylesheet" />
    <link href="../Styles/css/jgallery.min.css?v=1.5.0" rel="stylesheet" />
    <link href="../Styles/css/font-awesome.min.css" rel="stylesheet" />


    <script src="../Scripts/js/jquery.easing.1.3.js"></script>
    <script src="../Scripts/js/jgallery.min.js?v=1.5.0"></script>
    <script src="../Scripts/js/touchswipe.min.js"></script>

		<script type="text/javascript">

		    $k = jQuery.noConflict();

		    $k( document ).ready(function() {
		            $k("#maligawa").click(function () {
		                $k('#gallery').jGallery();
		            });
		    });


		    //$k(function () {
		    //    $k('#gallery').jGallery();
		    //});

		    $k(function () {
		        $k('#gallery2').jGallery();
		    });
		    $k(function () {
		        $k('#gallery3').jGallery();
		    });

		    $k(function () {
		        $k('#gallery4').jGallery();
		    });

		    $k(function () {
		        $k('#gallery5').jGallery();
		    });

		    $k(function () {
		        $k('#gallery6').jGallery();
		    });

		    $k(function () {
		        $k('#gallery7').jGallery();
		    });

		    $k(function () {
		        $k('#gallery8').jGallery();
		    });

		</script>
		


    <script type="text/javascript">
        $l = jQuery.noConflict();
        $l(function () {
            /**
            * for each menu element, on mouseenter, 
            * we enlarge the image, and show both sdt_active span and 
            * sdt_wrap span. If the element has a sub menu (sdt_box),
            * then we slide it - if the element is the last one in the menu
            * we slide it to the left, otherwise to the right
            */
            $l('#sdt_menu > li').bind('mouseenter', function () {
                var $lelem = $l(this);
                $lelem.find('img')
                     .stop(true)
                     .animate({
                         'width': '170px',
                         'height': '170px',
                         'left': '0px'
                     }, 400, 'easeOutBack')
                     .andSelf()
                     .find('.sdt_wrap')
                     .stop(true)
                     .animate({ 'top': '140px' }, 500, 'easeOutBack')
                     .andSelf()
                     .find('.sdt_active')
                     .stop(true)
                     .animate({ 'height': '170px' }, 300, function () {
                         var $lsub_menu = $lelem.find('.sdt_box');
                         if ($lsub_menu.length) {
                             var left = '170px';
                             if ($lelem.parent().children().length == $lelem.index() + 1)
                                 left = '-170px';
                             $lsub_menu.show().animate({ 'left': left }, 200);
                         }
                     });
            }).bind('mouseleave', function () {
                var $lelem = $l(this);
                var $lsub_menu = $lelem.find('.sdt_box');
                if ($lsub_menu.length)
                    $lsub_menu.hide().css('left', '0px');

                $lelem.find('.sdt_active')
                     .stop(true)
                     .animate({ 'height': '0px' }, 300)
                     .andSelf().find('img')
                     .stop(true)
                     .animate({
                         'width': '0px',
                         'height': '0px',
                         'left': '85px'
                     }, 400)
                     .andSelf()
                     .find('.sdt_wrap')
                     .stop(true)
                     .animate({ 'top': '25px' }, 500);
            });
        });
    </script>

    <style>
        body {
            background: #333 url(../images/thumbs/bg.jpg) repeat top left;
            font-family: Arial;
        }

        span.reference {
            position: fixed;
            left: 10px;
            bottom: 10px;
            font-size: 12px;
        }

            span.reference a {
                color: #aaa;
                text-transform: uppercase;
                text-decoration: none;
                text-shadow: 1px 1px 1px #000;
                margin-right: 30px;
            }

                span.reference a:hover {
                    color: #ddd;
                }

        ul.sdt_menu {
            margin-top: 150px;
            margin: 0px auto;
        }

        h1.title {
            text-indent: -9000px;
            background: transparent url(title.png) no-repeat top left;
            width: 633px;
            height: 169px;
        }
    </style>

    <!----------------------------------------->


    <div class="content">
        <h1 class="title">Slide Down Box Menu with jQuery and CSS3</h1>
        <ul id="sdt_menu" class="sdt_menu">
            <li>
                <a href="#">
                    <img src="../images/thumbs/2.jpg" alt="" />
                    <span class="sdt_active"></span>
                    <span class="sdt_wrap">
                        <span class="sdt_link">Kandy</span>
                        <span class="sdt_descr">Temple Of Tooth Relic</span>
                    </span>
                </a>
                <div class="sdt_box">
                    <a id="maligawa" href="#" data-toggle="modal" data-target="#dhaladaMaligawaImagesModal">Temple Of Tooth Relic</a>
                    <a href="#" data-toggle="modal" data-target="#dhaladaMaligawaMap">Kandy Map</a>
                    dhaladaMaligawaMap
                </div>
            </li>
            <li>
                <a href="#">
                    <img src="../images/thumbs/1.jpg" alt="" />
                    <span class="sdt_active"></span>
                    <span class="sdt_wrap">
                        <span class="sdt_link">Arugam Bay</span>
                        <span class="sdt_descr">My work</span>
                    </span>
                </a>
                <div class="sdt_box">
                    <a href="#" data-toggle="modal" data-target="#ArugambayImagesModal">Arugam Bay Beach</a>
                </div>
            </li>
            <li>
                <a href="#">
                    <img src="../images/thumbs/3.jpg" alt="" />
                    <span class="sdt_active"></span>
                    <span class="sdt_wrap">
                        <span class="sdt_link">Sigiriya</span>
                        <span class="sdt_descr">Where ideas get born</span>
                    </span>
                </a>
                <div class="sdt_box">
                    <a href="#" data-toggle="modal" data-target="#SigiriyaImagesModal">Sigiriya</a>
                </div>
            </li>
            <li>
                <a href="#">
                    <img src="../images/thumbs/4.jpg" alt="" />
                    <span class="sdt_active"></span>
                    <span class="sdt_wrap">
                        <span class="sdt_link">Yala</span>
                        <span class="sdt_descr">Yala Sanctuaary</span>
                    </span>
                </a>
                <div class="sdt_box">
                    <a href="#" data-toggle="modal" data-target="#YalaImagesModal">Yala</a>
                </div>
            </li>
            <li>
                <a href="#">
                    <img src="../images/thumbs/5.jpg" alt="" />
                    <span class="sdt_active"></span>
                    <span class="sdt_wrap">
                        <span class="sdt_link">Pinnawala</span>
                        <span class="sdt_descr">I write about design</span>
                    </span>
                </a>
                <div class="sdt_box">
                    <a href="#" data-toggle="modal" data-target="#PinnawalaImagesModal">Pinnawala</a>
                </div>
            </li>
            <li>
                <a href="#">
                    <img src="../images/thumbs/6.jpg" alt="" />
                    <span class="sdt_active"></span>
                    <span class="sdt_wrap">
                        <span class="sdt_link">Mirissa</span>
                        <span class="sdt_descr">Mirissa Whale Watching</span>
                    </span>
                </a>
                <div class="sdt_box">
                    <a href="#" data-toggle="modal" data-target="#MirissaImagesModal">Mirissa</a>
                </div>
            </li>
            <li>
                <a href="#">
                    <img src="../images/thumbs/5.jpg" alt="" />
                    <span class="sdt_active"></span>
                    <span class="sdt_wrap">
                        <span class="sdt_link">Adam's Peak</span>
                        <span class="sdt_descr">I write about design</span>
                    </span>
                </a>
                <div class="sdt_box">
                    <a href="#" data-toggle="modal" data-target="#AdamImagesModal">Adam's Peak</a>
                </div>
            </li>
            <li>
                <a href="#">
                    <img src="../images/thumbs/5.jpg" alt="" />
                    <span class="sdt_active"></span>
                    <span class="sdt_wrap">
                        <span class="sdt_link">Trinco</span>
                        <span class="sdt_descr">I write about design</span>
                    </span>
                </a>
                <div class="sdt_box">
                    <a href="#" data-toggle="modal" data-target="#TrincoImagesModal">Nilawali Beach</a>
                </div>
            </li>
        </ul>



        <!-- Modals-->

        <div id="dhaladaMaligawaImagesModal" class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal"
                            aria-hidden="true">
                            &times;</button>
                        <h4 class="modal-title" id="H6">Temple Of Tooth Relic </h4>
                    </div>
                    <div class="modal-body">

                        <div id="gallery">
                            <div class="album" data-jgallery-album-title="Album 1">
                                <a href="../images/temple_of_tooth/1.jpg">
                                    <img src="../images/temple_of_tooth/1.jpg" alt="Photo 1" /></a>
                                <a href="../images/temple_of_tooth/2.jpg">
                                    <img src="../images/temple_of_tooth/2.jpg" alt="Photo 2" /></a>
                                <a href="../images/temple_of_tooth/3.jpg">
                                    <img src="../images/temple_of_tooth/3.jpg" alt="Photo 3" /></a>
                                <a href="../images/temple_of_tooth/4.jpg">
                                    <img src="../images/temple_of_tooth/4.jpg" alt="Photo 4" /></a>
                                <a href="../images/temple_of_tooth/5.jpg">
                                    <img src="../images/temple_of_tooth/5.jpg" alt="Photo 5" /></a>
                                <a href="../images/temple_of_tooth/6.jpg">
                                    <img src="../images/temple_of_tooth/6.jpg" alt="Photo 6" /></a>
                                <a href="../images/temple_of_tooth/7.jpg">
                                    <img src="../images/temple_of_tooth/7.jpg" alt="Photo 7" /></a>
                                <a href="../images/temple_of_tooth/8.jpg">
                                    <img src="../images/temple_of_tooth/8.jpg" alt="Photo 8" /></a>
                                <a href="../images/temple_of_tooth/9.jpg">
                                    <img src="../images/temple_of_tooth/9.jpg" alt="Photo 9" /></a>
                                <a href="../images/temple_of_tooth/10.jpg">
                                    <img src="../images/temple_of_tooth/10.jpg" alt="Photo 10" /></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <div id="dhaladaMaligawaMap" class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal"
                            aria-hidden="true">
                            &times;</button>
                        <h4 class="modal-title" id="H1">Temple Of Tooth Relic </h4>
                    </div>

                    <div class="modal-body">
                        <div id="map-canvas"></div>
                    </div>
                </div>
            </div>
        </div>





        <div id="ArugambayImagesModal" class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal"
                            aria-hidden="true">
                            &times;</button>
                        <h4 class="modal-title" id="H2">Arugam Bay</h4>
                    </div>
                    <div class="modal-body">
                        <div id="gallery2">
                            <div class="album" data-jgallery-album-title="Album 1">
                                <a href="../images/arugam_bay/1.jpg">
                                    <img src="../images/arugam_bay/1.jpg" alt="Photo 1" /></a>
                                <a href="../images/arugam_bay/2.jpg">
                                    <img src="../images/arugam_bay/2.jpg" alt="Photo 2" /></a>
                                <a href="../images/arugam_bay/3.jpg">
                                    <img src="../images/arugam_bay/3.jpg" alt="Photo 3" /></a>
                                <a href="../images/arugam_bay/4.jpg">
                                    <img src="../images/arugam_bay/4.jpg" alt="Photo 3" /></a>
                                <a href="../images/arugam_bay/5.jpg">
                                    <img src="../images/arugam_bay/5.jpg" alt="Photo 3" /></a>
                                <a href="../images/arugam_bay/6.jpg">
                                    <img src="../images/arugam_bay/6.jpg" alt="Photo 3" /></a>
                                <a href="../images/arugam_bay/7.jpg">
                                    <img src="../images/arugam_bay/7.jpg" alt="Photo 3" /></a>
                                <a href="../images/arugam_bay/8.jpg">
                                    <img src="../images/arugam_bay/8.jpg" alt="Photo 3" /></a>
                                <a href="../images/arugam_bay/9.jpg">
                                    <img src="../images/arugam_bay/9.jpg" alt="Photo 3" /></a>
                                <a href="../images/arugam_bay/10.jpg">
                                    <img src="../images/arugam_bay/10.jpg" alt="Photo 3" /></a>
                            </div>



                            <div class="album" data-jgallery-album-title="Album 2">
                                <a href="../images/large/4.jpg">
                                    <img src="../images/thumbs/4.jpg" alt="Photo 4" /></a>
                                <a href="../images/large/5.jpg">
                                    <img src="../images/thumbs/5.jpg" alt="Photo 5" /></a>
                                <a href="../images/large/6.jpg">
                                    <img src="../images/thumbs/6.jpg" alt="Photo 6" /></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div id="SigiriyaImagesModal" class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal"
                            aria-hidden="true">
                            &times;</button>
                        <h4 class="modal-title" id="H3">Sigiriya</h4>
                    </div>
                    <div class="modal-body">
                        <div id="gallery3">
                            <div class="album" data-jgallery-album-title="Album 1">
                                <a href="../images/large/1.jpg">
                                    <img src="../images/thumbs/1.jpg" alt="Photo 1" /></a>
                                <a href="../images/large/2.jpg">
                                    <img src="../images/thumbs/2.jpg" alt="Photo 2" /></a>
                                <a href="../images/large/3.jpg">
                                    <img src="../images/thumbs/3.jpg" alt="Photo 3" /></a>
                            </div>
                            <div class="album" data-jgallery-album-title="Album 2">
                                <a href="../images/large/4.jpg">
                                    <img src="../images/thumbs/4.jpg" alt="Photo 4" /></a>
                                <a href="../images/large/5.jpg">
                                    <img src="../images/thumbs/5.jpg" alt="Photo 5" /></a>
                                <a href="../images/large/6.jpg">
                                    <img src="../images/thumbs/6.jpg" alt="Photo 6" /></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div id="YalaImagesModal" class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal"
                            aria-hidden="true">
                            &times;</button>
                        <h4 class="modal-title" id="H4">Yala Sanctuary</h4>
                    </div>
                    <div class="modal-body">
                        <div id="gallery4">
                            <div class="album" data-jgallery-album-title="Album 1">
                                <a href="../images/large/1.jpg">
                                    <img src="../images/thumbs/1.jpg" alt="Photo 1" /></a>
                                <a href="../images/large/2.jpg">
                                    <img src="../images/thumbs/2.jpg" alt="Photo 2" /></a>
                                <a href="../images/large/3.jpg">
                                    <img src="../images/thumbs/3.jpg" alt="Photo 3" /></a>
                            </div>
                            <div class="album" data-jgallery-album-title="Album 2">
                                <a href="../images/large/4.jpg">
                                    <img src="../images/thumbs/4.jpg" alt="Photo 4" /></a>
                                <a href="../images/large/5.jpg">
                                    <img src="../images/thumbs/5.jpg" alt="Photo 5" /></a>
                                <a href="../images/large/6.jpg">
                                    <img src="../images/thumbs/6.jpg" alt="Photo 6" /></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div id="PinnawalaImagesModal" class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal"
                            aria-hidden="true">
                            &times;</button>
                        <h4 class="modal-title" id="H5">Pinnawala Orphanage</h4>
                    </div>
                    <div class="modal-body">
                        <div id="gallery5">
                            <div class="album" data-jgallery-album-title="Album 1">
                                <a href="../images/large/1.jpg">
                                    <img src="../images/thumbs/1.jpg" alt="Photo 1" /></a>
                                <a href="../images/large/2.jpg">
                                    <img src="../images/thumbs/2.jpg" alt="Photo 2" /></a>
                                <a href="../images/large/3.jpg">
                                    <img src="../images/thumbs/3.jpg" alt="Photo 3" /></a>
                            </div>
                            <div class="album" data-jgallery-album-title="Album 2">
                                <a href="../images/large/4.jpg">
                                    <img src="../images/thumbs/4.jpg" alt="Photo 4" /></a>
                                <a href="../images/large/5.jpg">
                                    <img src="../images/thumbs/5.jpg" alt="Photo 5" /></a>
                                <a href="../images/large/6.jpg">
                                    <img src="../images/thumbs/6.jpg" alt="Photo 6" /></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div id="MirissaImagesModal" class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal"
                            aria-hidden="true">
                            &times;</button>
                        <h4 class="modal-title" id="H7">Mirissa Whale Watching</h4>
                    </div>
                    <div class="modal-body">
                        <div id="gallery6">
                            <div class="album" data-jgallery-album-title="Album 1">
                                <a href="../images/large/1.jpg">
                                    <img src="../images/thumbs/1.jpg" alt="Photo 1" /></a>
                                <a href="../images/large/2.jpg">
                                    <img src="../images/thumbs/2.jpg" alt="Photo 2" /></a>
                                <a href="../images/large/3.jpg">
                                    <img src="../images/thumbs/3.jpg" alt="Photo 3" /></a>
                            </div>
                            <div class="album" data-jgallery-album-title="Album 2">
                                <a href="../images/large/4.jpg">
                                    <img src="../images/thumbs/4.jpg" alt="Photo 4" /></a>
                                <a href="../images/large/5.jpg">
                                    <img src="../images/thumbs/5.jpg" alt="Photo 5" /></a>
                                <a href="../images/large/6.jpg">
                                    <img src="../images/thumbs/6.jpg" alt="Photo 6" /></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div id="AdamImagesModal" class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal"
                            aria-hidden="true">
                            &times;</button>
                        <h4 class="modal-title" id="H8">Adam's Peak</h4>
                    </div>
                    <div class="modal-body">
                        <div id="gallery7">
                            <div class="album" data-jgallery-album-title="Album 1">
                                <a href="../images/large/1.jpg">
                                    <img src="../images/thumbs/1.jpg" alt="Photo 1" /></a>
                                <a href="../images/large/2.jpg">
                                    <img src="../images/thumbs/2.jpg" alt="Photo 2" /></a>
                                <a href="../images/large/3.jpg">
                                    <img src="../images/thumbs/3.jpg" alt="Photo 3" /></a>
                            </div>
                            <div class="album" data-jgallery-album-title="Album 2">
                                <a href="../images/large/4.jpg">
                                    <img src="../images/thumbs/4.jpg" alt="Photo 4" /></a>
                                <a href="../images/large/5.jpg">
                                    <img src="../images/thumbs/5.jpg" alt="Photo 5" /></a>
                                <a href="../images/large/6.jpg">
                                    <img src="../images/thumbs/6.jpg" alt="Photo 6" /></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div id="TrincoImagesModal" class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal"
                            aria-hidden="true">
                            &times;</button>
                        <h4 class="modal-title" id="H9">Nilawali Beach</h4>
                    </div>
                    <div class="modal-body">
                        <div id="gallery8">
                            <div class="album" data-jgallery-album-title="Album 1">
                                <a href="../images/large/1.jpg">
                                    <img src="../images/thumbs/1.jpg" alt="Photo 1" /></a>
                                <a href="../images/large/2.jpg">
                                    <img src="../images/thumbs/2.jpg" alt="Photo 2" /></a>
                                <a href="../images/large/3.jpg">
                                    <img src="../images/thumbs/3.jpg" alt="Photo 3" /></a>
                            </div>
                            <div class="album" data-jgallery-album-title="Album 2">
                                <a href="../images/large/4.jpg">
                                    <img src="../images/thumbs/4.jpg" alt="Photo 4" /></a>
                                <a href="../images/large/5.jpg">
                                    <img src="../images/thumbs/5.jpg" alt="Photo 5" /></a>
                                <a href="../images/large/6.jpg">
                                    <img src="../images/thumbs/6.jpg" alt="Photo 6" /></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


    </div>


</asp:Content>
