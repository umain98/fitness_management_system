<%-- 
    Document   : trainer_registration
    Created on : May 1, 2021, 4:01:38 PM
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

        <h3>Trainer Registration</h3>

        <div>
            <label for="tname">Trainer Name</label>
            <input type="text" id="tname" name="trainername" placeholder="Trainer name">
            <br>
            <label for="temail">Trainer Email</label>
            <input type="text" id="temail" name="traineremail" placeholder="Trainer email">
            <br>
            <label for="tregdate">Trainer Reg Date</label>
            <input type="date" id="tregdate" name="treainerregdate" placeholder="Trainer reg date">
            <br>
            <label for="contractperiodmonths">Contract Period Months</label>
            <input type="number" id="contractperiodmonths" name="contractperiodmonths" placeholder="Contract period months">
            <br>
            <label for="taddress">Trainer Address</label>
            <input type="text" id="taddress" name="treaineraddress" placeholder="Trainer address">
            <br>
            <label for="tcontact">Trainer Contact</label>
            <input type="text" id="tcontact" name="trainercontact" placeholder="Trainer contact">
            <br>
            <label for="tdetail">Trainer Detail</label>
            <input type="text" id="tdetail" name="trainerdetail" placeholder="Trainer detail">
            <br>
            <br> 


            <input type="submit" value="Submit">
            </form>
        </div>

    </body>
</html>
