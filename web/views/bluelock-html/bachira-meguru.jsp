<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Bachira Meguru</title>
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
                    <img src="../../assets/Bachira_Meguru.webp" alt="Bachira Meguru" class="img-fluid rounded player-img" />
                </div>

                <!-- Player Information Column -->
                <div class="col-md-8">
                    <h1>Bachira Meguru</h1>
                    <p><strong>Age:</strong> 17</p>
                    <p><strong>Player Number: </strong> 8</p>
                    <p><strong>Position:</strong> Left Wing Back</p>
                    <p>
                        Bachira is an eccentric, free-spirited player who uses his skillful 
                        dribbling as his weapon. In his childhood, he enjoyed and excelled 
                        at playing soccer, but felt isolated because he didn't have a friend
                        who could keep up with him. As a result, he created "The Monster", 
                        an imaginary friend he became obsessed with that embodied his 
                        "ideal" game, at the cost of losing sight over what he really wants 
                        while playing soccer. However, through his initial encounter with 
                        Isagi and the trials at BLUE LOCK, he regained his original ego, 
                        which led him to part ways with "The Monster" and grow both mentally
                        and technically as a player.
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
