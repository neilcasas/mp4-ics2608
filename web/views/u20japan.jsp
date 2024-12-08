<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); 
    response.setHeader("Pragma", "no-cache"); 
    response.setDateHeader("Expires", 0);   
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>U-20 Japan</title>
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
            color: #920e0e;
        }

        h1 {
            font-family: 'rigid-square', 'basic-sans', 'Helvetica Neue', Helvetica, Roboto, -apple-system, BlinkMacSystemFont, Arial, sans-serif;
            font-size: 32px;
            color: #920e0e;
            margin-bottom: 20px;
        }

        .intro {
            font-size: 64px;
            color: #920e0e;
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
        
        .list-group a {
            color: #920e0e; 
            font-size: inherit;
            text-decoration: underline; 
            transition: color 0.3s; 
        }

        .list-group a:hover {
            color: #ff4d4d; 
            text-decoration: underline; 
        }


    </style>

</head>
<body>
    <jsp:include page="navbar.jsp" />
        <div class="container mt-5">
            
            <h1 class='intro'>Introduction</h1>
        
            <p>
                The selected 11 players from Blue Lock will face the Japan U-20 <br>
                in a National Representative match for all of Japan to watch. <br><br>
                The winner secures control of the Japan National team 
                but with Itoshi Sae leading the team and Shidou Ryusei joining him, <br>
                how will Blue Lock overcome this immense challenge?
            </p>
            
            <h1>U-20 Japan Players</h1>
            
            <ul class="list-group">
                <li class="list-group-item"><a href="u20japan-html/itoshi-sae.jsp">Itoshi Sae 10</a></li>
                <li class="list-group-item"><a href="u20japan-html/oliver-aiku.jsp">Oliver Aiku 2</a></li>
                <li class="list-group-item"><a href="u20japan-html/sendou-shuto.jsp">Sendou Shuto 11</a></li>
                <li class="list-group-item"><a href="u20japan-html/chou-kento.jsp">Chou Kento 8</a></li>
                <li class="list-group-item"><a href="u20japan-html/kitsumezato-teru.jsp">Kitsumezato Teru 9</a></li>
                <li class="list-group-item"><a href="u20japan-html/wakatsuki-itsuki.jsp">Wakatsuki Itsuki 6</a></li>
                <li class="list-group-item"><a href="u20japan-html/hayate-haru.jsp">Hayate Haru 7</a></li>
                <li class="list-group-item"><a href="u20japan-html/darai-miroku.jsp">Darai Miroku 5</a></li>
                <li class="list-group-item"><a href="u20japan-html/mou-kazuma.jsp">Niou Kazuma 3</a></li>
                <li class="list-group-item"><a href="u20japan-html/neru-teppei.jsp">Neru Teppei 4</a></li>
                <li class="list-group-item"><a href="u20japan-html/fukaku-gen.jsp">Fukaku Gen 1</a></li>
                <li class="list-group-item"><a href="u20japan-html/shidou-ryusei.jsp">Shidou Ryusei 13</a></li>
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
