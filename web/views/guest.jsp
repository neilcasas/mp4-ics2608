<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <title>Blue Lock: U20 Match</title>
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
            crossorigin="anonymous"
            />
        <style>
            .banner {
                position: relative; /* Enables positioning for the overlay */
                background-image: url("/mp4-ics2608/assets/banner1.jpg");
                background-size: cover;
                background-position: center;
                background-repeat: no-repeat;
                height: 100vh;
                display: flex;
                align-items: center;
                justify-content: center;
                color: white;
                text-shadow: 0 2px 4px rgba(0, 0, 0, 0.8);
                overflow: hidden; /* Ensures content stays inside the banner */
            }

            /* Dark overlay */
            .banner::after {
                content: "";
                position: absolute;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                background: rgba(0, 0, 0, 0.5); /* Adjust opacity for darkness */
                z-index: 1; /* Places the overlay above the background image */
            }

            .banner .content {
                position: relative; /* Ensures content is above the overlay */
                z-index: 2;
            }
            .factions {
                display: flex;
                min-height: 20vh;
                
            }
            .blue-lock, .japan-u20 {
                display: flex;
                flex:1;
                flex-direction: column;
                min-height: 20vh;
                color: white;
                gap: 20px;
                padding: 30px;
            }
            .blue-lock {
                background-color: #004097;
            }

            .japan-u20 {
                background-color: #920e0e;
            }
            
            @media (max-width: 992px) {
                .factions {
                    flex-direction: column;
                }
            }

            @media (max-width: 576px) {
                .banner {
                    height: 60vh;
                    padding: 10px;
                }
            }

        </style>
    </head>
    <body>
        <jsp:include page="navbar.jsp" />
        <!--Main Content-->
        <main>
            <header class="banner">
                <div class="content text-center">
                    <h1 class="display-4">Blue Lock Eleven VS Japan's U-20</h1>
                    <p class="lead">Watch the greatest match in the history of Japan Youth Football!</p>
                    <a href="tickets" class="btn btn-primary">Buy Tickets</a>
                </div>
            </header>
            <div class="factions">
                <div class="blue-lock">
                    <h1>Blue Lock</h1>
                    <div class="blue-lock-description">
                        The Blue Lock Project or Player Improvement Project, is a special football project funded by the Japanese Football Union with the intention of developing not only the best striker in the world, but a hero for Japan to follow using Jinpachi Ego's extreme training regimens and coaching.
                    </div>
                    <a href="/mp4-ics2608/views/bluelock.jsp" class="btn btn-primary">Learn More</a>
                </div>
                <div class="japan-u20">
                    <h1>Japan's Under 20 Football Men's</h1>
                    <div class="japan-u20-description">The Japan U-20 or (Japan National Under-20 Football Team) is a national association team of Japan of players who are under the age of 20 and is controlled by the Japan Football Association.</div>
                    <a href="/mp4-ics2608/views/u20japan.jsp" class="btn btn-danger">Learn More</a>
                </div>
            </div>
        </main>

        <jsp:include page="footer.jsp" />
        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"
        ></script>
    </body>
</html>

