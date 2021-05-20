<%-- 
    Document   : trainer_registration
    Created on : May 1, 2021, 4:01:38 PM
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

        <div style="left: 30%; top: 10%; width: 40%; position: absolute;">
            <div style="left: 5%; width: 250px; height: 50px; top: 20px; position: relative;"><label for="tname">Trainer Name</label> </div>
            <div style="left: 5%; width: 450px; height: 50px; top: -30px; position: relative;"><input type="text" id="tname" name="trainername" placeholder="Trainer name"></div>
            <div style="left:5%; width: 250px; height: 50px; top: -30px; position: relative;" ><label for="temail">Trainer Email</label></div>
            <div style="left: 5%; width: 450px; height: 50px; top: -70px; position: relative;"><input type="text" id="temail" name="traineremail" placeholder="Trainer email"></div>
            <div style="left: 5%; width: 250px; height: 50px; top: -60px; position: relative;"><label for="tregdate">Trainer Reg Date</label> </div>
            <div style="left: 5%; width: 450px; height: 50px; top: -100px; position: relative;"><input type="date" id="tregdate" name="treainerregdate" placeholder="Trainer reg date"></div>
            <div style="left: 5%; width: 250px; height: 50px; top: -90px; position: relative;"><label for="contractperiodmonths">Contract Period Months</label></div>
            <div style="left: 5%; width: 450px; height: 50px; top: -130px; position: relative;"><input type="number" id="contractperiodmonths" name="contractperiodmonths" placeholder="Contract period months"></div>
            <div style="left: 5%; width: 250px; height: 50px; top: -120px; position: relative;"><label for="taddress">Trainer Address</label></div>
            <div style="left: 5%; width: 450px; height: 50px; top: -160px; position: relative;"><input type="text" id="taddress" name="treaineraddress" placeholder="Trainer address"></div>
            <div style="left: 5%; width: 250px; height: 50px; top: -120px; position: relative;"><label for="tcontact">Trainer Contact</label></div>
            <div style="left: 5%; width: 450px; height: 50px; top: -160px; position: relative;"><input type="text" id="tcontact" name="trainercontact" placeholder="Trainer contact"></div>
            <div style="left: 5%; width: 250px; height: 50px; top: -120px; position: relative;"><label for="tdetail">Trainer Detail</label></div>
            <div style="left: 5%; width: 450px; height: 50px; top: -160px; position: relative;"><input type="text" id="tdetail" name="trainerdetail" placeholder="Trainer detail"></div>


            <div style="left: 50%; width: 250px; height: 50px; top: -120px; position: relative;">  <input type="submit" value="Submit"></div>
        </form>
    </div>

</body>
</html>
