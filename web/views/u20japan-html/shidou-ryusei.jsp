<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Shidou Ryusei</title>
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
                    <img src="../../assets/Shidou_Ryusei.webp" alt="Shidou Ryusei" class="img-fluid rounded player-img" />
                </div>

                <!-- Player Information Column -->
                <div class="col-md-8">
                    <h1>Shidou Ryusei</h1>
                    <p><strong>Age:</strong> 18</p>
                    <p><strong>Player Number: </strong> 13</p>
                    <p><strong>Position:</strong> Central Forward</p>
                    <p>
                        He is a super offensive striker who has an extraordinary passion for 
                        soccer, which makes him "explode". He is rough around the edges, but
                        he has a natural sense for soccer and can sniff out the goal more 
                        accurately than anyone else inside the penalty area. He is a 
                        dangerous person who does not hesitate to use violence, but his 
                        passion for soccer is genuine and he calls his play a "life activity".
                        Just before the match against the U-20 Japan national team, he 
                        accepts Sae's invitation and becomes a member of the national team. 
                        He stands in the way of "Blue Lock" as a trump card.
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
