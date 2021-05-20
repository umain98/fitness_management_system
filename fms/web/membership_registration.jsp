<%-- 
    Document   : membership_registration
    Created on : May 1, 2021, 3:29:44 PM
    Author     : UMAIN
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
        
        input[type=number], select {
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

        <h3>Membership Registration</h3>

        <div style="left: 30%; top: 10%; width: 40%; position: absolute;">
            <form action="addMembershipServlet">
                <div style="left: 5%; width: 250px; height: 50px; top: 20px; position: relative;"><label for="pname">Plan Name</label> </div>
                <div style="left: 5%; width: 450px; height: 50px; top: -30px; position: relative;"><input type="text" id="pname" name="txtPlanName" placeholder="Plan name"></div>
                <div style="left:5%; width: 250px; height: 50px; top: -30px; position: relative;" ><label for="validperiodmonths">Valid Period Months</label></div>
                <div style="left: 5%; width: 450px; height: 50px; top: -80px; position: relative;"><input type="number" id="validperiodmonths" name="txtValidPeriodMonths" placeholder="Valid period months"></div>
                <div style="left: 5%; width: 250px; height: 50px; top: -90px; position: relative;"><label for="personaltrainer">Personal Trainer</label> </div>
                <div style="left: 5%; width: 450px; height: 50px; top: -130px; position: relative;"><input type="text" id="personaltrainer" name="txtPersonalTrainer" placeholder="Personal trainer"></div>
                <div style="left: 5%; width: 250px; height: 50px; top: -130px; position: relative;"><label for="visitcountmonths">Visit Count Months</label></div>
                <div style="left: 5%; width: 450px; height: 50px; top: -160px; position: relative;"><input type="number" id="visitcountmonths" name="txtVisitCountMonth" placeholder="Visit count months"></div>
                <div style="left: 5%; width: 250px; height: 50px; top: -170px; position: relative;"><label for="pprice">Plan Price</label></div>
                <div style="left: 5%; width: 450px; height: 50px; top: -220px; position: relative;"><input type="text" id="pprice" name="txtPlanPrice" placeholder="Plan price"></div>
                <div style="left: 5%; width: 250px; height: 50px; top: -200px; position: relative;"> <label for="pdetail">Plan Detail</label></div>
                <div style="left: 5%; width: 450px; height: 50px; top: -250px; position: relative;"><input type="text" id="pdetail" name="txtPlanDetail" placeholder="Plan detail"></div>



                <div style="left: 50%; width: 250px; height: 50px; top: -170px; position: relative;">  <input type="submit" value="Submit"></div>
            </form>
        </div>

    </body>
</html>
