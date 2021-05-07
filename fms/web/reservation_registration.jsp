<%-- 
    Document   : reservation_registration
    Created on : May 1, 2021, 3:30:03 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <style>
        input[type=text], select {
            width: 500px;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        
         input[type=date], select {
            width: 500px;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        
        input[type=number], select {
            width: 500px;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        
         input[type=time], select {
            width: 500px;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        input[type=submit] {
            width: 200px;
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        input[type=submit]:hover {
            background-color: #45a049;
        }

        div {
            border-radius: 5px;
            background-color:  #f2f2f2;
            padding: 20px;
        }
    </style>
    <body>

        <h3>Reservation Registration</h3>

        <div style="left: 30%; top: 10%; width: 40%; position: absolute;">
            <form action="/action_page.php">
                <div style="left: 5%; width: 250px; height: 50px; top: 20px; position: relative;"><label for="rtype">Reservation Type</label></div>
                <div style="left: 5%; width: 450px; height: 50px; top: -30px; position: relative;">  <select id="rvtype" name="reservationtype">
                        <option value="australia">Treadmill</option>
                        <option value="canada">Cycle</option>
                    </select></div>
                <div style="left:5%; width: 250px; height: 50px; top: -30px; position: relative;" ><label for="rdate">Reservation Date</label></div>
                <div style="left: 5%; width: 450px; height: 50px; top: -70px; position: relative;"><input type="date" id="rdate" name="reservationdate" placeholder="Reservation date"></div>
                <div style="left: 5%; width: 250px; height: 50px; top: -60px; position: relative;"><label for="rtime">Reservation Time</label></div>
                <div style="left: 5%; width: 450px; height: 50px; top: -100px; position: relative;"><input type="time" id="rtime" name="reservationtime" placeholder="Reservation time"></div>
                <div style="left: 5%; width: 250px; height: 50px; top: -90px; position: relative;"><label for="ruserid">Reservation User Id</label></div>
                <div style="left: 5%; width: 450px; height: 50px; top: -130px; position: relative;"><input type="number" id="ruserid" name="reservationuserif" placeholder="Reservation user id"></div>
                <div style="left: 5%; width: 250px; height: 50px; top: -120px; position: relative;"><label for="rusername">Reservation User Name</label></div>
                <div style="left: 5%; width: 450px; height: 50px; top: -160px; position: relative;"><input type="text" id="rusername" name="reservationusername" placeholder="Reservation user name"></div>
                <div style="left: 5%; width: 250px; height: 50px; top: -150px; position: relative;"><label for="rdetail">Reservation Detail</label></div>
                <div style="left: 5%; width: 450px; height: 50px; top: -190px; position: relative;"><input type="text" id="rdetail" name="reservationdetail" placeholder="Reservation detail"></div>


                <div style="left: 50%; width: 250px; height: 50px; top: -170px; position: relative;">  <input type="submit" value="Submit"></div>
            </form>
        </div>

    </body>
</html>
