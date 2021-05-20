<%-- 
    Document   : item_registration
    Created on : May 1, 2021, 3:29:28 PM
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

        <h3>Item Registration</h3>

        <div style="left: 30%; top: 10%; width: 40%; position: absolute;">
            <form action="addItemServlet">
                <div style="left: 5%; width: 250px; height: 50px; top: 20px; position: relative;"> <label for="iname">Item Name</label> </div>
                <div style="left: 5%; width: 450px; height: 50px; top: -30px; position: relative;"> <input type="text" id="iname" name="txtItemName" placeholder="Item name"></div>
                <div style="left:5%; width: 250px; height: 50px; top: -30px; position: relative;" > <label for="icategory">Item Category</label></div>
                <div style="left: 5%; width: 450px; height: 50px; top: -70px; position: relative;"><input type="text" id="gpath" name="txtItemCategory" placeholder="Item category "></div>
                <div style="left: 5%; width: 250px; height: 50px; top: -60px; position: relative;">  <label for="ibrand">Item Brand</label> </div>
                <div style="left: 5%; width: 450px; height: 50px; top: -100px; position: relative;"> <input type="text" id="icategory" name="txtItemBrand" placeholder="Item brand"></div>
                <div style="left: 5%; width: 250px; height: 50px; top: -90px; position: relative;"><label for="iprice">Item Price</label></div>
                <div style="left: 5%; width: 450px; height: 50px; top: -130px; position: relative;"> <input type="text" id="iprice" name="txtItemPrice" placeholder="Item price"></div>
                <div style="left: 5%; width: 250px; height: 50px; top: -120px; position: relative;">  <label for="idetail">Item Detail</label></div>
                <div style="left: 5%; width: 450px; height: 50px; top: -160px; position: relative;">  <input type="text" id="idetail" name="txtItemDetail" placeholder="Item detail"></div>



                <div style="left: 50%; width: 250px; height: 50px; top: -90px; position: relative;">  <input type="submit" value="Submit"></div>
            </form>
        </div>

    </body>
</html>
