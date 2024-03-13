<%-- 
    Document   : Change
    Created on : Nov 2, 2023, 2:24:35 AM
    Author     : hoang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Change password</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <style>
            .pass_show {
                position: relative;
            }

            .pass_show .ptxt {
                position: absolute;
                top: 50%;
                right: 10px;
                z-index: 1;
                color: #f36c01;
                margin-top: -10px;
                cursor: pointer;
                transition: .3s ease all;
            }

            .pass_show .ptxt:hover {
                color: #333333;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-sm-4 mx-auto">
                    <h1 class="text-center">Change Password</h1>
                    <h3 style="color: red">${requestScope.ms}</h3>
                    <form action="change">
                        <label>Current Password</label>
                        <input type="hidden" name="user" value="${sessionScope.acc.user}">
                        <div class="form-group pass_show">
                            <input type="password" id="currentPassword" name="opass" class="form-control" placeholder="Current Password">
                            <span class="ptxt" id="currentPasswordToggle" onclick="togglePassword('currentPassword')">Show Password</span>
                        </div>
                        <label>New Password</label>
                        <div class="form-group pass_show">
                            <input type="password" id="newPassword" name="pass" class="form-control" placeholder="New Password">
                            <span class="ptxt" id="newPasswordToggle" onclick="togglePassword('newPassword')">Show Password</span>
                        </div>
                        <label>Confirm Password</label>
                        <div class="form-group pass_show">
                            <input type="password" id="confirmPassword" name="rpass" class="form-control" placeholder="Confirm Password">
                            <span class="ptxt" id="confirmPasswordToggle" onclick="togglePassword('confirmPassword')">Show Password</span>
                        </div>

                        <button type="submit" class="btn btn-primary btn-block">Change Password</button>
                    </form>
                </div>
            </div>
        </div>

        <script>
            function togglePassword(inputId) {
                var passwordInput = document.getElementById(inputId);
                var passwordToggle = document.getElementById(inputId + "Toggle");

                if (passwordInput.type === "password") {
                    passwordInput.type = "text";
                    passwordToggle.innerHTML = "Hide Password";
                } else {
                    passwordInput.type = "password";
                    passwordToggle.innerHTML = "Show Password";
                }
            }
        </script>
    </body>
</html>
