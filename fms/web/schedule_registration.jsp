<%-- 
   Document   : schedule_registration
   Created on : May 1, 2021, 3:30:18 PM
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

        <h3>Schedule Registration</h3>

        <div>
            <form action="/action_page.php">


                <label for="createdbyid">Created By Id</label>
                <input type="number" id="createdbyid" name="createdbyid" placeholder="Created by id">
                <br>
                <label for="createdbyname">Created By Name</label>
                <input type="text" id="createdbyname" name="createdbyname" placeholder="Created by name">
                <br>
                <label for="startdate">Start Date</label>
                <input type="date" id="startdate" name="startdate" placeholder="Start date">
                <br>
                <label for="enddate">End Date</label>
                <input type="date" id="enddate" name="enddate" placeholder="End date">
                <br>
                <label for="daysperweek">Days Per Week</label>
                <input type="number" id="daysperweek" name="daysperweek" placeholder="Days per week">
                <br>
                <label for="schedulefor">Schedule For</label>
                <input type="text" id="schedulefor" name="schedulefor" placeholder="Schedule for">
                <br>
                <label for="specialnote">Special Note</label>
                <input type="text" id="specialnote" name="specialnote" placeholder="Special Note">
                <br>
                <label for="detail">Detail</label>
                <input type="text" id="detail" name="detail" placeholder="Schedule detail">
                <br>
                <br> 


                <input type="submit" value="Submit">
            </form>
        </div>

    </body>
</html>
