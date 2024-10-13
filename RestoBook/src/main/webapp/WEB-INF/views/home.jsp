

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

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


<body class="home">

<div id="introLoader" class="introLoading"></div>

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
                                        <li><a href="user-empty.html">Dashboard</a></li>
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
        <div class="hero" style="background-image:url('/images/hero-header/index-banner.png');">
            <div class="container">

                <h1>Podążaj za zmysłami</h1>
                <p>Odkryj niesamowity wybór lokalnych restauracji serwujących twoje ulubione jedzenie i dokonaj rezerwacji z łatwością</p>

                <div class="main-search-form-wrapper">

                    <form>

                        <div class="form-holder">
                            <div class="row gap-0">

                                <div class="col-xss-6 col-xs-6 col-sm-6">
                                    <input class="form-control" placeholder="np. Warszawa" />
                                </div>

                                <div class="col-xss-6 col-xs-6 col-sm-6">
                                    <input class="form-control" placeholder="Znajdź restauracje" />
                                </div>

                            </div>

                        </div>

                        <div class="btn-holder">
                            <button class="btn"><i class="ion-android-search"></i></button>
                        </div>

                    </form>

                </div>


            </div>

        </div>
        <!-- end hero-header -->

        <div class="post-hero bg-light">

            <div class="container">

                <div class="featured-sm-wrapper mt-15 mb-15">

                    <div class="row">
                        <div class="order-process">
                            <div class="col-md-4 col-sm-4">
                                <div class="service-item-box style-4 clearfix">
                                    <a href="#">
                                        <i class="fa fa-search"></i>
                                    </a>
                                    <div class="service-text">
                                        <h3>Wybierz restauracje</h3>
                                    </div>
                                </div>
                            </div>
                            <!-- end service item -->

                            <div class="col-md-4 col-sm-4">
                                <div class="service-item-box style-4 clearfix">
                                    <a href="#">
                                        <i class="fa fa-car" aria-hidden="true"></i>
                                    </a>
                                    <div class="service-text">
                                        <h3>Zrób rezerwacje</h3>
                                    </div>
                                </div>
                            </div>
                            <!-- end service item -->

                            <div class="col-md-4 col-sm-4">
                                <div class="service-item-box style-4 clearfix">
                                    <a href="#">
                                        <i class="fa fa-cutlery" aria-hidden="true"></i>
                                    </a>
                                    <div class="service-text">
                                        <h3>Delektuj sie smakiem</h3>
                                    </div>
                                </div>
                            </div>
                            <!-- end service item -->


                        </div>

                    </div>

                </div>

            </div>

        </div>

        <div class="pt-80 pb-80">

            <div class="container">

                <div class="row">

                    <div class="col-md-8">

                        <div class="section-title">

                            <h2 class="text-left text-center-sm">Wyróżnione restauracje<br> (Najwyższy Rating) </h2>

                        </div>

                        <div class="restaurant-common-wrapper">
                        <c:forEach var="restaurant" items="${highestRatedRestaurants}" varStatus="status">
                            <a href="#" class="restaurant-common-wrapper-item highlight clearfix">
                                <div class="GridLex-grid-middle">
                                    <div class="GridLex-col-6_xs-12">
                                        <div class="restaurant-type">
                                            <div class="image">
                                                <img src="data:image/jpeg;base64,${highestRatedRestaurantsLogos[status.index]}" alt="${restaurant.restoName} Logo"
                                                     onclick="window.location.href='restaurantDetail/${restaurant.id}'">Kliknij
                                                <br>LOGO
                                            </div>
                                            <div class="content">
                                                <h4>${restaurant.restoName}</h4>
                                                <p>${restaurant.cuisine}</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="GridLex-col-4_xs-8_xss-12 mt-10-xss">
                                        <div class="job-location">
                                            <i class="fa fa-map-marker text-primary"></i> ${restaurant.street}
                                        </div>
                                    </div>
                                    <div class="GridLex-col-2_xs-4_xss-12">
                                        <div class="res-btn label label-danger" onclick="window.location.href='reservation/${restaurant.id}'">
                                            Rezerwacja
                                        </div>
                                        <span class="font12 block spacing1 font400 text-center">Średnia cena: ${restaurant.avgPrice}</span>
                                    </div>
                                </div>
                            </a>
                        </c:forEach>
