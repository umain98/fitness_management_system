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

        <h3>User Registration</h3>

        <div>
            <form action="/action_page.php">
                <label for="fname">First Name</label>
                <input type="text" id="fname" name="firstname" placeholder="Your name">
                <br>
                <label for="lname">Last Name</label>
                <input type="text" id="lname" name="lastname" placeholder="Your last name">
                <br>
                <label for="contact">Contact</label>
                <input type="text" id="contact" name="contact" placeholder="Your contact number">
                <br>
                <label for="email">Email</label>
                <input type="text" id="email" name="email" placeholder="Your email">
                <br>
                <label for="address">Address</label>
                <input type="text" id="address" name="address" placeholder="Your address">
                <br>
                <label for="dob">Date Of Birth</label>
                <input type="date" id="dob" name="dateofbirth" placeholder="Your date of birth">
                <br> 
                <label for="height"> Height Cm</label>
                <input type="text" id="height" name="height" placeholder="Your height">
                <br> 
                <label for="weight"> Weight Kg</label>
                <input type="text" id="weight" name="weight" placeholder="Your weight">
                <br> 
                <label for="detail">Details</label>
                <input type="text" id="dob" name="detail" placeholder="Your datail">
                <br> 
                <label for="password">Password</label>
                <input type="password" id="password" name="password" placeholder="Your password">
                <br> 
                <br>

                <input type="submit" value="Submit">
            </form>
        </div>

    </body>
</html>
