<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Isagi Yoichi</title>
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
                    <img src="../../assets/Isagi_Yoichi.webp" alt="Isagi Yoichi" class="img-fluid rounded player-img" />
                </div>

                <div class="col-md-8">
                    <h1>Isagi Yoichi</h1>
                    <p><strong>Age:</strong> 16</p>
                    <p><strong>Jersey Number:</strong> 11</p>
                    <p><strong>Position:</strong> Offensive Midfielder</p>
                    <p>
                        Previously an unknown high school forward, Isagi's dream is to one 
                        day become the ace striker of the Japanese national team and lead 
                        Japan to the World Cup championship. To make this dream come true, 
                        he joined the BLUE LOCK project. At first, he was unable to find his
                        own unique weapon as a striker, but during the first selection, his
                        talent for detecting "the smell of a goal" and his spatial awareness
                        blossomed. After surviving the First Selection, Isagi continued to 
                        evolve as a "genius of adaptability" by repeatedly transforming 
                        himself through adapting to other players throughout the game.
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