<%--                            <a href="#" class="restaurant-common-wrapper-item clearfix">--%>
<%--                                <div class="GridLex-grid-middle">--%>
<%--                                    <div class="GridLex-col-6_xs-12">--%>
<%--                                        <div class="restaurant-type">--%>
<%--                                            <div class="image">--%>
<%--                                                <img src="images/brands/02.jpg" alt="image" />--%>
<%--                                            </div>--%>
<%--                                            <div class="content">--%>
<%--                                                <h4>Food Republic</h4>--%>
<%--                                                <p>Indian</p>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <div class="GridLex-col-4_xs-8_xss-12 mt-10-xss">--%>
<%--                                        <div class="job-location">--%>
<%--                                            <i class="fa fa-map-marker text-primary"></i> Menlo park, CA--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <div class="GridLex-col-2_xs-4_xss-12">--%>
<%--                                        <div class="res-btn label label-danger">--%>
<%--                                            Rezerwacja--%>
<%--                                        </div>--%>
<%--                                        <span class="font12 block spacing1 font400 text-center">Średnia cena: £15</span>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </a>--%>

<%--                            <a href="#" class="restaurant-common-wrapper-item clearfix">--%>
<%--                                <div class="GridLex-grid-middle">--%>
<%--                                    <div class="GridLex-col-6_xs-12">--%>
<%--                                        <div class="restaurant-type">--%>
<%--                                            <div class="image">--%>
<%--                                                <img src="images/brands/02.jpg" alt="image" />--%>
<%--                                            </div>--%>
<%--                                            <div class="content">--%>
<%--                                                <h4>Attin Cafe &amp; Lounge</h4>--%>
<%--                                                <p>Indian</p>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <div class="GridLex-col-4_xs-8_xss-12 mt-10-xss">--%>
<%--                                        <div class="job-location">--%>
<%--                                            <i class="fa fa-map-marker text-primary"></i> Menlo park, CA--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <div class="GridLex-col-2_xs-4_xss-12">--%>
<%--                                        <div class="res-btn label label-danger">--%>
<%--                                            Rezerwacja--%>
<%--                                        </div>--%>
<%--                                        <span class="font12 block spacing1 font400 text-center">Średnia cena: £15</span>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </a>--%>

