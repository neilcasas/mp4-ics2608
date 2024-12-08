<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Oliver Aiku</title>
    <link href="../css/welcome.css" rel="stylesheet" />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
      crossorigin="anonymous"
    />
    <style>
        /* Sticky footer layout */
        body {
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }

        main {
            flex: 1; /* Ensures the main content fills the available space */
        }

        footer {
            background-color: #f8f9fa; /* Light gray for the footer */
            padding: 20px;
            text-align: center;
            font-size: 14px;
        }

        .player-img {
            max-width: 300px; 
            height: auto; 
        }

        p {
            font-size: 18px; 
            max-width: 700px;
            background-color: rgba(255, 255, 255, 0.7); 
            border-radius: 10px; 
        }

        h1 {
            font-size: 32px;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <jsp:include page="../navbar.jsp" />

    <main>
        <div class="container mt-5">
            <div class="row">
                <!-- Image Column -->
                <div class="col-md-4 text-center">
                    <img src="../../assets/Oliver_Aiku.webp" alt="Oliver Aiku" class="img-fluid rounded player-img" />
                </div>

                <!-- Player Information Column -->
                <div class="col-md-8">
                    <h1>Oliver Aiku</h1>
                    <p><strong>Age:</strong> 19</p>
                    <p><strong>Player Number: </strong> 2</p>
                    <p><strong>Position:</strong> Left Centerback</p>
                    <p>
                        Captain of the U-20 Japan national team, known as the "Diamond 
                        Generation" for its ironclad defense and abundant talent. 
                        Positioned as a center back, he is the key player in the national 
                        team's defense. A mix of Sweden, Germany, and Japan. His defensive 
                        techniques, physical strength, leadership, and other abilities are 
                        outstanding among his generation, and he is attracting attention as 
                        one of the players who will lead the next generation of Japan's 
                        national team.
                    </p>
                </div>
            </div>
        </div>
    </main>
    
    <jsp:include page="../footer.jsp" />
    
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
      crossorigin="anonymous"
    ></script>
</body>
</html>