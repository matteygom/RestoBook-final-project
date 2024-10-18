<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!doctype html>
<html lang="en">


<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Title Of Site -->
    <title>RestoBook - Rezerwacje Online</title>
    <meta name="description" content="RestoBook is a booking platform which brings restaurants and food lovers together. Booking tables online is easier than any other platforms.">
    <meta name="keywords" content="food, booking online, restaurant, reservation, book a table, foodies, cafe, recipes, menu, dishes, chefs and cooking experts ">
    <meta name="author" content="iglyphic">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <!-- Fav and Touch Icons -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
    <link rel="shortcut icon" href="images/ico/favicon.png">

    <!-- CSS Plugins -->
    <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css" media="screen">
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/main.css" rel="stylesheet">
    <link href="css/component.css" rel="stylesheet">

    <!-- CSS Font Icons -->
    <link rel="stylesheet" href="icons/linearicons/style.css">
    <link rel="stylesheet" href="icons/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="icons/simple-line-icons/css/simple-line-icons.css">
    <link rel="stylesheet" href="icons/ionicons/css/ionicons.css">
    <link rel="stylesheet" href="icons/pe-icon-7-stroke/css/pe-icon-7-stroke.css">
    <link rel="stylesheet" href="icons/rivolicons/style.css">
    <link rel="stylesheet" href="icons/flaticon-line-icon-set/flaticon-line-icon-set.css">
    <link rel="stylesheet" href="icons/flaticon-streamline-outline/flaticon-streamline-outline.css">
    <link rel="stylesheet" href="icons/flaticon-thick-icons/flaticon-thick.css">
    <link rel="stylesheet" href="icons/flaticon-ventures/flaticon-ventures.css">

    <!-- CSS Custom -->
    <link href="css/style.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>


<body class="not-transparent-header">

