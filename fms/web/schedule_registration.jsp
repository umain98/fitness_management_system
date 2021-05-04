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
            background-color: #f2f2f2;
            padding: 20px;
        }
    </style>
    <body>

        <h3>Schedule Registration</h3>

        <div style="left: 30%; top: 10%; width: 40%; position: absolute;">
            <form action="/action_page.php">
                <div style="left: 5%; width: 250px; height: 50px; top: 20px; position: relative;"><label for="createdbyid">Created By Id</label> </div>
                <div style="left: 5%; width: 450px; height: 50px; top: -30px; position: relative;"><input type="number" id="createdbyid" name="createdbyid" placeholder="Created by id"></div>
                <div style="left:5%; width: 250px; height: 50px; top: -30px; position: relative;" ><label for="createdbyname">Created By Name</label></div>
                <div style="left: 5%; width: 450px; height: 50px; top: -80px; position: relative;"><input type="text" id="createdbyname" name="createdbyname" placeholder="Created by name"></div>
                <div style="left: 5%; width: 250px; height: 50px; top: -90px; position: relative;"><label for="startdate">Start Date</label></div>
                <div style="left: 5%; width: 450px; height: 50px; top: -130px; position: relative;"><input type="date" id="startdate" name="startdate" placeholder="Start date"></div>
                <div style="left: 5%; width: 250px; height: 50px; top: -130px; position: relative;"><label for="enddate">End Date</label></div>
                <div style="left: 5%; width: 450px; height: 50px; top: -160px; position: relative;"><input type="date" id="enddate" name="enddate" placeholder="End date"></div>
                <div style="left: 5%; width: 250px; height: 50px; top: -170px; position: relative;"><label for="daysperweek">Days Per Week</label></div>
                <div style="left: 5%; width: 450px; height: 50px; top: -220px; position: relative;"><input type="number" id="daysperweek" name="daysperweek" placeholder="Days per week"></div>
                <div style="left: 5%; width: 250px; height: 50px; top: -200px; position: relative;"><label for="schedulefor">Schedule For</label></div>
                <div style="left: 5%; width: 450px; height: 50px; top: -250px; position: relative;"><input type="text" id="schedulefor" name="schedulefor" placeholder="Schedule for"></div>
                <div style="left: 5%; width: 250px; height: 50px; top: -200px; position: relative;"><label for="specialnote">Special Note</label></div>
                <div style="left: 5%; width: 450px; height: 50px; top: -250px; position: relative;"><input type="text" id="specialnote" name="specialnote" placeholder="Special Note"></div>
                <div style="left: 5%; width: 250px; height: 50px; top: -200px; position: relative;"><label for="detail">Detail</label></div>
                <div style="left: 5%; width: 450px; height: 50px; top: -250px; position: relative;"><input type="text" id="detail" name="detail" placeholder="Schedule detail"></div>


                
                <div style="left: 50%; width: 250px; height: 50px; top: -220px; position: relative;">  <input type="submit" value="Submit"></div>

            </form>
        </div>

    </body>
</html>
