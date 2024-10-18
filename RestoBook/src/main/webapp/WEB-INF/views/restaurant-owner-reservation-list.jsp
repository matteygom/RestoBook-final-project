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
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="../../../images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../../../images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../../../images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="../../../images/ico/apple-touch-icon-57-precomposed.png">
    <link rel="shortcut icon" href="../../../images/ico/favicon.png">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

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
        <!-- start Navbar (Header) -->
        <nav class="navbar navbar-default navbar-fixed-top navbar-sticky-function">

            <div class="container">

                <div class="logo-wrapper">
                    <div class="logo">
                        <a href="/home"><img src="../../../images/RestoBookPng.png" alt="Logo" /></a>
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

                                <li><a href="/aboutUs">O nas</a></li>
                                <!--									<li><a href="staff.html">Our Staff</a></li>-->
                                <!--									<li><a href="faq.html">Faq</a></li>-->
                                <li><a href="/contactPage">Kontakt</a></li>
                                <!--									<li><a href="careers.html">Careers</a></li>-->
                                <li><a href="/privacyPolicy">Polityka Prywatności</a></li>
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

        <!-- start breadcrumb -->
        <div class="breadcrumb-wrapper">

            <div class="container">

                <ol class="breadcrumb-list booking-step">
                    <li><a href="index.html">Start</a></li>
                    <li><span>Ulubione restauracje</span></li>
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
                                        <img src="data:image/jpeg;base64,${restaurant.get().logoBase64}" alt="Logo" style="width: 300px; height: 150px;"/>
                                    </div>

                                    <h2>${restaurant.get().restoName}</h2>
                                    <p class="user-role">Resto</p>

                                </div>

                                <div class="admin-user-action text-center">

                                    <a href="/owner/dashboard/restaurantEdit/${restaurant.get().id}" class="btn btn-primary btn-sm">Edytuj</a>
                                    <a href="#" class="btn btn-primary btn-sm btn-inverse">Deaktywuj</a>

                                </div>

                                <ul class="admin-user-menu clearfix">
                                    <li>
                                        <a href="/owner/dashboard/${restaurant.get().id}"><i class="fa fa-tachometer"></i> Dashboard</a>
                                    </li>
                                    <li>
                                        <a href=/owner/profile/${restaurant.get().id}"><i class="fa fa-user"></i> Profil</a>
                                    </li>
                                    <li>
                                        <a href="/owner/passwordchange/${restaurant.get().id}"><i class="fa fa-key"></i> Zmień hasło</a>
                                    </li>
                                    <li class="active">
                                        <a href="/owner/reservations/list/${restaurant.get().id}"><i class="fa fa-bookmark"></i> Rezerwacje</a>
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

                                    <h2>Wszystkie rezerwacje</h2>
                                    <p>Szybki dostęp do rezerwacji klientów</p>

                                </div>

                                <div class="restaurant-item-grid-wrapper">

                                    <div class="GridLex-gap-30">

                                        <div class="GridLex-grid-noGutter-equalHeight">

<%--                                            odtąd--%>
                                     <c:forEach var="reservation" items="${reservations}" varStatus="status">

                                            <div class="GridLex-col-4_sm-6_xs-6_xss-12">

                                                <div class="restaurant-item-grid">

                                                    <div class="labeling">
                                                        <a href="/owner/reservations/details/${reservation.id}" class="label label-success" style="background-color: #66afe9; cursor: pointer;">Wyświetl</a>
                                                    </div>

                                                    <a href="#">

                                                        <div class="image">

                                                            <div class="vertical-middle">

                                                                <img src="../../../images/desk-bellIcon.png" alt="image" style="width: 150px; height: 100px;"/>

                                                            </div>

                                                        </div>

                                                        <div class="content">
                                                            <h4 class="heading">${reservation.title} ${reservation.fullName}</h4>
                                                            <p class="location"><i class="fa fa-map-marker text-primary"></i> <strong class="text-primary">Liczba gości: ${reservation.guestsCount}</strong></p>
                                                            <p><i class="fa-briefcase-clock"></i><strong> Godzina: ${reservation.time}</strong></p>
                                                            <p class="date text-muted font12 font-italic"><strong class="text-primary">Data: <fmt:formatDate value="${reservation.date}" pattern="yyyy-MM-dd"/></strong></p>
                                                        </div>

                                                    </a>

                                                    <div class="content-bottom">
                                                        <div class="sub-category">
                                                            <a href="javascript:void(0);" onclick="deleteReservationFromList(${reservation.id}, ${restaurant.get().id})">Usuń</a>
                                                        </div>
                                                    </div>

                                                </div>

                                            </div>
                                     </c:forEach>

                                            <%--                                                dotąd--%>

<%--                                            <div class="GridLex-col-4_sm-6_xs-6_xss-12">--%>

<%--                                                <div class="restaurant-item-grid">--%>

<%--                                                    <div class="fav-save">--%>

<%--                                                        <a href="#"><i class="fa fa-heart text-danger"></i></a>--%>

<%--                                                    </div>--%>


<%--                                                    <a href="#">--%>