<!-- start Container Wrapper -->
<div class="container-wrapper">

    <!-- start Header -->
    <header id="header">
        <!-- start Navbar (Header) -->
        <nav class="navbar navbar-default navbar-fixed-top navbar-sticky-function">

            <div class="container">

                <div class="logo-wrapper">
                    <div class="logo">
                        <a href="/home"><img src="images/RestoBookPng.png" alt="Logo" /></a>
                    </div>
                </div>

                <div id="navbar" class="navbar-nav-wrapper navbar-arrow">

                    <ul class="nav navbar-nav" id="responsive-menu">

                        <li>
                            <a href="/home">Start</a>
                            <!--								<ul>-->
                            <!--									<li><a href="index.html">Home - Default</a></li>-->
                            <!--									<li><a href="index-02.html">Home - 02</a></li>-->
                            <!--								</ul>-->
                        </li>

                        <li>
                            <a href="/restaurants">Restauracje</a>
                            <!--								<ul>-->
                            <!--									<li><a href="restaurant.html">Restaurant - Default</a></li>-->
                            <!--									<li><a href="restaurant-grid.html">Restaurant - Grid</a></li>-->
                            <!--									<li><a href="restaurant-list-03.html">Restaurant - Sidebar</a></li>-->
                            <!--								</ul>-->
                        </li>

                        <!--							<li>-->
                        <!--								<a href="order-online.html">order</a>-->
                        <!--								<ul>-->
                        <!--									<li><a href="order-online.html">Order Online</a></li>-->
                        <!--									<li><a href="order-process.html">Order Process</a></li>-->
                        <!--									<li><a href="order-success.html">Order Success</a></li>-->
                        <!--									<li><a href="reservation.html">Reservation</a></li>-->
                        <!--									<li><a href="all-cuisines.html">All Cuisine</a></li>-->
                        <!--									<li><a href="restaurant-search.html">Restaurant Search</a></li>-->
                        <!--									<li><a href="how-it-work.html">How it works</a></li>-->
                        <!--								</ul>-->
                        <!--							</li>-->

                        <!--							<li>-->
                        <!--								<a href="blog.html">Blog</a>-->
                        <!--								<ul>-->
                        <!--									<li><a href="blog.html">Blog</a></li>-->
                        <!--									<li><a href="blog-single.html">Blog Single</a></li>-->
                        <!--								</ul>-->
                        <!--							</li>-->

                        <li>
                            <a href="#">Strona</a>
                            <ul>
                                <li>
                                    <a href="user.html">Użytkownik</a>
                                    <ul>
                                        <li><a href="user-empty.html">Dashboard - Pusty</a></li>
                                        <li><a href="user-profile.html">Profil</a></li>
                                        <li><a href="user-profile-update.html">Profil Edycja</a></li>
                                        <li><a href="user-favourite-restaurant.html">Ulubione Restauracje</a></li>
                                        <li><a href="user-change-pass.html">Zmień hasło</a></li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="#">Konto</a>
                                    <ul>
                                        <li><a href="/loginRegister">Logowanie</a></li>
                                        <li><a href="/loginRegister">Rejestracja</a></li>
                                        <li><a href="account-forgot-password-page.html">Zapomniałem hasła</a></li>
                                    </ul>
                                </li>

                                <li>
                                    <a href="#">Restauracja</a>
                                    <ul>
                                        <li><a href="restaurant-owner-dashboard.html">Dashboard Właściciela restauracji</a></li>
                                        <li><a href="restaurant-detail.html">Restauracja Szczegóły</a></li>
                                    </ul>
                                </li>
                                <!--									<li>-->
                                <!--										<a href="#">NetPay Form <span class="new-feature">New</span></a>-->
                                <!--										<ul>-->
                                <!--											<li><a href="netpay-form-step-one.html">NetPay Form One</a></li>-->
                                <!--											<li><a href="netpay-form-step-two.html">NetPay Form Two</a></li>-->
                                <!--										</ul>-->
                                <!--									</li>-->

                                <li><a href="/aboutUs">O nas</a></li>
                                <!--									<li><a href="staff.html">Our Staff</a></li>-->
                                <!--									<li><a href="faq.html">Faq</a></li>-->
                                <li><a href="contact.html">Kontakt</a></li>
                                <!--									<li><a href="careers.html">Careers</a></li>-->
                                <li><a href="privacy-policy.html">Polityka Prywatności</a></li>
                                <!--									<li><a href="pricing.html">Pricing</a></li>-->
                                <!--									<li><a href="404-error-page.html">404 - Error Page</a></li>-->
                            </ul>
                        </li>

                    </ul>

                </div><!--/.nav-collapse -->

                <div class="nav-mini-wrapper">
                    <ul class="nav-mini sign-in">
                        <li><a href="/loginRegister">login</a></li>
                        <li><a href="/loginRegister">rejestracja</a></li>
                    </ul>
                </div>

            </div>

            <div id="slicknav-mobile"></div>

        </nav>
        <!-- end Navbar (Header) -->
    </header>
    <!-- end Header -->

    <!-- start Main Wrapper -->
    <div class="main-wrapper">

        <!-- start hero-header -->
        <div class="breadcrumb-wrapper">

            <div class="container">

                <ol class="breadcrumb-list">
                    <li><a href="index-02.html">Start</a></li>
                    <li><span>Skontaktuj się z nami</span></li>
                </ol>

            </div>

        </div>
        <!-- end hero-header -->

        <div class="section sm pb-20">

            <div class="container">

                <div class="row">

                    <div class="col-sm-10 col-sm-offset-1 col-md-8 col-md-offset-2">

                        <div class="section-title">

                            <h2>Skontaktuj się z nami i uzyskaj pomoc</h2>
                            <p>zapewniamy wysoką responsywność o każdej porze </p>

                        </div>

                    </div>

                </div>

                <div class="row mb-40 contact-info">
                    <div class="col-sm-4">
                        <div class="icon icon-default" data-icon="G"></div>
                        <h4>Biuro Warszawa</h4><address><p>Adres: 00-550, Marszałkowska 125, Polska </p></address></div>
                    <div class="col-sm-4">
                        <div class="icon icon-default" data-icon="Q"></div>
                        <h4>Telefony &amp; Email</h4>
                        <dl class="dl-horizontal"><dt>Phone:</dt>
                            <dd>
                                <p>+48 567 943 231<br>+48 567 943 232</p>
                            </dd><dt>Fax:</dt>
                            <dd>
                                <p>++48 567 943 234</p>
                            </dd><dt>Email:</dt>
                            <dd>
                                <p><a href="mailto:info@thefoody.com">matteygom@gmail.com</a></p>
                            </dd>
                        </dl>
                    </div>
                    <div class="col-sm-4">
                        <div class="icon icon-default" data-icon="2"></div>
                        <h4>Informacje kontaktowe</h4>
                        <p>Pracujemy od 8:00 do 17:00 (UTC+02:00).</p>
                    </div>
                </div>

            </div>

        </div>

        <div class="contact-map">

            <div id="map" data-lat="51.4435746" data-lon="0.1522334" style="width: 100%; height: 500px;"></div>

            <div class="infobox-wrapper shorter-infobox contact-infobox">
                <div id="infobox">
                    <div class="infobox-address">
                        <h6>We Are Here</h6>
                    </div>

                </div>
            </div>

        </div>

        <div class="container">
            <div class="row mt-50 mb-50">

                <div class="col-sm-12 col-md-12 ">

                    <form class="contact-form-wrapper" data-toggle="validator" action="/sendContactMessagePage" method="post">

                        <div class="row">

                            <div class="col-sm-6">

                                <div class="form-group">
                                    <label for="inputName">Twoje imię <span class="font10 text-danger">(required)</span></label>
                                    <input id="inputName" type="text" name="name" class="form-control" data-error="Imie jest jest wymagana" required>
                                    <div class="help-block with-errors"></div>
                                </div>

                            </div>

                            <div class="col-sm-6">

                                <div class="form-group">
                                    <label for="inputEmail">Twój email <span class="font10 text-danger">(required)</span></label>
                                    <input id="inputEmail" type="email" name="email" class="form-control" data-error="Twój email jest wymagany  oraz musi spełniać format x@x.xx" required>
                                    <div class="help-block with-errors"></div>
                                </div>

                            </div>

                            <div class="col-sm-12">

                                <div class="form-group">
                                    <label>Temat</label>
                                    <input type="text" name="subject" class="form-control" />
                                </div>

                            </div>

                            <div class="col-sm-12">

                                <div class="form-group">
                                    <label for="inputMessage">Wiadomość <span class="font10 text-danger">(required)</span></label>
                                    <textarea id="inputMessage" name="message" class="form-control" rows="8" data-minlength="50" data-error="Twoja wiadomość musi zawierać min 50 znaków" required></textarea>
                                    <div class="help-block with-errors"></div>
                                </div>

                            </div>

                            <div class="col-sm-12 text-right">
                                <button type="submit" class="btn btn-primary mt-5">Wyślij wiadomość</button>
                            </div>

                        </div>

                    </form>

                </div>

            </div>
        </div>


        <!-- start footer -->
        <footer class="footer-wrapper-area">

            <!-- start footer area -->
            <div class="footer-area-content">
                <!-- Newsletter -->
                <div id="footer-newsletter" class="pt-40 pb-40">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12 text-center">
                                <h3><i class="fa fa-envelope-o"></i>Bądźmy w kontakcie, dołącz do newsletter'a</h3>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 col-md-offset-3">
                                <div class="newsletter-02">
                                    <div class="form-group">
                                        <input class="form-control" placeholder="wpisz swój email ">
                                        <button class="btn btn-primary">subskrybuj</button>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
                <!-- END: Newsletter -->

                <div class="container">
                    <div class="footer-wrapper style-3">
                        <footer class="type-1">
                            <div class="footer-columns-entry">
                                <div class="row">
                                    <div class="col-md-3 col-sm-3">
                                        <h3 class="column-title">Popularne miasta</h3>
                                        <ul class="column">
                                            <li><a href="#">Warszawa</a></li>
                                            <li><a href="#">Poznań</a></li>
                                            <li><a href="#">Wrocław</a></li>
                                        </ul>
                                        <!--											<h3 class="column-title">Popular Areas</h3>-->
                                        <!--											<ul class="column">-->
                                        <!--												<li><a href="#">Food delivery Abergavenny</a></li>-->
                                        <!--												<li><a href="#">Food delivery Cardiff</a></li>-->
                                        <!--												<li><a href="#">Food delivery Crewe</a></li>-->
                                        <!--											</ul>-->
                                        <div class="clear"></div>
                                    </div>
                                    <div class="col-md-3 col-sm-3">
                                        <h3 class="column-title">Popularne kuchnie</h3>
                                        <ul class="column">
                                            <li><a href="all-cuisines.html">Polska kuchnia</a></li>
                                            <li><a href="#">Włoska kuchnia</a></li>
                                            <li><a href="#">Chińska kuchnia</a></li>
                                            <li><a href="#">Koreańska kuchnia</a></li>
                                            <li><a href="#">Francuska kuchnia</a></li>
                                            <li><a href="#">Gruzińska kuchnia</a></li>
                                            <li><a href="#">Turecka kuchnia</a></li>
                                        </ul>
                                        <div class="clear"></div>
                                    </div>

                                    <div class="col-md-3 col-sm-3">
                                        <h3 class="column-title">szukaj po kategorii</h3>
                                        <ul class="column">
                                            <li><a href="restaurant-search.html">Szukaj restauracji </a></li>
                                            <li><a href="#">Szukaj po słowie kliuczowym</a></li>
                                            <li><a href="#">Szukaj po kodzie pocztowym</a></li>
                                            <li><a href="#">Szukaj po kuchni</a></li>
                                            <li><a href="#">Szukaj po mieście</a></li>
                                        </ul>
                                        <div class="clear"></div>
                                    </div>

                                    <div class="col-md-3 col-sm-3">
                                        <h3 class="column-title">Resto book</h3>
                                        <ul class="column">
                                            <li><a href="about-us.html">O nas</a></li>
                                            <li><a href="#">Warunki</a></li>
                                            <li><a href="privacy-policy.html"> Polityka prywatności</a></li>

                                        </ul>
                                        <div class="clear"></div>
                                    </div>
                                </div>
                            </div>
                        </footer>
                    </div>
                </div>


            </div>
            <!-- footer area end -->

            <div class="bottom-footer">

                <div class="container">

                    <div class="row">

                        <div class="col-sm-4 col-md-4">

                            <p class="copy-right">&#169; Copyright 2024 MatteyGom</p>

                        </div>

                        <div class="col-sm-4 col-md-4">

                            <ul class="bottom-footer-menu">
                                <li><a href="#">Cookies</a></li>
                                <li><a href="#">Polityka</a></li>
                                <li><a href="#">Warunki</a></li>
                            </ul>

                        </div>

                        <div class="col-sm-4 col-md-4">
                            <ul class="bottom-footer-menu for-social">
                                <li><a href="#"><i class="ri ri-twitter" data-toggle="tooltip" data-placement="top" title="twitter"></i></a></li>
                                <li><a href="#"><i class="ri ri-facebook" data-toggle="tooltip" data-placement="top" title="facebook"></i></a></li>
                                <li><a href="#"><i class="ri ri-google-plus" data-toggle="tooltip" data-placement="top" title="google plus"></i></a></li>
                                <li><a href="#"><i class="ri ri-youtube-play" data-toggle="tooltip" data-placement="top" title="youtube"></i></a></li>
                            </ul>
                        </div>

                    </div>

                </div>

            </div>

        </footer>
        <!-- end footer -->

    </div>
    <!-- end Main Wrapper -->

