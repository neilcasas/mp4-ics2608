<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Error</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
      .error-container {
        height: 100vh;
        display: flex;
        justify-content: center; 
        align-items: center; 
        background-color: #f8f9fa; 
        margin: 0; 
      }

      /* Card styling */
      .card {
        width: 90%;
        max-width: 400px; 
        height: 250px; 
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); 
        transition: all 0.3s ease; 
      }

      /* Center content inside the card */
      .card-body {
        display: flex;
        flex-direction: column;
        justify-content: center; 
        text-align: center;
      }

      /* Media queries for responsiveness */
      @media (min-width: 576px) {
        .card {
          height: 250px;
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
    <div class="error-container">
      <div class="card border-0 shadow">
        <div class="card-body">
          <h3 class="text-center mb-4">Error</h3>
          <p class="text-center mb-3">Your login credentials don't match an account in our system.</p>
          <div class="text-center">
            <a href="views/login.jsp" class="btn btn-primary w-100">Go Back to Login</a>
          </div>
        </div>
      </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN6jIeHz" crossorigin="anonymous"></script>
  </body>
</html>
