<%@page import="com.fms.entity.User"%>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="UTF-8">
        <meta name="description" content="">
        <meta name="keywords" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Life Fitness</title>

        <!-- Google Font -->
        <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900&display=swap"
              rel="stylesheet">

        <!-- Css Styles -->
        <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
        <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
        <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
        <link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
        <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
        <link rel="stylesheet" href="css/style.css" type="text/css">
    </head>

    <body>
        <!-- Page Preloder -->
        <div id="preloder">
            <div class="loader"></div>
        </div>

        <!-- Header Section Begin -->
        <header class="header-section">
            <div class="container">
                <div class="logo">
                    <a href="./index.html">
                        <img src="img/logos.png" alt=""width=77px>
                    </a>
                </div>
                <div class="nav-menu">
                    <nav class="mainmenu mobile-menu">
                        <ul>
                            <li class="active"><a href="./index.html">Home</a></li>
                            <li><a href="./about-us.html">About</a></li>
                            <li><a href="./classes.html">Classes</a></li>
                            <li><a href="./shop.html">Shop</a></li>
                            <li><a href="./gallery.html">Gallery</a></li>
                            <li><a href="./contact.html">Contacts</a></li>
                            <li><a href="./Reservation.html">Reservations</a></li>
                            <li><a href="/Registration.html">User Registration</a></li>
                        </ul>
                    </nav>
                    <%
                        HttpSession ses = request.getSession();
                        User user = (User) ses.getAttribute("cur_user");
                        if (user != null) {
                    %>
                    <h3 class="primary-btn signup-btn"> Hi, <%=user.getEmail()%>   <a href="logout">Logout</a></h3>
                    <%
                    } else {
                    %>
                    <a href="login.jsp" class="primary-btn signup-btn">Log in</a>
                    <%
                        }
                    %>

                </div>
                <div id="mobile-menu-wrap"></div>
            </div>
        </header>
        <!-- Header End -->

        <!-- Hero Section Begin -->
        <section class="hero-section set-bg" data-setbg="img/lifewall.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8">
                        <div class="hero-text" style="margin-left:-300px">
                            <span>All your need to your door step</span><br>
                            <br>
                            <a href="shop.jsp" class="primary-btn">Shop now</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Hero Section End -->
        <!-- About Section Begin -->
        <section class="about-section spad">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="about-pic">
                            <iframe width="560" height="315" src="https://www.youtube.com/embed/wnHW6o8WMas?start=4" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="about-text">
                            <h2> About Us</h2>
                            <p class="first-para">A new chapter in the Sri Lankan Fitness Industry started in 2020, when the construction of the Life Fitness Center began. Life Fitness opened its doors to the public in December 2020 and since then it has grown from strength to Strength.</p>
                            <p class="second-para">Life Fitness Leisure Center is formally registered as (PVT) LTD and it is a fully owned subsidiary of Life Fitness HOLDINGS (PVT) LTD.</p>

                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- About Section End -->

        <!-- Services Section Begin -->
        <section class="services-section">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="services-pic">
                            <img src="img/services/service.jpg" alt="">
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="service-items">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="services-item bg-gray">
                                        <img src="img/services/service-icon-1.png" alt="">
                                        <h4>Crossfit</h4>
                                        <p>CrossFit is a strength, conditioning, and overall fitness program consisting mainly of a mix of aerobic exercise,bodyweight exercises.</p>
                                    </div>
                                    <div class="services-item bg-gray pd-b">
                                        <img src="img/services/service-icon-3.png" alt="">
                                        <h4>Workout</h4>
                                        <p>A session of vigorous physical exercise or training.</p>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="services-item">
                                        <img src="img/services/service-icon-2.png" alt="">
                                        <h4>Weight Lifting</h4>
                                        <p>the sport or activity of lifting barbells or other heavy weights. There are two standard lifts in modern weightlifting.</p>
                                    </div>
                                    <div class="services-item pd-b">
                                        <img src="img/services/service-icon-4.png" alt="">
                                        <h4>Fat burn</h4>
                                        <p>If you?ve been fooled by the fat-burning zone on your gym?s cardio machines, don?t feel bad. It?s one of those exercise myths that refuses to go away.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Services Section End -->

        <!-- Classes Section Begin -->
        <section class="classes-section spad">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="section-title">
                            <h2>Our Main Classes</h2>
                        </div>
                    </div>
                </div>
                <div class="row classes-slider owl-carousel">
                    <div class="col-lg-4">
                        <div class="single-class-item set-bg" data-setbg="img/classes/classes-1.jpg">
                            <div class="si-text">
                                <h4>Yoga Session</h4>
                                <span><i class="fa fa-user"></i> Nimna Ambegoda</span>
                            </div>
                        </div>
                        <div class="single-class-item set-bg" data-setbg="img/classes/classes-4.jpg">
                            <div class="si-text">
                                <h4>Cardio Session</h4>
                                <span><i class="fa fa-user"></i> Mr.Kasun Srimal</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="single-class-item set-bg" data-setbg="img/classes/classes-2.jpg">
                            <div class="si-text">
                                <h4>Crossfit Session</h4>
                                <span><i class="fa fa-user"></i> Mr.Pasi Nawarathne</span>
                            </div>
                        </div>
                        <div class="single-class-item set-bg" data-setbg="img/classes/classes-5.jpg">
                            <div class="si-text">
                                <h4>Weight Lifting</h4>
                                <span><i class="fa fa-user"></i> Mr. Umain Wilfred</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="single-class-item set-bg" data-setbg="img/classes/classes-3.jpg">
                            <div class="si-text">
                                <h4>Zumba Session</h4>
                                <span><i class="fa fa-user"></i> Mr.Lakindu Liyanage</span>
                            </div>
                        </div>
                        <div class="single-class-item set-bg" data-setbg="img/classes/classes-6.jpg">
                            <div class="si-text">
                                <h4>Rowing</h4>
                                <span><i class="fa fa-user"></i> Mr.Namudara Abeysingha</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="single-class-item set-bg" data-setbg="img/classes/classes-7.jpg">
                            <div class="si-text">
                                <h4>Bulking</h4>
                                <span><i class="fa fa-user"></i>Mr.Ruchira Liyanagama</span>
                            </div>
                        </div>
                        <div class="single-class-item set-bg" data-setbg="img/classes/classes-8.jpg">
                            <div class="si-text">
                                <h4>Gymnastics</h4>
                                <span><i class="fa fa-user"></i>Mr. Nimna Induwara</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Classes Section End -->



        <!-- Testimonial Section Begin -->
        <section class="testimonial-section spad">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="section-title">
                            <h2>Message from our team</h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-10 offset-lg-1">
                        <div class="testimonial-slider owl-carousel">
                            <div class="testimonial-item">
                                <p>Success usually comes to those who are too busy to be looking for it. </p>
                                <div class="ti-pic">
                                    <img src="img/testimonial/leader.jpg" alt="">
                                    <div class="quote">
                                        <img src="img/testimonial/quote-left.png" alt="">
                                    </div>
                                </div>
                                <div class="ti-author">
                                    <h4>Mr.Ajantha</h4>
                                    <span>CEO</span>
                                </div>
                            </div>
                            <div class="testimonial-item">
                                <p>Success usually comes to those who are too busy to be looking for it.</p>
                                <div class="ti-pic">
                                    <img src="img/testimonial/umi.jpg" alt="">
                                    <div class="quote">
                                        <img src="img/testimonial/quote-left.png" alt="">
                                    </div>
                                </div>
                                <div class="ti-author">
                                    <h4>Mr.Umain</h4>
                                    <span>Head Coach</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Testimonial Section End -->

        <!-- Reservation Section Begin -->
        <section class="banner-section set-bg" data-setbg="img/banner-bg.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="banner-text">
                            <h2>Reserve treadmil now</h2>
                            <p>Due to Covid 19 situation we've created a reservation form for your treadmill usage cause it wll reduce the crowd and also make easy way for your time schedule.</p> 
                            <a  href="./Reservation.html" class="primary-btn banner-btn">Book Now</a>
                            <br>
                            <br>
                            <br>
                            <br>
                            <br>
                        </div>
                    </div>
                    <div class="col-lg-5">
                        <img src="img/aja.jpg" alt="">
                    </div>
                </div>
            </div>
        </section>
        <!-- Reservation Section Begin -->

        <!-- Membership Section Begin -->
        <section class="membership-section spad">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="section-title">
                            <h2>MEMBERSHIP PLANS</h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-4">
                        <div class="membership-item">
                            <div class="mi-title">
                                <h4>Silver</h4>
                                <div class="triangle"></div>
                            </div>
                            <h2 class="mi-price">2500LKR</h2>
                            <ul>
                                <li>
                                    <p>Valid for</p>
                                    <span>1 months</span>
                                </li>
                                <li>
                                    <p>Personal trainer</p>
                                    <span>0 person</span>
                                </li>
                                <li>
                                    <p>Amount of people</p>
                                    <span>1 person</span>
                                </li>
                                <li>
                                    <p>Number of visits</p>
                                    <span>Only for month</span>
                                </li>
                            </ul>
                            <a href="#" class="primary-btn membership-btn">Purchase Now</a>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="membership-item">
                            <div class="mi-title">
                                <h4>Gold</h4>
                                <div class="triangle"></div>
                            </div>
                            <h2 class="mi-price">13,000LKR</h2>
                            <ul>
                                <li>
                                    <p>Valid for</p>
                                    <span>6 months</span>
                                </li>
                                <li>
                                    <p>Personal trainer</p>
                                    <span>0 person</span>
                                </li>
                                <li>
                                    <p>Amount of people</p>
                                    <span>1 person</span>
                                </li>
                                <li>
                                    <p>Number of visits</p>
                                    <span>6 months</span>
                                </li>
                            </ul>
                            <a href="#" class="primary-btn membership-btn">Purchase Now</a>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="membership-item">
                            <div class="mi-title">
                                <h4>Platinum</h4>
                                <div class="triangle"></div>
                            </div>
                            <h2 class="mi-price">25,000LKR</h2>
                            <ul>
                                <li>
                                    <p>Valid for</p>
                                    <span>12 months</span>
                                </li>
                                <li>
                                    <p>Personal trainer</p>
                                    <span>01 person</span>
                                </li>
                                <li>
                                    <p>Amount of people</p>
                                    <span>01 person</span>
                                </li>
                                <li>
                                    <p>Number of visits</p>
                                    <span>365 days</span>
                                </li>
                            </ul>
                            <a href="#" class="primary-btn membership-btn">Purchase Now</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Membership Section End -->
        <br>
        <br>

        <!-- Footer Section Begin -->
        <footer class="footer-section">
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <div class="contact-option">
                            <span>Phone</span>
                            <p>+94342267652</p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="contact-option">
                            <span>Address</span>
                            <p>270/17/J,Royal Garden,Horana</p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="contact-option">
                            <span>Email</span>
                            <p>umain255@gmail.com</p>
                        </div>
                    </div>
                </div>

                <div class="copyright-text">

                    <div class="footer-social">
                        <a href="#"><i class="fa fa-facebook"></i></a>
                        <a href="#"><i class="fa fa-twitter"></i></a>
                        <a href="#"><i class="fa fa-instagram"></i></a>
                        <a href="#"><i class="fa fa-dribbble"></i></a>
                    </div>
                </div>



                <!-- Js Plugins -->
                <script src="js/jquery-3.3.1.min.js"></script>
                <script src="js/bootstrap.min.js"></script>
                <script src="js/jquery.magnific-popup.min.js"></script>
                <script src="js/mixitup.min.js"></script>
                <script src="js/jquery.slicknav.js"></script>
                <script src="js/owl.carousel.min.js"></script>
                <script src="js/main.js"></script>
                </body>

                </html>