<%--                                                        <div class="image">--%>

<%--                                                            <div class="vertical-middle">--%>

<%--                                                                <img src="images/brands/01.png" alt="image" />--%>

<%--                                                            </div>--%>

<%--                                                        </div>--%>

<%--                                                        <div class="content">--%>
<%--                                                            <h4 class="heading">Vantage</h4>--%>
<%--                                                            <p class="location"><i class="fa fa-map-marker text-primary"></i> <strong class="text-primary">Indian</strong> - Paris, France</p>--%>
<%--                                                            <p class="date text-muted font12 font-italic">Średnia cen: &euro;15</p>--%>
<%--                                                        </div>--%>

<%--                                                    </a>--%>

<%--                                                    <div class="content-bottom">--%>
<%--                                                        <div class="sub-category">--%>
<%--                                                            <a href="#">Rezerwuj</a>--%>
<%--                                                        </div>--%>
<%--                                                    </div>--%>

<%--                                                </div>--%>

<%--                                            </div>--%>

<%--                                            <div class="GridLex-col-4_sm-6_xs-6_xss-12">--%>

<%--                                                <div class="restaurant-item-grid">--%>

<%--                                                    <div class="fav-save">--%>

<%--                                                        <a href="#"><i class="fa fa-heart text-danger"></i></a>--%>

<%--                                                    </div>--%>


<%--                                                    <a href="#">--%>

<%--                                                        <div class="image">--%>

<%--                                                            <div class="vertical-middle">--%>

<%--                                                                <img src="images/brands/02.png" alt="image" />--%>

<%--                                                            </div>--%>

<%--                                                        </div>--%>

<%--                                                        <div class="content">--%>
<%--                                                            <h4 class="heading">Bangkok lounge</h4>--%>
<%--                                                            <p class="location"><i class="fa fa-map-marker text-primary"></i> <strong class="text-primary">Indian</strong> - Paris, France</p>--%>
<%--                                                            <p class="date text-muted font12 font-italic">Średnia cen: &euro;15</p>--%>
<%--                                                        </div>--%>

<%--                                                    </a>--%>

<%--                                                    <div class="content-bottom">--%>
<%--                                                        <div class="sub-category">--%>
<%--                                                            <a href="#">Rezerwuj</a>--%>
<%--                                                        </div>--%>
<%--                                                    </div>--%>

<%--                                                </div>--%>

<%--                                            </div>--%>

<%--                                            <div class="GridLex-col-4_sm-6_xs-6_xss-12">--%>

<%--                                                <div class="restaurant-item-grid">--%>

<%--                                                    <div class="fav-save">--%>

<%--                                                        <a href="#"><i class="fa fa-heart text-danger"></i></a>--%>

<%--                                                    </div>--%>
<%--                                                    <!--														<div class="labeling">-->--%>
<%--                                                    <!--															<span class="label label-success">Get offer</span>-->--%>
<%--                                                    <!--														</div>-->--%>

<%--                                                    <a href="#">--%>

<%--                                                        <div class="image">--%>

<%--                                                            <div class="vertical-middle">--%>

<%--                                                                <img src="images/brands/04.png" alt="image" />--%>

<%--                                                            </div>--%>

<%--                                                        </div>--%>

<%--                                                        <div class="content">--%>
<%--                                                            <h4 class="heading">Rainbow</h4>--%>
<%--                                                            <p class="location"><i class="fa fa-map-marker text-primary"></i> <strong class="text-primary">Indian</strong> - Paris, France</p>--%>
<%--                                                            <p class="date text-muted font12 font-italic">Średnia cen: &euro;15</p>--%>
<%--                                                        </div>--%>

<%--                                                    </a>--%>

<%--                                                    <div class="content-bottom">--%>
<%--                                                        <div class="sub-category">--%>
<%--                                                            <a href="#">Rezerwuj</a>--%>
<%--                                                        </div>--%>
<%--                                                    </div>--%>

<%--                                                </div>--%>

<%--                                            </div>--%>

<%--                                            <div class="GridLex-col-4_sm-6_xs-6_xss-12">--%>

<%--                                                <div class="restaurant-item-grid">--%>

<%--                                                    <div class="fav-save">--%>

<%--                                                        <a href="#"><i class="fa fa-heart text-danger"></i></a>--%>

<%--                                                    </div>--%>
<%--                                                    <!--														<div class="labeling">-->--%>
<%--                                                    <!--															<span class="label label-success">Get offer</span>-->--%>
<%--                                                    <!--														</div>-->--%>

<%--                                                    <a href="#">--%>

<%--                                                        <div class="image">--%>

<%--                                                            <div class="vertical-middle">--%>

<%--                                                                <img src="images/brands/06.png" alt="image" />--%>

<%--                                                            </div>--%>

<%--                                                        </div>--%>

<%--                                                        <div class="content">--%>
<%--                                                            <h4 class="heading">Arabian Grill</h4>--%>
<%--                                                            <p class="location"><i class="fa fa-map-marker text-primary"></i> <strong class="text-primary">Indian</strong> - Paris, France</p>--%>
<%--                                                            <p class="date text-muted font12 font-italic">Średnia cen: &euro;15</p>--%>
<%--                                                        </div>--%>

