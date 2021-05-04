<%-- 
    Document   : gallery_registration
    Created on : May 1, 2021, 3:28:56 PM
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

        <h3>Gallery Registration</h3>

        <div style="left: 30%; top: 10%; width: 40%; bottom: 10%; position: absolute;">
            <form action="/action_page.php">
                <div style="left: 5%; width: 250px; height: 50px; top: 20px; position: relative;"> <label for="gsection">Gallery Section</label> </div>
                <div style="left: 5%; width: 450px; height: 50px; top: -30px; position: relative;"><input type="text" id="gsection" name="gallerysection" placeholder="Gallery section"></div>
                <div style="left:5%; width: 250px; height: 50px; top: -30px; position: relative;" ><label for="gpath">Gallery Path</label></div>
                <div style="left: 5%; width: 450px; height: 50px; top: -70px; position: relative;"><input type="text" id="gpath" name="gallerypath" placeholder="Gallery path"></div>
                <div style="left: 5%; width: 250px; height: 50px; top: -60px; position: relative;"><label for="gname">Gallery Name</label> </div>
                <div style="left: 5%; width: 450px; height: 50px; top: -100px; position: relative;"><input type="text" id="gname" name="galleryname" placeholder="Gallery name"></div>


                <div style="left: 50%; width: 250px; height: 50px; top: -60px; position: relative;">  <input type="submit" value="Submit"></div>



            </form>
        </div>

    </body>
</html>
