<%-- 
    Document   : membership_registration
    Created on : May 1, 2021, 3:29:44 PM
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

        <h3>Membership Registration</h3>

        <div>
            <form action="/action_page.php">
                <label for="pname">Plan Name</label>
                <input type="text" id="pname" name="planname" placeholder="Plan name">
                <br>
                <label for="validperiodmonths">Valid Period Months</label>
                <input type="number" id="validperiodmonths" name="validperiodmonths" placeholder="Valid period months">
                <br>
                <label for="personaltrainer">Personal Trainer</label>
                <input type="text" id="personaltrainer" name="personaltrainer" placeholder="Personal trainer">
                <br>
                <label for="visitcountmonths">Visit Count Months</label>
                <input type="number" id="visitcountmonths" name="visitcountmonths" placeholder="Visit count months">
                <br>
                <label for="pprice">Plan Price</label>
                <input type="text" id="pprice" name="planprice" placeholder="Plan price">
                <br>
                <label for="pdetail">Plan Detail</label>
                <input type="text" id="pdetail" name="plandetail" placeholder="Plan detail">
                <br>
                <br> 


                <input type="submit" value="Submit">
            </form>
        </div>

    </body>
</html>
