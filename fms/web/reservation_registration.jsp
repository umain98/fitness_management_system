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
            width: 400px;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        input[type=submit] {
            width: 400px;
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
            background-color: #f2f2f2;
            padding: 20px;
        }
    </style>
    <body>

        <h3>Reservation Registration</h3>

        <div>
            <form action="/action_page.php">
                <label for="rtype">Reservation Type</label>
                <select id="rvtype" name="reservationtype">
                    <option value="australia">Treadmill</option>
                    <option value="canada">Cycle</option>
                </select>
                <br>
                <label for="rdate">Reservation Date</label>
                <input type="date" id="rdate" name="reservationdate" placeholder="Reservation date">
                <br>
                <label for="rtime">Reservation Time</label>
                <input type="time" id="rtime" name="reservationtime" placeholder="Reservation time">
                <br>
                <label for="ruserid">Reservation User Id</label>
                <input type="number" id="ruserid" name="reservationuserif" placeholder="Reservation user id">
                <br>
                <label for="rusername">Reservation User Name</label>
                <input type="text" id="rusername" name="reservationusername" placeholder="Reservation user name">
                <br>
                <label for="rdetail">Reservation Detail</label>
                <input type="text" id="rdetail" name="reservationdetail" placeholder="Reservation detail">
                <br>
                <br> 


                <input type="submit" value="Submit">
            </form>
        </div>

    </body>
</html>
