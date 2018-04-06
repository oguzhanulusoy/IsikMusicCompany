<%-- 
    Document   : purchase
    Created on : May 18, 2017, 2:57:16 AM
    Author     : Mac Lab
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Purchase Information</h1>
<form method="post" action="register.jsp">
            <center>
            <table border="1" width="30%" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2">Enter Information Here</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Credit Card No</td>
                        <td><input type="text" name="ccno" value="" /></td>
                    </tr>
                    <tr>
                        <td>Name</td>
                        <td><input type="text" name="cname" value="" /></td>
                    </tr>
                    <tr>
                        <td>CVV</td>
                        <td><input type="text" name="cvv" value="" /></td>
                    </tr>
                    
                    <tr>
                        <td> <a href='added.jsp'>Submit</a></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                 
                </tbody>
            </table>
            </center>
        </form>
        
    </body>
</html>