</div> <!-- / .wrapper -->
<!-- end Container Wrapper -->


<!-- start Back To Top -->
<div id="back-to-top">
    <a href="#"><i class="ion-ios-arrow-up"></i></a>
</div>
<!-- end Back To Top -->


<!-- JS -->
<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="js/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrap-modalmanager.js"></script>
<script type="text/javascript" src="js/bootstrap-modal.js"></script>
<script type="text/javascript" src="js/smoothscroll.js"></script>
<script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="js/jquery.waypoints.min.js"></script>
<script type="text/javascript" src="js/wow.min.js"></script>
<script type="text/javascript" src="js/jquery.slicknav.min.js"></script>
<script type="text/javascript" src="js/jquery.placeholder.min.js"></script>
<script type="text/javascript" src="js/bootstrap-tokenfield.js"></script>
<script type="text/javascript" src="js/typeahead.bundle.min.js"></script>
<script type="text/javascript" src="js/bootstrap-select.min.js"></script>
<script type="text/javascript" src="js/jquery-filestyle.min.js"></script>
<script type="text/javascript" src="js/bootstrap-select.js"></script>
<script type="text/javascript" src="js/ion.rangeSlider.min.js"></script>
<script type="text/javascript" src="js/handlebars.min.js"></script>
<script type="text/javascript" src="js/jquery.countimator.js"></script>
<script type="text/javascript" src="js/jquery.countimator.wheel.js"></script>
<script type="text/javascript" src="js/slick.min.js"></script>
<script type="text/javascript" src="js/easy-ticker.js"></script>
<script type="text/javascript" src="js/jquery.introLoader.min.js"></script>
<script type="text/javascript" src="js/jquery.responsivegrid.js"></script>
<script type="text/javascript" src="js/customs.js"></script>

