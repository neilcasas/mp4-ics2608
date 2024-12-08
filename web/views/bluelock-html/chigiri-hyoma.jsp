<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Chigiri Hyoma</title>
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
                    <img src="../../assets/Chigiri_Hyoma.webp" alt="Chigiri Hyoma" class="img-fluid rounded player-img" />
                </div>

                <div class="col-md-8">
                    <h1>Chigiri Hyoma</h1>
                    <p><strong>Age:</strong> 16</p>
                    <p><strong>Player Number: </strong> 4</p>
                    <p><strong>Position:</strong> Right Wing Back</p>
                    <p>
                        A beautiful boy distinguishable by his long red hair. His weapon of 
                        choice is his quick feet, allowing him to run the 50-meter dash in 
                        5.77 seconds. Entering BLUE LOCK, Chigiri was unable to run at his 
                        full speed due to a serious injury and had planned to give up soccer
                        by dropping out of the project. However, during the First Selection,
                        he was roused by Isagi's voice and decided to follow his passion, 
                        regaining his weapon and the ego to use it to break through his 
                        opponents.
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
