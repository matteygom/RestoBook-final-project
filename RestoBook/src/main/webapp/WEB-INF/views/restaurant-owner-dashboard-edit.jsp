
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
    <meta name="description"
          content="RestoBook is a booking platform which brings restaurants and food lovers together. Booking tables online is easier than any other platforms.">
    <meta name="keywords"
          content="food, booking online, restaurant, reservation, book a table, foodies, cafe, recipes, menu, dishes, chefs and cooking experts ">
    <meta name="author" content="iglyphic">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <!-- Fav and Touch Icons -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="../../../images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../../../images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../../../images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="../../../images/ico/apple-touch-icon-57-precomposed.png">
    <link rel="shortcut icon" href="../../../images/ico/favicon.png">

    <!-- CSS Plugins -->
    <link rel="stylesheet" type="text/css" href="../../../bootstrap/css/bootstrap.min.css" media="screen">
    <link href="../../../css/animate.css" rel="stylesheet">
    <link href="../../../css/main.css" rel="stylesheet">
    <link href=../../../"css/component.css" rel="stylesheet">

    <!-- CSS Font Icons -->
    <link rel="stylesheet" href="../../../icons/linearicons/style.css">
    <link rel="stylesheet" href="../../../icons/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="../../../icons/simple-line-icons/css/simple-line-icons.css">
    <link rel="stylesheet" href="../../../icons/ionicons/css/ionicons.css">
    <link rel="stylesheet" href="../../../icons/pe-icon-7-stroke/css/pe-icon-7-stroke.css">
    <link rel="stylesheet" href="../../../icons/rivolicons/style.css">
    <link rel="stylesheet" href="../../../icons/flaticon-line-icon-set/flaticon-line-icon-set.css">
    <link rel="stylesheet" href="../../../icons/flaticon-streamline-outline/flaticon-streamline-outline.css">
    <link rel="stylesheet" href="../../../icons/flaticon-thick-icons/flaticon-thick.css">
    <link rel="stylesheet" href="../../../icons/flaticon-ventures/flaticon-ventures.css">

    <!-- CSS Custom -->
    <link href="../../../css/style.css" rel="stylesheet">

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
                        <a href="index-02.html"><img src="../../../images/RestoBookPng.png" alt="Logo"/></a>
                    </div>
                </div>

                <div id="navbar" class="navbar-nav-wrapper navbar-arrow">

                    <ul class="nav navbar-nav" id="responsive-menu">

                        <li>
                            <a href="index-02.html">Start</a>
                            <!--								<ul>-->
                            <!--									<li><a href="index.html">Home - Default</a></li>-->
                            <!--									<li><a href="index-02.html">Home - 02</a></li>-->
                            <!--								</ul>-->
                        </li>

                        <li>
                            <a href="restaurant-list-03.html">Restauracje</a>
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
                                        <li><a href="login.html">Logowanie</a></li>
                                        <li><a href="login.html">Rejestracja</a></li>
                                        <li><a href="account-forgot-password-page.html">Zapomniałem hasła</a></li>
                                    </ul>
                                </li>

                                <li>
                                    <a href="#">Restauracja</a>
                                    <ul>
                                        <li><a href="restaurant-owner-dashboard.html">Dashboard Właściciela
                                            restauracji</a></li>
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

                                <li><a href="about-us.html">O nas</a></li>
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
                        <li><a href="login.html">login</a></li>
                        <li><a href="login.html">rejestracja</a></li>
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

        <!-- start breadcrumb -->
        <div class="breadcrumb-wrapper">

            <div class="container">

                <ol class="breadcrumb-list booking-step">
                    <li><a href="#">Start</a></li>
                    <li><span>Dashboard właściciela restauracji</span></li>
                </ol>

            </div>

        </div>
        <!-- end breadcrumb -->

        <div class="admin-container-wrapper">

            <div class="container">

                <div class="GridLex-gap-15-wrappper">

                    <div class="GridLex-grid-noGutter-equalHeight">

                        <div class="GridLex-col-3_sm-4_xs-12">

                            <div class="admin-sidebar">

                                <div class="admin-user-item for-employer">

                                    <div class="image">
                                        <img src="images/brands/06.png" alt="image" class="img-circle" />
                                    </div>

                                    <h4>${restaurant.restoName}</h4>

                                </div>

                                <div class="admin-user-action text-center">

                                    <a href="#" class="btn btn-primary btn-sm">Edytuj</a>
                                    <a href="#" class="btn btn-primary btn-sm btn-inverse">Deaktywuj</a>

                                </div>

                                <ul class="admin-user-menu clearfix">
                                    <li class="active">
                                        <a href="/owner/dashboard/${userId}"><i class="fa fa-tachometer"></i> Dashboard</a>
                                    </li>
                                    <li>
                                        <a href=/owner/profile/${userId}"><i class="fa fa-user"></i> Profil</a>
                                    </li>
                                    <li>
                                        <a href="/owner/passwordchange/${userId}"><i class="fa fa-key"></i> Zmień hasło</a>
                                    </li>
                                    <li>
                                        <a href="/owner/reservations/list/${userId}"><i class="fa fa-bookmark"></i> Rezerwacje</a>
                                    </li>
                                    <li>
                                        <a href="#"><i class="fa fa-sign-out"></i> Wyloguj</a>
                                    </li>
                                </ul>

                            </div>

                        </div>

                        <div class="GridLex-col-9_sm-8_xs-12">

                            <div class="admin-content-wrapper">

                                <div class="admin-section-title">

                                    <h2>Dashboard Restauracji</h2>
                                    <p>Edytuj kluczowe informacje dotyczące twojej restauracji.</p>

                                </div>


                                <form:form class="post-form-wrapper" role="form" method="POST" action="/owner/dashboard/restaurantEdit/${userId}" modelAttribute="restaurant" enctype="multipart/form-data">

                                    <div class="row gap-20">

                                        <div class="col-sm-6 col-md-4">
                                            <div class="form-group bootstrap-fileinput-style-01">
                                                <label for="logo">Zdjęcie</label>
                                                <form:input type="file" path="logo" id="form-register-photo-2" />
                                                <span class="font12 font-italic">** zdjęcie nie może być większe niż 250kb</span>
                                            </div>
                                        </div>

                                        <div class="clear"></div>

                                        <div class="col-sm-12 col-md-8">
                                            <div class="form-group">
                                                <label>Nazwa Restauracji:</label>
                                                <form:input type="text" path="restoName" class="form-control" />
                                            </div>
                                        </div>

                                        <div class="clear"></div>
                                        <div class="col-sm-6 col-md-4">
                                            <div class="form-group">
                                                <label for="yearOfLaunch">Rok powstania:</label>
                                                <form:input path="yearOfLaunch" type="number" min="1950" max="2024" class="form-control" id="yearOfLaunch" />
                                            </div>
                                        </div>

                                        <div class="col-sm-6 col-md-4">
                                            <div class="form-group">
                                                <label>Kuchnia:</label>
                                                <form:select path="cuisine" class="btn dropdown-toggle btn-default">
                                                    <form:option value="Amerykańska" label="Amerykańska" />
                                                    <form:option value="Indyjska" label="Indyjska" />
                                                    <form:option value="Włoska" label="Włoska" />
                                                    <form:option value="Grecka" label="Grecka" />
                                                    <form:option value="Polska" label="Polska" />
                                                </form:select>
                                            </div>
                                        </div>

                                        <div class="clear"></div>

                                        <div class="form-group">
                                            <div class="col-sm-6 col-md-4">
                                                <label>Ilość miejsc:</label>
                                                <form:select path="capacity" class="btn dropdown-toggle btn-default">
                                                    <form:option value="1-10" label="1-10" />
                                                    <form:option value="11-50" label="11-50" />
                                                    <form:option value="51-100" label="51-100" />
                                                    <form:option value="100+" label="100+" />
                                                    <form:option value="200+" label="200+" />
                                                    <form:option value="300+" label="300+" />
                                                </form:select>
                                            </div>
                                            <div class="col-sm-6 col-md-4">
                                                <label>Średnia cen:</label>
                                                <form:input path="avgPrice" class="form-control" placeholder="np. 25" />
                                            </div>
                                        </div>

                                        <div class="clear"></div>

                                        <div class="col-sm-6 col-md-4">
                                            <div class="form-group">
                                                <label>Strona internetowa:</label>
                                                <form:input path="webSite" class="form-control" placeholder="np. http://example.com" />
                                            </div>
                                        </div>

                                        <div class="col-sm-6 col-md-4">
                                            <div class="form-group">
                                                <label>Miasto:</label>
                                                <form:input path="city" class="form-control" />
                                            </div>
                                        </div>

                                        <div class="clear"></div>

                                        <div class="col-sm-6 col-md-4">
                                            <div class="form-group">
                                                <label>Nr. ulicy:</label>
                                                <form:input path="streetNumber" class="form-control" placeholder="np. 43/2/3" />
                                            </div>
                                        </div>

                                        <div class="col-sm-6 col-md-4">
                                            <div class="form-group">
                                                <label>Ulica:</label>
                                                <form:input path="street" class="form-control" />
                                            </div>
                                        </div>

                                        <div class="clear"></div>

                                        <div class="col-sm-6 col-md-4">
                                            <div class="form-group">
                                                <label>Kod Pocztowy:</label>
                                                <form:input path="zipCode" class="form-control" />
                                            </div>
                                        </div>

                                        <div class="col-sm-6 col-md-4">
                                            <div class="form-group">
                                                <label>Państwo:</label>
                                                <form:select path="country" class="btn dropdown-toggle btn-default">
                                                    <form:option value="Polska" label="Polska" />
                                                    <form:option value="Francja" label="Francja" />
                                                    <form:option value="Japonia" label="Japonia" />
                                                    <form:option value="Niemcy" label="Niemcy" />
                                                    <form:option value="USA" label="USA" />
                                                    <form:option value="Włochy" label="Włochy" />
                                                </form:select>
                                            </div>
                                        </div>

                                        <div class="clear"></div>

                                        <div class="col-sm-6 col-md-4">
                                            <div class="form-group">
                                                <label>Numer Telefonu:</label>
                                                <form:input path="phoneNumber" class="form-control" />
                                            </div>
                                        </div>

                                        <div class="clear"></div>

                                        <div class="col-sm-12 col-md-12">
                                            <div class="form-group bootstrap3-wysihtml5-wrapper">
                                                <label>Krótki opis:</label>
                                                <form:textarea path="description" class="bootstrap3-wysihtml5 form-control" placeholder="Wpisz tekst..." style="height: 200px;" />
                                            </div>
                                        </div>

                                        <div class="clear"></div>

                                        <div class="col-sm-12 mt-10">
                                            <button type="submit" class="btn btn-primary">Zapisz</button>
                                            <a href="/owner/dashboard/${restaurant.id}" class="btn btn-warning">Anuluj</a>
                                        </div>
                                    </div>

                                </form:form>

                            </div>

                        </div>

                    </div>

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
                                <li><a href="#"><i class="ri ri-twitter" data-toggle="tooltip" data-placement="top"
                                                   title="twitter"></i></a></li>
                                <li><a href="#"><i class="ri ri-facebook" data-toggle="tooltip" data-placement="top"
                                                   title="facebook"></i></a></li>
                                <li><a href="#"><i class="ri ri-google-plus" data-toggle="tooltip"
                                                   data-placement="top" title="google plus"></i></a></li>
                                <li><a href="#"><i class="ri ri-youtube-play" data-toggle="tooltip"
                                                   data-placement="top" title="youtube"></i></a></li>
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
<script type="text/javascript" src="../../../js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="../../../js/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript" src="../../../bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="../../../js/bootstrap-modalmanager.js"></script>
<script type="text/javascript" src="../../../js/bootstrap-modal.js"></script>
<script type="text/javascript" src="../../../js/smoothscroll.js"></script>
<script type="text/javascript" src="../../../js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="../../../js/jquery.waypoints.min.js"></script>
<script type="text/javascript" src="../../../js/wow.min.js"></script>
<script type="text/javascript" src="../../../js/jquery.slicknav.min.js"></script>
<script type="text/javascript" src="../../../js/jquery.placeholder.min.js"></script>
<script type="text/javascript" src="../../../js/bootstrap-tokenfield.js"></script>
<script type="text/javascript" src="../../../js/typeahead.bundle.min.js"></script>
<script type="text/javascript" src="../../../js/bootstrap-select.min.js"></script>
<script type="text/javascript" src="../../../js/jquery-filestyle.min.js"></script>
<script type="text/javascript" src="../../../js/bootstrap-select.js"></script>
<script type="text/javascript" src="../../../js/ion.rangeSlider.min.js"></script>
<script type="text/javascript" src="../../../js/handlebars.min.js"></script>
<script type="text/javascript" src="../../../js/jquery.countimator.js"></script>
<script type="text/javascript" src="../../../js/jquery.countimator.wheel.js"></script>
<script type="text/javascript" src="../../../js/slick.min.js"></script>
<script type="text/javascript" src="../../../js/easy-ticker.js"></script>
<script type="text/javascript" src="../../../js/jquery.introLoader.min.js"></script>
<script type="text/javascript" src="../../../js/jquery.responsivegrid.js"></script>
<script type="text/javascript" src="../../../js/customs.js"></script>



</body>


</html>