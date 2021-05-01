<%-- 
    Document   : item_registration
    Created on : May 1, 2021, 3:29:28 PM
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

        <h3>Item Registration</h3>

        <div>
            <form action="/action_page.php">
                <label for="iname">Item Name</label>
                <input type="text" id="iname" name="itemname" placeholder="Item name">
                <br>
                <label for="icategory">Item Category</label>
                <input type="text" id="gpath" name="itemcategory" placeholder="Item category ">
                <br>
                <label for="ibrand">Item Brand</label>
                <input type="text" id="icategory" name="itembrand" placeholder="Item brand">
                <br>
                <label for="iprice">Item Price</label>
                <input type="currency" id="iprice" name="itemprice" placeholder="Item price">
                <br>
                <label for="idetail">Item Detail</label>
                <input type="text" id="idetail" name="itemdetail" placeholder="Item detail">
                <br>
                <br> 


                <input type="submit" value="Submit">
            </form>
        </div>

    </body>
</html>
