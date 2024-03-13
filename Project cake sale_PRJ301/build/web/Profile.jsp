<%-- 
    Document   : Profile
    Created on : Nov 2, 2023, 2:03:05 AM
    Author     : hoang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            div {
                background-color: #f0f0f0;
                padding: 10px;
                border: 1px solid #ccc;
                margin: 10px;
            }

            a {
                text-decoration: none;
                color: #0074D9;
            }

            .right-align {
                float: right;
            }

            /* You can add more styles as needed */

        </style>
    </head>
    <body>
        <div style="text-align: center">Profile</div>
        <div>
            Username: ${sessionScope.acc.user}
        </div>
        <a href="Change.jsp">Change password</a>
        <a href="home" class="right-align">Back to home</a>
    </body>
</html>