<script src="js/validator.min.js"></script>

<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
<script type="text/javascript" src="js/infobox.js"></script>

<script>
    function initialize() {

// Create an array of styles.
        var styles = [{"featureType":"all","elementType":"labels","stylers":[{"lightness":63},{"hue":"#ff0000"}]},{"featureType":"administrative","elementType":"all","stylers":[{"hue":"#000bff"},{"visibility":"on"}]},{"featureType":"administrative","elementType":"geometry","stylers":[{"visibility":"on"}]},{"featureType":"administrative","elementType":"labels","stylers":[{"color":"#4a4a4a"},{"visibility":"on"}]},{"featureType":"administrative","elementType":"labels.text","stylers":[{"weight":"0.01"},{"color":"#727272"},{"visibility":"on"}]},{"featureType":"administrative.country","elementType":"labels","stylers":[{"color":"#ff0000"}]},{"featureType":"administrative.country","elementType":"labels.text","stylers":[{"color":"#ff0000"}]},{"featureType":"administrative.province","elementType":"geometry.fill","stylers":[{"visibility":"on"}]},{"featureType":"administrative.province","elementType":"labels.text","stylers":[{"color":"#545454"}]},{"featureType":"administrative.locality","elementType":"labels.text","stylers":[{"visibility":"on"},{"color":"#737373"}]},{"featureType":"administrative.neighborhood","elementType":"labels.text","stylers":[{"color":"#7c7c7c"},{"weight":"0.01"}]},{"featureType":"administrative.land_parcel","elementType":"labels.text","stylers":[{"color":"#404040"}]},{"featureType":"landscape","elementType":"all","stylers":[{"lightness":16},{"hue":"#ff001a"},{"saturation":-61}]},{"featureType":"poi","elementType":"labels.text","stylers":[{"color":"#828282"},{"weight":"0.01"}]},{"featureType":"poi.government","elementType":"labels.text","stylers":[{"color":"#4c4c4c"}]},{"featureType":"poi.park","elementType":"all","stylers":[{"hue":"#00ff91"}]},{"featureType":"poi.park","elementType":"labels.text","stylers":[{"color":"#7b7b7b"}]},{"featureType":"road","elementType":"all","stylers":[{"visibility":"on"}]},{"featureType":"road","elementType":"labels","stylers":[{"visibility":"off"}]},{"featureType":"road","elementType":"labels.text","stylers":[{"color":"#999999"},{"visibility":"on"},{"weight":"0.01"}]},{"featureType":"road.highway","elementType":"all","stylers":[{"hue":"#ff0011"},{"lightness":53}]},{"featureType":"road.highway","elementType":"labels.text","stylers":[{"color":"#626262"}]},{"featureType":"transit","elementType":"labels.text","stylers":[{"color":"#676767"},{"weight":"0.01"}]},{"featureType":"water","elementType":"all","stylers":[{"hue":"#0055ff"}]}];

        var loc, map, marker, infobox;

        var styledMap = new google.maps.StyledMapType(styles,  {name: "Styled Map"});

        loc = new google.maps.LatLng($("#map").attr("data-lat"), $("#map").attr("data-lon"));

        map = new google.maps.Map(document.getElementById("map"), {
            zoom: 14,
            center: loc,
            scrollwheel: false,
            //draggable:true,
            navigationControl: false,
            scaleControl: false,
            mapTypeControl:false,
            streetViewControl: false,
            mapTypeControlOptions: {
                mapTypeIds: [google.maps.MapTypeId.ROADMAP, 'map_style']
            },
            mapTypeId: google.maps.MapTypeId.ROADMAP,
        });

//Associate the styled map with the MapTypeId and set it to display.
        map.mapTypes.set('map_style', styledMap);
        map.setMapTypeId('map_style');

        marker = new google.maps.Marker({
            map: map,
            position: loc,
            //disableDefaultUI:true,

            icon:'images/map-marker/00.png',
            //pixelOffset: new google.maps.Size(-140, -100),
            visible: true

            //animation: google.maps.Animation.DROP
        });

        infobox = new InfoBox({
            content: document.getElementById("infobox"),
            disableAutoPan: true,
            //maxWidth: 150,
            pixelOffset: new google.maps.Size(0, -50),
            zIndex: null,
            alignBottom: true,
            isHidden: false,
            //closeBoxMargin: "12px 4px 2px 2px",
            closeBoxURL: "images/infobox-close.png",
            closeBoxClass:"infoBox-close",
            infoBoxClearance: new google.maps.Size(1, 1)
        });

        openInfoBox(marker);

        google.maps.event.addListener(marker, 'click', function() {
            openInfoBox(this);
        });

        function openInfoBox(thisMarker){
            map.panTo(loc);
            map.panBy(0,-80);
            infobox.open(map, thisMarker);
        }

        var center;
        function calculateCenter() {
            center = map.getCenter();
        }
        google.maps.event.addDomListener(map, 'idle', function() {
            calculateCenter();
        });
        google.maps.event.addDomListener(window, 'resize', function() {
            map.setCenter(center);
        });

    }
    google.maps.event.addDomListener(window, 'load', initialize);
</script>

</body>


</html>
