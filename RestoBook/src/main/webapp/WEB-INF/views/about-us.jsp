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
    <link href="css/Stroke-Gap-Icons.css" rel="stylesheet">

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
                    <li><span>O nas</span></li>
                </ol>

            </div>

        </div>
        <!-- end hero-header -->

        <div class="section pb-60">

            <div class="container">

                <div class="section-title mb-40">

                    <h2 class=" text-left">O nas</h2>

                </div>

                <div class="row">
                    <div class="col-xs-12 col-sm-6 col-lg-3 col-md-3">
                        <div class="welcome_wrapper text-left">
                            <div class="number">01.</div>
                            <h5>Firma</h5>
                            <br>
                            <p>Nasza platforma, została stworzona, aby ułatwić życie miłośnikom dobrego jedzenia oraz właścicielom restauracji. Oferujemy prosty i szybki sposób rezerwacji miejsc w najlepszych restauracjach w różnych miastach. Korzystając z naszego zaawansowanego systemu, użytkownicy mogą w kilka chwil odnaleźć idealne miejsce na kolację, obiad biznesowy czy wyjątkowe przyjęcie. Ponadto, umożliwiamy naszym użytkownikom dzielenie się swoimi doświadczeniami, wystawianie ocen oraz dodawanie ulubionych restauracji. Jesteśmy tu, aby zapewnić najwyższy komfort i wygodę w planowaniu posiłków poza domem.</p>
                            <a href="#">Read More</a>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-lg-3 col-md-3">
                        <div class="welcome_wrapper text-left">
                            <div class="number">02.</div>
                            <h5>Nasza Historia</h5>
                            <br>
                            <p>RestoBook powstało z pasji do odkrywania nowych smaków i rodzinnych wspomnień przy wspólnym stole. Założyciele, zaczęli swoją podróż w 2020 roku, spostrzegając, że rezerwacja miejsc w restauracjach bywa trudnym i czasochłonnym zadaniem. Mając na celu ułatwienie tego procesu zarówno dla klientów, jak i restauratorów, stworzyli platformę łączącą zaawansowaną technologię z miłością do dobrej kuchni. Dzięki pasji i determinacji, RestoBook stała się wiodącym miejscem dla wszystkich, którzy pragną cieszyć się wyjątkowymi kulinarnymi doświadczeniami.</p>
                            <a href="#">Read More</a>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-lg-3 col-md-3">
                        <div class="welcome_wrapper text-left">
                            <div class="number">03.</div>
                            <h5>Nasza Misja</h5>
                            <br>
                            <p>Naszą misją jest nie tylko ułatwienie procesu rezerwacji miejsc w restauracjach, ale też wspieranie lokalnych gastronomii i promocja różnorodności kulinarnych tradycji. Pragniemy, aby każdy użytkownik naszej platformy miał dostęp do pełnej gamy wyborów – od małych rodzinnych bistr po luksusowe restauracje. Skupiamy się na budowaniu społeczności, gdzie użytkownicy mogą dzielić się swoimi doświadczeniami, a restauratorzy prezentować swoje wnętrza i menu. Wierzymy, że każda wizyta w restauracji powinna być wyjątkowym wydarzeniem, a my jesteśmy tu, aby to umożliwić.</p>
                            <a href="#">Read More</a>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-lg-3 col-md-3">
                        <div class="welcome_wrapper text-left">
                            <div class="number">04.</div>
                            <h5>Nasze wartości</h5>
                            <br>
                            <p>Stawiamy na najwyższą jakość usług, dbając, by każde doświadczenie użytkowników na platformie [Nazwa Firmy] było niezapomniane. Zaufanie jest dla nas kluczowe, dlatego nasze informacje są zawsze rzetelne i dokładne. Pielęgnujemy ducha innowacji, wdrażając nowatorskie rozwiązania technologiczne, które usprawniają rezerwacje i komunikację. Budujemy silną społeczność, wspierając współpracę oraz wymianę opinii między użytkownikami a restauratorami. Cenimy różnorodność kulinarną i kulturową, zachowując szacunek wobec różnych tradycji i smaków. Dzięki tym wartościom, każda wizyta w restauracji za pośrednictwem naszej platformy staje się wyjątkowym doświadczeniem.</p>
                            <a href="#">Read More</a>
                        </div>
                    </div>
                </div>

            </div>

        </div>

        <div class="image-bg-wrapper counting-wrapper" style="background-image:url('images/statisticsRestoBookX.jpg');">

            <div class="container mt-15">

                <div class="row">

                    <div class="col-md-10 col-md-offset-1">

                        <div class="row">

                            <div class="col-sm-6 col-md-3">

                                <div class="counting-item">

                                    <div class="counting-number h1"><span class="counter" data-decimal-delimiter="," data-thousand-delimiter="," data-value=${foodies} ></span></div>

                                    Foodies

                                </div>

                            </div>

                            <div class="col-sm-6 col-md-3">

                                <div class="counting-item">

                                    <div class="counting-number h1"><span class="counter" data-decimal-delimiter="," data-thousand-delimiter="," data-value=${cuisines} ></span></div>

                                    Kuchnie

                                </div>

                            </div>

                            <div class="col-sm-6 col-md-3">

                                <div class="counting-item">

                                    <div class="counting-number h1"><span class="counter" data-decimal-delimiter="," data-thousand-delimiter="," data-value=${countries} ></span></div>

                                    Kraje

                                </div>

                            </div>

                            <div class="col-sm-6 col-md-3">

                                <div class="counting-item">

                                    <div class="counting-number h1"><span class="counter" data-decimal-delimiter="," data-thousand-delimiter="," data-value=${restaurants} ></span></div>

                                    Restauracje

                                </div>

                            </div>

                        </div>

                    </div>

                </div>

            </div>

        </div>

        <!--			<div class="section pb-50">-->
        <!--			-->
        <!--				<div class="container mt-10">-->
        <!--					-->
        <!--					<div class="row">-->

        <!--						<div class="col-sm-6 mb-30">-->

        <!--							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas posuere tortor lacus, eget feugiat sapien luctus eget. Ut bibendum ultricies eros sit amet ullamcorper. Pellentesque lobortis euismod justo, a lobortis dolor euismod ut. Quisque neque neque, pretium nec sodales at, commodo ut lectus.</p>-->

        <!--							<ul class="list-with-icon alt mt-20 mb-25">-->
        <!--									-->
        <!--								<li><i class="text-primary ion-android-checkmark-circle"></i> TheFoody is an online portal.</li>-->
        <!--								<li><i class="text-primary ion-android-checkmark-circle"></i> Ordering Food & Delivery from restaurants of choice.</li>-->
        <!--								<li><i class="text-primary ion-android-checkmark-circle"></i> Table booking & Restaurants.</li>-->
        <!--								<li><i class="text-primary ion-android-checkmark-circle"></i> Deals & Discounts</li>-->
        <!--								<li><i class="text-primary ion-android-checkmark-circle"></i> Party Halls online booking</li>-->
        <!--								-->
        <!--							</ul>-->
        <!--							-->
        <!--							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas posuere tortor lacus, eget feugiat sapien luctus eget. Ut bibendum ultricies eros sit amet ullamcorper. Pellentesque lobortis euismod justo, a lobortis dolor euismod ut.</p>-->

        <!--						</div>-->
        <!--						-->
        <!--						<div class="col-sm-6">-->
        <!--					-->
        <!--							<img src="images/statisticsRestoBookX.jpg" alt="Images" />-->
        <!--							-->
        <!--						</div>-->
        <!--					-->
        <!--					</div>-->

        <!--				</div>-->

    </div>

    <!--			<div class="section pb-50 bg-light">-->
    <!--			-->
    <!--				<div class="container">-->
    <!--					-->
    <!--					<div class="row">-->
    <!--					-->
    <!--						<div class="col-sm-10 col-sm-offset-1 col-md-8 col-md-offset-2">-->
    <!--						-->
    <!--							<div class="section-title">-->
    <!--							-->
    <!--								<h2>Why We are the best</h2>-->
    <!--								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>-->
    <!--							</div>-->

    <!--						</div>-->
    <!--					-->
    <!--					</div>-->
    <!--					-->
    <!--					<div class="featured-icon-05-wrapper">-->

    <!--						<div class="row">-->
    <!--							<div class="col-md-6">-->
    <!--								<div class="accordions">-->
    <!--									<div class="tap-inner">-->

    <!--										<div class="text-accordions">-->
    <!--											<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas posuere tortor lacus, eget feugiat sapien luctus eget.</p>-->
    <!--											<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas posuere tortor lacus, eget feugiat sapien luctus eget. Ut bibendum ultricies eros sit amet ullamcorper. Pellentesque lobortis euismod justo, a lobortis dolor euismod ut. Quisque neque neque, pretium nec sodales at, commodo ut lectus.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas posuere tortor lacus, eget feugiat sapien luctus eget.</p>-->
    <!--											<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas posuere tortor lacus, eget feugiat sapien luctus eget. Ut bibendum ultricies eros sit amet ullamcorper. Pellentesque lobortis euismod justo, a lobortis dolor euismod ut.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas posuere tortor lacus, eget feugiat sapien luctus eget. </p>-->
    <!--										</div>-->
    <!--									</div>-->
    <!--								</div>-->
    <!--							</div>-->
    <!--							<div class="col-md-6">-->
    <!--								<div class="features-box">-->
    <!--									<div class="row">-->
    <!--										<div class="col-xs-12 col-md-12">-->
    <!--											<div class="feature margin-top-zero">-->
    <!--												<i class="icon icon-Time"></i>-->
    <!--												<h5>Always Available</h5>-->
    <!--												<p>Fusce at accumsan justo. Nulla lacus efficitur vel aliquam sed, fringilla sit amet neque.</p>-->
    <!--											</div>-->
    <!--											<div class="feature">-->
    <!--												<i class="icon icon-Shield"></i>-->
    <!--												<h5>Qualified Staff</h5>-->
    <!--												<p>Donec malesuada urna porta tellus feugiat, ac tempor tortor ornare.</p>-->
    <!--											</div>-->
    <!--											<div class="feature">-->
    <!--												<i class="fa fa-diamond"></i>-->
    <!--												<h5>30 Years Experience</h5>-->
    <!--												<p>Donec malesuada urna porta tellus feugiat, ac tempor tortor ornare.</p>-->
    <!--											</div>-->
    <!--											<div class="feature no-margin-bottom">-->
    <!--												<i class="icon icon-Star"></i>-->
    <!--												<h5>Best service</h5>-->
    <!--												<p>Etiam eget neque lorem. Interdum et malesuada fames ac ante ipsum primis faucibus.</p>-->
    <!--											</div>-->
    <!--										</div>-->

    <!--									</div>-->

    <!--								</div>-->
    <!--							</div>-->
    <!--						</div>-->
    <!--						-->
    <!--					</div>-->
    <!--					-->
    <!--				</div>-->

