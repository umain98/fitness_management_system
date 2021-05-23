<%@page import="com.fms.controller.ReservationController"%>
<%@page import="com.fms.controller.UserController"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
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

        <style>
            .my-custom-scrollbar {
                position: relative;
                height: 200px;
                overflow: auto;
            }
            .table-wrapper-scroll-y {
                display: block;
            }
        </style>

    </head>
    <body>

        <div style="position: absolute; left: 20%; top: 30%; width: 30%; height: 5%">
            <h4 style="color: #000000"><b>Active Users</b></h4>
        </div>
        <div style="position: absolute; left: 20%; top: 35%; width: 37%; height: 10%">

            <%
                ResultSet rset2 = UserController.getAllUserRecords();
            %>
            <table class="table align-middle">
                <thead>
                    <tr>
                        <th scope="col">#User ID</th>
                        <th scope="col">Name</th>
                        <th scope="col">Email</th>
                        <th scope="col">Action</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        while (rset2.next()) {
                    %>
                    <tr>
                        <th scope="row"><%=rset2.getString("user_id")%></th>
                        <td><%=rset2.getString("user_first_name")%></td>
                        <td><%=rset2.getString("user_email")%></td>
                        <td>
                            <form action="deleteUserServlet">
                                <%
                                    HttpSession ses = request.getSession();
                                    int id = rset2.getInt("user_id");
                                    ses.setAttribute("delete_user_id", id);
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
        <div style="position: absolute; left: 20%; top: 60%; width: 30%; height: 5%">
            <h4 style="color: #000000"><b>Tredmil Reservation</b></h4>
        </div>
        <div style="position: absolute; left: 20%; top: 65%; width: 37%; height: 10%">

            <%
                ResultSet rset5 = ReservationController.getAllReservationRecords();
                //, reservation_type, , , reservation_user_id, , reservation_status, reservation_detail
            %>
            <table class="table align-middle">
                <thead>
                    <tr>
                        <th scope="col">#ID</th>
                        <th scope="col">User</th>
                        <th scope="col">Reserved Date</th>
                        <th scope="col">Reserved Time</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        while (rset5.next()) {
                    %>
                    <tr>
                        <th scope="row"><%=rset5.getString("reservation_id")%></th>
                        <td><%=rset5.getString("reservation_user_name")%></td>
                        <td><%=rset5.getString("reservation_date")%></td>
                        <td><%=rset5.getString("reservation_time")%></td>

                    </tr>   
                    <%
                        }
                    %>
                </tbody>
            </table>
        </div>
    </body>
</html>
