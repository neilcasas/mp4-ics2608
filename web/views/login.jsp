<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
    response.setHeader("Pragma", "no-cache");
    response.setHeader("Expires", "0");
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" 
              integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <style>
            .login-container {
                height: 100vh;
                display: flex;
                justify-content: center;
                align-items: center;
                background-color: #f8f9fa;
                margin: 0;
            }

            .card {
                width: 90%;
                max-width: 400px;
                height: 350px;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
                transition: all 0.3s ease;
            }

            .card-body {
                display: flex;
                flex-direction: column;
                justify-content: center;
            }

            @media (min-width: 576px) {
                .card {
                    height: 350px;
                }
            }

            @media (min-width: 768px) {
                .card {
                    width: 50%;
                    max-width: 450px;
                }
            }

            .btn-primary {
                width: auto;
            }
        </style>
    </head>
    <body>
        <div class="login-container">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title text-center mb-4">Login</h5>
                    <form action="/mp4-ics2608/login" method="post">
                        <div class="mb-3">
                            <label for="username" class="form-label">Username</label>
                            <input type="text" class="form-control" id="username" name="formUsername" placeholder="Enter your username">
                        </div>
                        <div class="mb-3">
                            <label for="password" class="form-label">Password</label>
                            <input type="password" class="form-control" id="password" name="formPassword" placeholder="Enter your password">
                        </div>
                        <button type="submit" class="btn btn-primary w-100">Login</button>
                        <a href="/mp4-ics2608" class="btn btn-secondary w-100 mt-2">Continue as Guest</a>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>