</div>

<div class="section padding-0">

    <!-- Download App Start -->
    <!--				<div class="download-app-area">-->
    <!--					<div class="download-app-sec" style="background:url(images/download-app.jpg) bottom center no-repeat fixed;-->
    <!--        background-size:cover;">-->
    <!--						<div class="mask">-->
    <!--							<div class="container">-->
    <!--								<div class="col-lg-7 col-md-7 col-sm-12 container-cell left-container col-md-push-1">-->
    <!--									<div class="app-content row">-->
    <!--										<div class="inner">-->
    <!--											<h2 class="logo-content">Thefoody in your pocket!</h2>-->
    <!--											<h4 class="logo-subtitle">Get our app, it's the fastest way to order food on the go.</h4>-->
    <!--											&lt;!&ndash;<p class="content">-->
    <!--                                                Keep an eye on Thefoody, it is already on your way. Come back here for checkout the latest updates.-->
    <!--                                            </p>&ndash;&gt;-->
    <!--											<ul class="list-inline appstore-buttons">-->
    <!--												<li><a href="#" class="btn-store btn-appstore">App Store</a></li>-->
    <!--												<li><a href="#" class="btn-store btn-googleplay">Google Play</a></li>-->
    <!--											</ul>-->
    <!--										</div>-->

    <!--									</div>-->
    <!--								</div>-->
    <!--								<div class="col-md-4 right-align">-->
    <!--									<div class="left-area visible-lg">-->
    <!--										<img src="images/mobilev2.png" alt="">-->
    <!--									</div>-->
    <!--								</div>-->
    <!--							</div>-->
    <!--						</div>-->
    <!--					</div>-->
    <!--				</div>-->
    <!--				<div class="clearfix"></div>-->
    <!--Download App End -->

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


</body>


</html>