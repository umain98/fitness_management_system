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
        <link href="https://fonts.googleapis.com/css?family=Amatic+SC:400,700&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800,900&display=swap"
              rel="stylesheet">

        <!-- Css Styles -->
        <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
        <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
        <link rel="stylesheet" href="css/nice-select.css" type="text/css">
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

        <%
            HttpSession ses = request.getSession();
            User user = (User) ses.getAttribute("cur_user");
            if (user == null) {
                response.sendRedirect("login.jsp");
                return;
            }

            String product = ses.getAttribute("product").toString();
            String price = ses.getAttribute("price").toString();
            String qty = ses.getAttribute("qty").toString();
            String total = ses.getAttribute("total").toString();
        %>

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
                        <br>
                        <br>
                        <ul>
                            <li><a href="index.jsp">Home</a></li>
                            <li><a href="about-us.jsp">About</a></li>
                            <li><a href="classes.jsp">Classes</a></li>
                            <li><a href="shop.jsp">Shop</a></li>
                            <li><a href="gallery.jsp">Gallery</a></li>
                            <li><a href="contact.jsp">Contacts</a></li>
                            <li class="active"><a href="check-out.jsp">check-out</a></li>
                            <li><a href="Reservation.jsp">Reservations</a></li>
                            <li><a href="user_registration.jsp">User Registration</a></li>
                            <li> <a href="shopping-cart.jsp"><i class="fa fa-shopping-cart" style="font-size: 50px;color: aliceblue"></a></i></li>
                        </ul>
                    </nav>
                </div>
                <div id="mobile-menu-wrap"></div>
            </div>
        </header>
        <!-- Header End -->

        <!-- Middle Section Begin -->
        <section class="breadcrumb-section set-bg" data-setbg="img/breadcrumb/cvp.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="breadcrumb-text">
                            <h2>Checkout</h2>
                            <div class="breadcrumb-option">
                                <a href="./index.html"><i class="fa fa-home"></i> Home</a>
                                <span>Checkout</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Middle Section End -->


        <!-- Page Add Section Begin -->
        <section class="page-add">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4">
                        <div class="page-breadcrumb">
                            <h2>Checkout<span>.</span></h2>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Page Add Section End -->

        <!-- Cart Total Page Begin -->
        <section class="cart-total-page spad">
            <div class="container">
                <form action="payOnline.jsp" class="checkout-form">
                    <div class="row">
                        <div class="col-lg-12">
                            <h3>Your Information</h3>
                        </div> 
                        <div class="col-lg-9">
                            <div class="row">
                                <div class="col-lg-2">
                                    <p class="in-name">Name*</p>
                                </div>
                                <div class="col-lg-5">
                                    <input type="text" placeholder="First Name" value="<%=user.getFirstName()%>">
                                </div>
                                <div class="col-lg-5">
                                    <input type="text" placeholder="Last Name" value="<%=user.getLastName()%>">
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-2">
                                    <p class="in-name">Street Address*</p>
                                </div>
                                <div class="col-lg-10">
                                    <input type="text" placeholder="Your Current Adress" value="<%=user.getAddress()%>">
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-2">
                                    <p class="in-name">City*</p>
                                </div>
                                <div class="col-lg-10">
                                    <input type="text">
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-2">
                                    <p class="in-name">Phone*</p>
                                </div>
                                <div class="col-lg-10">
                                    <input type="text"  value="<%=user.getContact()%>">
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3">
                            <div class="order-table">
                                <div class="cart-item">
                                    <span>Product</span>
                                    <p class="product-name"><%=product%></p>
                                </div>
                                <div class="cart-item">
                                    <span>Price</span>
                                    <p><%=price%></p>
                                </div>
                                <div class="cart-item">
                                    <span>Quantity</span>
                                    <p><%=qty%></p>
                                </div>
                                <div class="cart-item">
                                    <span>Shipping</span>
                                    <p>Free</p>
                                </div>

                                <div class="cart-total">
                                    <span>Total</span>
                                    <p><%=total%></p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="payment-method">
                                <h3>Payment Method</h3>
                                <ul>
                                    <!--                                    <li>Paypal <img src="img/paypal.jpg" alt="">  <span>
                                                                                <label for="two"></label>
                                                                                <input type="radio" id="two">
                                                                            </span></li>
                                                                        <li>
                                                                            <label for="two">Cash on delivery</label>
                                                                            <input type="radio" id="two">
                                                                        </li>-->
                                </ul>
                                <!--<button type="submit">Pay Now</button>-->
                                <input class="btn btn-primary btn-block py-2" type="submit" value="Pay Now">
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </section>
        <!-- Cart Total Page End -->

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
                <script src="js/jquery.slicknav.js"></script>
                <script src="js/owl.carousel.min.js"></script>
                <script src="js/jquery.nice-select.min.js"></script>
                <script src="js/mixitup.min.js"></script>
                <script src="js/main.js"></script>
                </body>

                </html>