<%--                            <a href="#" class="restaurant-common-wrapper-item clearfix">--%>
<%--                                <div class="GridLex-grid-middle">--%>
<%--                                    <div class="GridLex-col-6_xs-12">--%>
<%--                                        <div class="restaurant-type">--%>
<%--                                            <div class="image">--%>
<%--                                                <img src="images/brands/02.jpg" alt="image" />--%>
<%--                                            </div>--%>
<%--                                            <div class="content">--%>
<%--                                                <h4>Khayalee Polao</h4>--%>
<%--                                                <p>Bangladeshi</p>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <div class="GridLex-col-4_xs-8_xss-12 mt-10-xss">--%>
<%--                                        <div class="job-location">--%>
<%--                                            <i class="fa fa-map-marker text-primary"></i> Menlo park, CA--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <div class="GridLex-col-2_xs-4_xss-12">--%>
<%--                                        <div class="res-btn label label-danger">--%>
<%--                                            Rezerwacja--%>
<%--                                        </div>--%>
<%--                                        <span class="font12 block spacing1 font400 text-center">Średnia cena: £15</span>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </a>--%>
<%--                            <a href="#" class="restaurant-common-wrapper-item clearfix">--%>
<%--                                <div class="GridLex-grid-middle">--%>
<%--                                    <div class="GridLex-col-6_xs-12">--%>
<%--                                        <div class="restaurant-type">--%>
<%--                                            <div class="image">--%>
<%--                                                <img src="images/brands/02.jpg" alt="image" />--%>
<%--                                            </div>--%>
<%--                                            <div class="content">--%>
<%--                                                <h4>Italian Pizza Hut</h4>--%>
<%--                                                <p>Indian</p>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <div class="GridLex-col-4_xs-8_xss-12 mt-10-xss">--%>
<%--                                        <div class="job-location">--%>
<%--                                            <i class="fa fa-map-marker text-primary"></i> Menlo park, CA--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <div class="GridLex-col-2_xs-4_xss-12">--%>
<%--                                        <div class="res-btn label label-danger">--%>
<%--                                            Rezerwacja--%>
<%--                                        </div>--%>
<%--                                        <span class="font12 block spacing1 font400 text-center">Średnia cena: £15</span>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </a>--%>

                        </div>

                    </div>

                    <!--					<div class="col-md-4 mt-50-sm">-->

                    <!--						<div class="section-title">-->

                    <!--							<h2 class="text-left text-center-sm">top seller</h2>-->

                    <!--						</div>-->

                    <!--						<div class="row gap-20 top-company-wrapper mmt">-->

                    <!--							<div class="col-xs-6 col-sm-4 col-md-6">-->

                    <!--								<div class="top-company">-->
                    <!--									<div class="image">-->
                    <!--										<img src="images/brands/01.png" alt="image" />-->
                    <!--									</div>-->
                    <!--									<h5>Vantage</h5>-->
                    <!--									<a href="#">place order</a>-->
                    <!--								</div>-->

                    <!--							</div>-->

                    <!--							<div class="col-xs-6 col-sm-4 col-md-6">-->

                    <!--								<div class="top-company">-->
                    <!--									<div class="image">-->
                    <!--										<img src="images/brands/05.png" alt="image" />-->
                    <!--									</div>-->
                    <!--									<h5>Greenchilli</h5>-->
                    <!--									<a href="#">place order</a>-->
                    <!--								</div>-->

                    <!--							</div>-->

                    <!--							<div class="col-xs-6 col-sm-4 col-md-6">-->

                    <!--								<div class="top-company">-->
                    <!--									<div class="image">-->
                    <!--										<img src="images/brands/18.png" alt="image" />-->
                    <!--									</div>-->
                    <!--									<h5>Bengal Spice</h5>-->
                    <!--									<a href="#">place order</a>-->
                    <!--								</div>-->

                    <!--							</div>-->

                    <!--							<div class="col-xs-6 col-sm-4 col-md-6">-->

                    <!--								<div class="top-company">-->
                    <!--									<div class="image">-->
                    <!--										<img src="images/brands/12.png" alt="image" />-->
                    <!--									</div>-->
                    <!--									<h5>Magna Tandoori</h5>-->
                    <!--									<a href="#">place order</a>-->
                    <!--								</div>-->

                    <!--							</div>-->

                    <!--							<div class="col-xs-6 col-sm-4 col-md-6">-->

                    <!--								<div class="top-company">-->
                    <!--									<div class="image">-->
                    <!--										<img src="images/brands/10.png" alt="image" />-->
                    <!--									</div>-->
                    <!--									<h5>New Bengla</h5>-->
                    <!--									<a href="#">place order</a>-->
                    <!--								</div>-->

                    <!--							</div>-->

                    <!--							<div class="col-xs-6 col-sm-4 col-md-6">-->

                    <!--								<div class="top-company">-->
                    <!--									<div class="image">-->
                    <!--										<img src="images/brands/08.png" alt="image" />-->
                    <!--									</div>-->
                    <!--									<h5>Spice Delight</h5>-->
                    <!--									<a href="#">place order</a>-->
                    <!--								</div>-->

                    <!--							</div>-->

                    <!--						</div>-->

                    <!--					</div>-->

                </div>

            </div>

        </div>

        <!-- start banner section -->
        <div class="bt-block-home-parallax pt-80 pb-80" style="background-image: url(/images/RestoBookmap.png);">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="lookbook-product">
                            <h2>Jedno kliknięcie dzieli Cię od pysznego jedzenia! Eksploruj nasze wyróżnione restauracja – wierzymy że je pokochasz</h2>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- end banner section -->

        <div class="container pt-80 pb-80">

            <div class="row">

                <div class="col-sm-10 col-sm-offset-1 col-md-8 col-md-offset-2">

                    <div class="section-title">

                        <h3>odkryj nowe restauracje & rezerwuj teraz </h3>

                    </div>

                </div>

            </div>

            <div class="row gap-40">
                <c:forEach var="restaurant" items="${newestRestaurants}" varStatus="status">
                    <div class="col-xs-4 col-sm-2 mb-20">
                        <a href="/restaurantDetail/${restaurant.id}">
                            <img src="data:image/jpeg;base64,${newestRestaurantsLogos[status.index]}" alt="${restaurant.restoName} Logo" style="width: 300px; height: 150px;"/>
                        </a>
                    </div>
                </c:forEach>

