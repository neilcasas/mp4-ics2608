<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Karasu Tabito</title>
    <link href="../css/welcome.css" rel="stylesheet" />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
      crossorigin="anonymous"
    />
    <style>
        body {
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }

        main {
            flex: 1; 
        }

        footer {
            background-color: #f8f9fa; 
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
                    <img src="../../assets/Karasu_Tabito.webp" alt="Karasu Tabito" class="img-fluid rounded player-img" />
                </div>

                <div class="col-md-8">
                    <h1>Karasu Tabito</h1>
                    <p><strong>Age:</strong> 18</p>
                    <p><strong>Number:</strong> 6</p>
                    <p><strong>Position:</strong> Defensive Midfielder</p>
                    <p>
                        He is one of BLUE LOCK's most peculiar players, controlling the 
                        distance between opponents with his keen eye for detail and 
                        exquisite handwork. He is from the same youth team in Kansai as 
                        Hiori and is distinguishable by his spiked hair resembling a crow. 
                        With a mature personality, he is known by his fearsome nickname, 
                        "The Assassin", for meticulously analyzing opponents' abilities and 
                        thoroughly marking their weaknesses during play.
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
