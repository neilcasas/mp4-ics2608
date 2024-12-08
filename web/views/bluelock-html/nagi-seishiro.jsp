<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Nagi Seishiro</title>
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
                    <img src="../../assets/Nagi_Seishiro.webp" alt="Nagi Seishiro" class="img-fluid rounded player-img" />
                </div>

                <div class="col-md-8">
                    <h1>Nagi Seishiro</h1>
                    <p><strong>Age:</strong> 17</p>
                    <p><strong>Jersey Number:</strong> 7</p>
                    <p><strong>Position:</strong> Offensive Midfielder</p>
                    <p>
                        Nagi is a genius forward who boasts an extraordinary soccer sense 
                        despite being extremely lazy and having no interest in the sport. Reo, 
                        who attended the same high school as him, saw his potential and 
                        convinced him to start playing soccer. He uses his natural physical 
                        and trapping abilities as a weapon to showcase his skills in a way 
                        that no ordinary player can imitate. When he entered BLUE LOCK, he 
                        was not interested in soccer or putting in any effort, but after 
                        losing to and later playing with Isagi, he developed a "passion" 
                        for soccer and awakened his ego.
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
