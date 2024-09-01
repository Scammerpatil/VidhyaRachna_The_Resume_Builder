<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <html>
    <%@ include file="components/metaData.jsp" %>
        <body>
            <section class="home">
                <header>
                    <h2 class="logo">VidhyaRachna</h2>
                    <nav class="navigation">
                        <button class="btnLogin-popup" type="button">Login</button>
                    </nav>
                </header>
                <section id="hero">
                    <div class="container">
                        <h1>Build Your Professional Resume</h1>
                        <p>Create a standout resume that helps you land your dream job</p>
                        <button class="button-56">Get Started</button>
                    </div>
                </section>
                <div class="wrapper">
                    <!-- Login Form -->
                    <span class="icon-close" id="close"><ion-icon name="close"></ion-icon></span>
                    <div class="form-box login">
                        <h2>Login</h2>
                        <form action="Login" method="post">
                            <div class="input-box">
                                <span class="icon"><ion-icon name="mail"></ion-icon></span>
                                <input type="email" name="userEmail" id="userEmail" required>
                                <label for="userEmail">Email</label>
                            </div>
                            <div class="input-box">
                                <span class="icon"><ion-icon name="lock-closed"></ion-icon></span>
                                <input type="password" name="userPassword" id="userPassword" required>
                                <label for="userPassword">Password </label>
                            </div>
                            <div class="remember-forgot">
                                <label for="forgot">
                                    <input type="checkbox" name="forgot" id="forgot"/>Remember Me
                                </label>
                                <a href="#">Forgot Password ?</a>
                            </div>
                            <button type="submit" class="btn">Login</button>
                        </form>
                        <div class="login-register">
                            <p>Don't Have an Account ? <a href="" class="register-link">Register Here</a></p>
                        </div>
                    </div>

                    <!-- Register Form -->

                    <span class="icon-close" id="close"><ion-icon name="close"></ion-icon></span>
                    <div class="form-box register">
                        <h2>Registration</h2>
                        <form action="SignUp" method="post">
                            <div class="input-box">
                                <span class="icon"><ion-icon name="person"></ion-icon></span>
                                <input type="text" name="userName" id="UserName" required>
                                <label for="userName">Username</label>
                            </div>
                            <div class="input-box">
                                <span class="icon"><ion-icon name="mail"></ion-icon></span>
                                <input type="email" name="userEmail" id=""userEmail"" required>
                                <label for="userEmail">Email</label>
                            </div>
                            <div class="input-box">
                                <span class="icon"><ion-icon name="lock-closed"></ion-icon></span>
                                <input type="password" name="userPassword" id="userPassword" required>
                                <label for="userPassword">Password</label>
                            </div>
                            <button type="submit" class="btn">Register</button><br>
                        </form>
                        <div class="remember-forgot">
                            <label for="Conditions">
                                <input type="checkbox" name="Conditions" id="Conditions">I Agree The Terms & Conditions
                            </label>
                        </div>

                        <div class="login-register">
                            <p>Already Have an Account ? <a href="" class="login-link">Login Here</a></p>
                        </div>
                    </div>
                </div>
            </section>

            <!-- Script Tags -->
            <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
            <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
            <script type="module" src="JavaScript/script.js"></script>
        </body>

    </html>