<%--                                                    </a>--%>

<%--                                                    <div class="content-bottom">--%>
<%--                                                        <div class="sub-category">--%>
<%--                                                            <a href="#">Rezerwuj</a>--%>
<%--                                                        </div>--%>
<%--                                                    </div>--%>

<%--                                                </div>--%>

<%--                                            </div>--%>

<%--                                            <div class="GridLex-col-4_sm-6_xs-6_xss-12">--%>

<%--                                                <div class="restaurant-item-grid">--%>

<%--                                                    <div class="fav-save">--%>

<%--                                                        <a href="#"><i class="fa fa-heart text-danger"></i></a>--%>

<%--                                                    </div>--%>

<%--                                                    <a href="#">--%>

<%--                                                        <div class="image">--%>

<%--                                                            <div class="vertical-middle">--%>

<%--                                                                <img src="images/brands/01.png" alt="image" />--%>

<%--                                                            </div>--%>

<%--                                                        </div>--%>

<%--                                                        <div class="content">--%>
<%--                                                            <h4 class="heading">Vantage</h4>--%>
<%--                                                            <p class="location"><i class="fa fa-map-marker text-primary"></i> <strong class="text-primary">Indian</strong> - Paris, France</p>--%>
<%--                                                            <p class="date text-muted font12 font-italic">Średnia cen: &euro;15</p>--%>
<%--                                                        </div>--%>

<%--                                                    </a>--%>

<%--                                                    <div class="content-bottom">--%>
<%--                                                        <div class="sub-category">--%>
<%--                                                            <a href="#">Rezerwuj</a>--%>
<%--                                                        </div>--%>
<%--                                                    </div>--%>

<%--                                                </div>--%>

<%--                                            </div>--%>

<%--                                            <div class="GridLex-col-4_sm-6_xs-6_xss-12">--%>

<%--                                                <div class="restaurant-item-grid">--%>

<%--                                                    <div class="fav-save">--%>

<%--                                                        <a href="#"><i class="fa fa-heart text-danger"></i></a>--%>

<%--                                                    </div>--%>

<%--                                                    <a href="#">--%>

<%--                                                        <div class="image">--%>

<%--                                                            <div class="vertical-middle">--%>

<%--                                                                <img src="images/brands/02.png" alt="image" />--%>

<%--                                                            </div>--%>

<%--                                                        </div>--%>

<%--                                                        <div class="content">--%>
<%--                                                            <h4 class="heading">Bangkok Lounge</h4>--%>
<%--                                                            <p class="location"><i class="fa fa-map-marker text-primary"></i> <strong class="text-primary">Indian</strong> - Paris, France</p>--%>
<%--                                                            <p class="date text-muted font12 font-italic">Średnia cen: &euro;15</p>--%>
<%--                                                        </div>--%>

<%--                                                    </a>--%>

<%--                                                    <div class="content-bottom">--%>
<%--                                                        <div class="sub-category">--%>
<%--                                                            <a href="#">Rezerwuj</a>--%>
<%--                                                        </div>--%>
<%--                                                    </div>--%>

<%--                                                </div>--%>

<%--                                            </div>--%>

<%--                                            <div class="GridLex-col-4_sm-6_xs-6_xss-12">--%>

<%--                                                <div class="restaurant-item-grid">--%>

<%--                                                    <div class="fav-save">--%>

<%--                                                        <a href="#"><i class="fa fa-heart text-danger"></i></a>--%>

<%--                                                    </div>--%>
<%--                                                    <!--														<div class="labeling">-->--%>
<%--                                                    <!--															<span class="label label-success">Get Offer</span>-->--%>
<%--                                                    <!--														</div>-->--%>

<%--                                                    <a href="#">--%>

<%--                                                        <div class="image">--%>

<%--                                                            <div class="vertical-middle">--%>

<%--                                                                <img src="images/brands/04.png" alt="image" />--%>

<%--                                                            </div>--%>

<%--                                                        </div>--%>

<%--                                                        <div class="content">--%>
<%--                                                            <h4 class="heading">Rainbow</h4>--%>
<%--                                                            <p class="location"><i class="fa fa-map-marker text-primary"></i> <strong class="text-primary">Indian</strong> - Paris, France</p>--%>
<%--                                                            <p class="date text-muted font12 font-italic">Średnia cen: &euro;15</p>--%>
<%--                                                        </div>--%>

<%--                                                    </a>--%>

<%--                                                    <div class="content-bottom">--%>
<%--                                                        <div class="sub-category">--%>
<%--                                                            <a href="#">Rezerwuj</a>--%>
<%--                                                        </div>--%>
<%--                                                    </div>--%>

<%--                                                </div>--%>

<%--                                            </div>--%>
<%--                                            --%>
<%--                                            tutaj--%>

                                        </div>

                                    </div>

                                </div>

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
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="${pageContext.request.contextPath}/js/reservationActions.js"></script>


</body>


</html>