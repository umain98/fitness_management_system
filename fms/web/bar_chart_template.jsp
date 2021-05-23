<%@page import="com.fms.controller.LogHistoryController"%>
<%@page import="com.fms.core.Validations"%>
<%@page import="java.math.BigDecimal"%>
<!DOCTYPE HTML>
<html>
    <head>
        <%
            BigDecimal Sunday = Validations.getBigDecimalOrZeroFromString(Integer.toString(LogHistoryController.getLogHistroyCountByDayName("Sunday")));
            BigDecimal Monday = Validations.getBigDecimalOrZeroFromString(Integer.toString(LogHistoryController.getLogHistroyCountByDayName("Monday")));
            BigDecimal Tuesday = Validations.getBigDecimalOrZeroFromString(Integer.toString(LogHistoryController.getLogHistroyCountByDayName("Tuesday")));
            BigDecimal Wednesday = Validations.getBigDecimalOrZeroFromString(Integer.toString(LogHistoryController.getLogHistroyCountByDayName("Wednesday")));
            BigDecimal Thursday = Validations.getBigDecimalOrZeroFromString(Integer.toString(LogHistoryController.getLogHistroyCountByDayName("Thursday")));
            BigDecimal Friday = Validations.getBigDecimalOrZeroFromString(Integer.toString(LogHistoryController.getLogHistroyCountByDayName("Friday")));
            BigDecimal Saturday = Validations.getBigDecimalOrZeroFromString(Integer.toString(LogHistoryController.getLogHistroyCountByDayName("Saturday")));

//
//            janValue = new BigDecimal(20000);
//            febValue = new BigDecimal(10000);
//            marValue = new BigDecimal(5000);
//            aprValue = new BigDecimal(30000);
//            mayValue = new BigDecimal(30000);
//            junValue = new BigDecimal(40000);

        %>
        <script>
            window.onload = function () {
                var chart = new CanvasJS.Chart("chartContainer", {
                    animationEnabled: true,
                    exportEnabled: true,
                    theme: "light2", // "light1", "light2", "dark1", "dark2"
                    title: {
                        text: "" //Annual Cheque Deposits Over Dates

                    },
                    data: [{
                            type: "column", //change type to bar, line, area, pie, etc, column
                            //indexLabel: "{y}", //Shows y value on all Data Points
                            indexLabelFontColor: "#5A5757",
                            indexLabelFontSize: 12,
                            indexLabelPlacement: "outside",
                            dataPoints: [

                                {x: 1, y: <%= Sunday%>, indexLabel: "Sunday"},
                                {x: 2, y: <%= Monday%>, indexLabel: "Monday"},
                                {x: 3, y: <%= Tuesday%>, indexLabel: "Tuesday"},
                                {x: 4, y: <%= Wednesday%>, indexLabel: "Wednesday"},
                                {x: 5, y: <%= Thursday%>, indexLabel: "Thursday"},
                                {x: 6, y: <%= Friday%>, indexLabel: "Friday"},
                                {x: 7, y: <%= Saturday%>, indexLabel: "Saturday"},
                            ]
                        }]
                });
                chart.render();
            }
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
        <div class="form-group" style="position: absolute; left: 60%; top: 30%; width: 37%; height: 15px">
            <h4><b>SITE USAGE -BAR CHART</b></h4>
        </div>
        <div id="chartContainer"  style="position: absolute; left: 60%; top: 35%;  height: 450px; width: 37%;"></div>
        <script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
    </body>
</html>