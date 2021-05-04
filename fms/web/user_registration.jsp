<%-- 
    Document   : user_registration
    Created on : May 1, 2021, 1:49:32 PM
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

        <div>
            <h3>User Registration</h3>
        </div>


        <div style="left: 30%; top: 20%; width: 40%; position: absolute;">
            <form action="/action_page.php">
                <div style="left: 5%; width: 250px; height: 50px; top: 20px; position: relative;"> <label for="fname">First Name</label> </div>
                <div style="left: 5%; width: 450px; height: 50px; top: -30px; position: relative;">  <input type="text" id="fname" name="firstname" placeholder="Your name"></div>
                <div style="left:5%; width: 250px; height: 50px; top: -30px; position: relative;" > <label for="lname">Last Name</label></div>
                <div style="left: 5%; width: 450px; height: 50px; top: -80px; position: relative;"><input type="text" id="lname" name="lastname" placeholder="Your last name"></div>
                <div style="left: 5%; width: 250px; height: 50px; top: -90px; position: relative;">  <label for="contact">Contact</label></div>
                <div style="left: 5%; width: 450px; height: 50px; top: -130px; position: relative;"> <input type="text" id="contact" name="contact" placeholder="Your contact number"></div>
                <div style="left: 5%; width: 250px; height: 50px; top: -130px; position: relative;"> <label for="email">Email</label></div>
                <div style="left: 5%; width: 450px; height: 50px; top: -180px; position: relative;"><input type="text" id="email" name="email" placeholder="Your email"></div>
                <div style="left: 5%; width: 250px; height: 50px; top: -170px; position: relative;"><label for="address">Address</label></div>
                <div style="left: 5%; width: 450px; height: 50px; top: -220px; position: relative;"><input type="text" id="address" name="address" placeholder="Your address"></div>
                <div style="left: 5%; width: 250px; height: 50px; top: -200px; position: relative;"><label for="dob">Date Of Birth</label></div>
                <div style="left: 5%; width: 450px; height: 50px; top: -250px; position: relative;"><input type="date" id="dob" name="dateofbirth" placeholder="Your date of birth"></div>
                <div style="left: 5%; width: 250px; height: 50px; top: -250px; position: relative;"><label for="height"> Height Cm</label></div>
                <div style="left: 5%; width: 450px; height: 50px; top: -290px; position: relative;"><input type="text" id="height" name="height" placeholder="Your height"></div>
                <div style="left: 5%; width: 250px; height: 50px; top: -280px; position: relative;"><label for="weight"> Weight Kg</label></div>
                <div style="left: 5%; width: 450px; height: 50px; top: -320px; position: relative;"><input type="text" id="weight" name="weight" placeholder="Your weight"></div>
                <div style="left: 5%; width: 250px; height: 50px; top: -320px; position: relative;"><label for="detail">Details</label></div>
                <div style="left: 5%; width: 450px; height: 50px; top: -350px; position: relative;"><input type="text" id="detail" name="detail" placeholder="Your datail"></div>
                <div style="left: 5%; width: 250px; height: 50px; top: -350px; position: relative;"> <label for="password">Password</label></div>
                <div style="left: 5%; width: 450px; height: 50px; top: -380px; position: relative;"> <input type="password" id="password" name="password" placeholder="Your password"></div>


                <div style="left: 50%; width: 250px; height: 50px; top: -380px; position: relative;">  <input type="submit" value="Submit"></div>
            </form>
        </div>

    </body>
</html>