<%--                <div class="col-xs-4 col-sm-2 mb-20">--%>
<%--                    <a href="#"><img src="images/brands/02.png" alt="image" /></a>--%>
<%--                </div>--%>

<%--                <div class="col-xs-4 col-sm-2 mb-20">--%>
<%--                    <a href="#"><img src="images/brands/04.png" alt="image" /></a>--%>
<%--                </div>--%>

<%--                <div class="col-xs-4 col-sm-2 mb-20">--%>
<%--                    <a href="#"><img src="images/brands/18.png" alt="image" /></a>--%>
<%--                </div>--%>

<%--                <div class="col-xs-4 col-sm-2 mb-20">--%>
<%--                    <a href="#"><img src="images/brands/16.png" alt="image" /></a>--%>
<%--                </div>--%>

<%--                <div class="col-xs-4 col-sm-2 mb-20">--%>
<%--                    <a href="#"><img src="images/brands/14.png" alt="image" /></a>--%>
<%--                </div>--%>

            </div>


        </div>


        <!-- Download App Start -->
        <!--			<div class="download-app-area">-->
        <!--				<div class="download-app-sec" style="background:url(images/download-app.jpg) bottom center no-repeat fixed;-->
        <!--        background-size:cover;">-->
        <!--					<div class="mask">-->
        <!--						<div class="container">-->
        <!--							<div class="col-lg-7 col-md-7 col-sm-12 container-cell left-container col-md-push-1">-->
        <!--								<div class="app-content row">-->
        <!--									<div class="inner">-->
        <!--										<h2 class="logo-content">Thefoody in your pocket!</h2>-->
        <!--										<h4 class="logo-subtitle">Get our app, it's the fastest way to order food on the go.</h4>-->
        <!--										&lt;!&ndash;<p class="content">-->
        <!--                                            Keep an eye on Thefoody, it is already on your way. Come back here for checkout the latest updates.-->
        <!--                                        </p>&ndash;&gt;-->
        <!--										<ul class="list-inline appstore-buttons">-->
        <!--											<li><a href="#" class="btn-store btn-appstore">App Store</a></li>-->
        <!--											<li><a href="#" class="btn-store btn-googleplay">Google Play</a></li>-->
        <!--										</ul>-->
        <!--									</div>-->

        <!--								</div>-->
        <!--							</div>-->
        <!--							<div class="col-md-4 right-align">-->
        <!--								<div class="left-area visible-lg">-->
        <!--									<img src="images/mobilev2.png" alt="">-->
        <!--								</div>-->
        <!--							</div>-->
        <!--						</div>-->
        <!--					</div>-->
        <!--				</div>-->
        <!--			</div>-->
        <!--			<div class="clearfix"></div>-->
        <!-- Download App End -->


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


</body>



</html>
