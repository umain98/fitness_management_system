<%@page import="com.fms.controller.LogHistoryController"%>
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
            .my-custom-scrollbar-lh {
                position: relative;
                height: 500px;
                overflow: auto;
            }
            .table-wrapper-scroll-y {
                display: block;
            }
        </style>

    </head>
    <body>
        <div class="card p-3 mb-3" style="position: fixed; left: 15px; top: 17%; width: 17%; height: 79%; z-index:-1" >

            <div style="position: absolute; left: 5%; top: 5%; width: 70%; height: 5%">
                <h4 style="color: #000000"><b>Login History</b></h4>
            </div>
            <%
                ResultSet rset3 = LogHistoryController.getAllLogHistoryRecords();

            %>

            <div style="position: absolute; left: 5%; top: 15%; width: 90%; height: 90%">
                <div class="table-wrapper-scroll-y my-custom-scrollbar-lh">
                    <table class="table table-bordered table-striped mb-0">
                        <tbody>
                            <%                                while (rset3.next()) {
                            %>

                            <tr>
                                <td><%=rset3.getString("log_history_user_name")%></td> 
                            </tr>
                            <%                                }
                            %>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </body>
</html>
