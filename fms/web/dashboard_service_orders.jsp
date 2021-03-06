<%@page import="com.fms.controller.OrderControlller"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dashboard</title>
        <style>
            @-webkit-keyframes spin {
                0% { -webkit-transform: rotate(0deg); }
                100% { -webkit-transform: rotate(360deg); }
            }

            @keyframes spin {
                0% { transform: rotate(0deg); }
                100% { transform: rotate(360deg); }
            }

            /* Add animation to "page content" */
            .animate-bottom {
                position: relative;
                -webkit-animation-name: animatebottom;
                -webkit-animation-duration: 1s;
                animation-name: animatebottom;
                animation-duration: 1s
            }

            @-webkit-keyframes animatebottom {
                from { bottom:-100px; opacity:0 } 
                to { bottom:0px; opacity:1 }
            }

            @keyframes animatebottom { 
                from{ bottom:-100px; opacity:0 } 
                to{ bottom:0; opacity:1 }
            }

            .zoom {
                padding: 10px;
                /*background-color: green;*/
                transition: transform .2s; /* Animation */
                width: 90px;
                height: 90px;
                margin: 0 auto;
            }

            .zoom:hover {
                transform: scale(1.5); /* (150% zoom - Note: if the zoom is too large, it will go outside of the viewport) */
            }
            .no-js #loader { display: none;  }
            .js #loader { display: block; position: absolute; left: 100px; top: 0; }
            .se-pre-con {
                position: fixed;
                left: 0px;
                top: 0px;
                width: 100%;
                height: 100%;
                z-index: 9999;
                background: url(https://smallenvelop.com/wp-content/uploads/2014/08/Preloader_11.gif) center no-repeat #fff;
            }
        </style>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
        <!-- Google Fonts -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap">
        <!-- Bootstrap core CSS -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
        <!-- Material Design Bootstrap -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.18.0/css/mdb.min.css" rel="stylesheet">

        <!-- JQuery -->
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <!-- Bootstrap tooltips -->
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js"></script>
        <!-- Bootstrap core JavaScript -->
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/js/bootstrap.min.js"></script>
        <!-- MDB core JavaScript -->
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.18.0/js/mdb.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.js"></script>
        <script>
            $(window).load(function () {
                // Animate loader off screen
                $(".se-pre-con").fadeOut("slow");
                ;
            });
        </script>

        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
        <!-- Google Fonts -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap">
        <!-- Bootstrap core CSS -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
        <!-- Material Design Bootstrap -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.18.0/css/mdb.min.css" rel="stylesheet">

        <!-- JQuery -->
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <!-- Bootstrap tooltips -->
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js"></script>
        <!-- Bootstrap core JavaScript -->
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/js/bootstrap.min.js"></script>
        <!-- MDB core JavaScript -->
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.18.0/js/mdb.min.js"></script>

    </head>
    <body> 
        <div style="position: fixed; left: 0px; top: 0px; width: 100%; height: 100px; z-index:999">
        </div>
        <%@include file="navigationBar.jsp" %>

        <div class="se-pre-con"></div>
        <!--9 big white box-->
        <div style="position: fixed; left: 0%; top: 6%; width: 100%; height: 100%; z-index:-1">
        </div>

        <div style="position: absolute; left: 10%; top:20%; width: 80%; height: 80%; ">
            <div>
                <h3>Service Orders</h3>
            </div>
            <%                ResultSet rset = OrderControlller.getOrderByStatus("S");
            %>
            <table class="table align-middle">
                <thead>
                    <tr>
                        <th scope="col">#Order ID</th>
                        <th scope="col">Order By</th>
                        <th scope="col">Date</th>
                        <th scope="col">Item Name</th>
                        <th scope="col">Deliver Address</th>
                        <th scope="col">Total</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        while (rset.next()) {
                    %>
                    <tr>
                        <th scope="row"><%=rset.getString("order_id")%></th>
                        <td><%=rset.getString("order_user_name")%></td>
                        <td><%=rset.getString("order_date_time")%></td>
                        <td><%=rset.getString("order_detail")%></td>
                        <td><%=rset.getString("order_delivery_address")%></td>
                        <td><%=rset.getString("order_total_price")%></td>
                        <td>
                            <form action="deleteOrderServlet">
                                <%
                                    HttpSession ses = request.getSession();
                                    int id = rset.getInt("order_id");
                                    ses.setAttribute("delete_order_id", id);
                                %>
                                <!--                                <button type="button" class="btn btn-danger btn-sm px-3">
                                                                    <i class="fas fa-times"></i>
                                                                </button>-->
                                <input class="btn btn-danger btn-block py-2" type="submit" value="Delete Order">
                            </form>
                        </td>
                    </tr>  
                    <%
                        }
                    %>
                </tbody>
            </table>
        </div>
    </body>
</html>
