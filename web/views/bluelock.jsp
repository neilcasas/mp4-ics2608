<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Blue Lock Players</title>
    <link href="css/welcome.css" rel="stylesheet" />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
      crossorigin="anonymous"
    />
    <style>
        @font-face {
            font-family: 'rigid-square';
            src: url('fonts/fonnts.com-Rigid_Square_Bold.otf') format('opentype');
            font-weight: normal;
            font-style: normal;
        }

        @font-face {
            font-family: 'basic-sans';
            src: url('fonts/fonnts.com-basicsans-bold.otf') format('opentype');
            font-weight: normal;
            font-style: normal;
        }
        p {
            font-family: 'rigid-square', 'basic-sans', 'Helvetica Neue', Helvetica, Roboto, -apple-system, BlinkMacSystemFont, Arial, sans-serif;
            font-size: 18px; 
            text-shadow: 2px 2px 6px rgba(0, 0, 0, 0.3);
            margin-bottom: 20px;
            max-width: 900px;
            margin-left: auto;
            margin-right: auto;
            background-color: rgba(255, 255, 255, 0.7); 
            padding: 20px;
            text-align: center;
            border-radius: 10px; 
            color: #004097;
        }

        h1 {
            font-family: 'rigid-square', 'basic-sans', 'Helvetica Neue', Helvetica, Roboto, -apple-system, BlinkMacSystemFont, Arial, sans-serif;
            font-size: 32px;
            color: #0e4d92; 
            margin-bottom: 20px;
        }
        
        .intro{
            font-size: 64px;
            color: #0e4d92; 
            margin-bottom: 10px;
            text-align: center;
        }

        .container {
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            padding: 40px;
            border-radius: 15px; 
        }
    </style>
</head>
<body>
    <jsp:include page="navbar.jsp" />
    
    <div class="container mt-5">
        
        <h1 class='intro'>Introduction</h1>

        <p>
            "Put your all on the line. Let's go, you diamonds in the rough! <br>
            We are BLUE LOCK, and we will change the times." <br><br>

            In order to develop the world's best striker to lead Japan to the World Cup championship, the Japan Football Union has launched the "BLUE LOCK" project. <br><br>

            Three hundred high school students were invited to participate in the project. <br>
            They were all forwards. <br><br>

            Under the extreme condition that if they are eliminated from the team, they will lose their qualification to ever play for the Japanese national soccer team, the selected talents awaken their egos as strikers one after another. <br><br>

            Thirty-five egoists survived the grueling selection process. Some by kicking others down, and some by evolving as players. <br><br>

            Having survived the frenzy and now filled with ego, they will fight for BLUE LOCK's survival, participating in their biggest match to date, a historic battle against the U-20 Japan national team. <br><br>

            The chance to change destiny and imprint their ego upon the world is at hand as the hottest match in history begins!
        </p>
        
        
        <h1>Blue Lock Players</h1>
        <ul class="list-group">
            <li class="list-group-item"><a href="bluelock-html/isagi-yoichi.jsp">Isagi Yoichi 11</a></li>
            <li class="list-group-item"><a href="bluelock-html/itoshi-rin.jsp">Itoshi Rin 10</a></li>
            <li class="list-group-item"><a href="bluelock-html/nagi-seishiro.jsp">Nagi Seishiro 7</a></li>
            <li class="list-group-item"><a href="bluelock-html/yukimiya-kenyu.jsp">Yukimiya Kenyu 5</a></li>
            <li class="list-group-item"><a href="bluelock-html/otoya-eita.jsp">Otoya Eita 9</a></li>
            <li class="list-group-item"><a href="bluelock-html/karasu-tabito.jsp">Karasu Tabito 6</a></li>
            <li class="list-group-item"><a href="bluelock-html/bachira-meguru.jsp">Bachira Meguru 8</a></li>
            <li class="list-group-item"><a href="bluelock-html/niko-ikki.jsp">Niko Ikki 3</a></li>
            <li class="list-group-item"><a href="bluelock-html/aryu-jyubei.jsp">Aryu Jyubei 2</a></li>
            <li class="list-group-item"><a href="bluelock-html/chigiri-hyoma.jsp">Chigiri Hyoma 4</a></li>
            <li class="list-group-item"><a href="bluelock-html/gagamaru-gin.jsp">Gagamaru Gin 1</a></li>
            <li class="list-group-item"><a href="bluelock-html/mikage-reo.jsp">Mikage Reo 14</a></li>
            <li class="list-group-item"><a href="bluelock-html/barou-shoei.jsp">Barou Shoei 13</a></li>
            <li class="list-group-item"><a href="bluelock-html/hiori-yo.jsp">Hiori Yo 16</a></li>
        </ul>
        
        
    </div>

    <jsp:include page="footer.jsp" />
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
      crossorigin="anonymous"
    ></script>
</body>
</html>
