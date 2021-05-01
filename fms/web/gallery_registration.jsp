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

        <h3>Gallery Registration</h3>

        <div>
            <form action="/action_page.php">
                <label for="gsection">Gallery Section</label>
                <input type="text" id="gsection" name="gallerysection" placeholder="Gallery section">
                <br>
                <label for="gpath">Gallery Path</label>
                <input type="text" id="gpath" name="gallerypath" placeholder="Gallery path">
                <br>
                <label for="gname">Gallery Name</label>
                <input type="text" id="gname" name="galleryname" placeholder="Gallery name">
                <br>
                <br> 


                <input type="submit" value="Submit">
            </form>
        </div>

    </body>
</html>
