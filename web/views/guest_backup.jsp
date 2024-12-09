<%-- 
    Document   : guest_backup.jsp
    Created on : 12 9, 24, 6:47:46 PM
    Author     : neila
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
        <div
            class="header-text w-100"
            style="
            display: flex;
            justify-content: center;
            align-items: center;
            text-align: center;
            background-color: dodgerblue;
            color: rgb(255, 255, 255);
            "
            >
            ICS2608 2CSD Bobiles, Edmond & Casas, Neil
        </div>
        <nav
            class="navbar navbar-expand-lg sticky-top"
            style="
            background: rgba(255, 255, 255, 0.8);
            backdrop-filter: blur(5px);
            -webkit-backdrop-filter: blur(5px);
            box-shadow: rgba(0, 0, 0, 0.1) 0px 4px 6px -1px,
            rgba(0, 0, 0, 0.06) 0px 2px 4px -1px;
            "
            >
            <div class="container-fluid">
                <a class="navbar-brand" href="/mp4-ics2608/">
                    <img src="/mp4-ics2608/assets/Blue_Lock_Logo.png" id="navbarLogo" style="max-height: 30px;" />
                </a>
                <button
                    class="navbar-toggler"
                    type="button"
                    data-bs-toggle="collapse"
                    data-bs-target="#navbarNav"
                    aria-controls="navbarNav"
                    aria-expanded="false"
                    aria-label="Toggle navigation"
                    >
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav d-flex w-100">
                        <li class="nav-item">
                            <a class="nav-link" aria-current="page" href="${pageContext.request.contextPath}/">Home</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a
                                class="nav-link dropdown-toggle"
                                href="#"
                                role="button"
                                data-bs-toggle="dropdown"
                                aria-expanded="false"
                                >
                                Players
                            </a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="${pageContext.request.contextPath}/views/bluelock.jsp">Blue Lock</a></li>
                                <li><a class="dropdown-item" href="${pageContext.request.contextPath}/views/u20japan.jsp">U-20 Japan</a></li>
                            </ul>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/tickets">Tickets</a>
                        </li>
                        <div class="ms-auto d-flex gap-2">
                            <% if (session != null) {
                  if ((Boolean) session.getAttribute("isLoggedIn") != null
                          && (Boolean) session.getAttribute("isLoggedIn") == true) {%>
                            <div>Welcome back, <a href="/mp4-ics2608/views/ordered.jsp"><%= session.getAttribute("username")%>!</a></div>
                            <a href="${pageContext.request.contextPath}/logout" class="btn btn-danger">Logout</a>
                            <% } else { %>
                            <a href="${pageContext.request.contextPath}/login" class="btn btn-primary">Login</a>
                            <% }
          } else { %>
                            <a href="${pageContext.request.contextPath}/login" class="btn btn-primary">Login</a>
                            <% }%>
                        </div>
                    </ul>
                </div>
            </div>
        </nav>
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
                        
    <nav
      class="navbar bg-body-tertiary navbar-expand-lg"
      style="box-shadow: rgba(0, 0, 0, 0.1) 0px 4px 6px -1px, rgba(0, 0, 0, 0.06) 0px 2px 4px -1px;"
    >
      <div class="container-fluid">
        <b>MP4</b> <%= application.getAttribute("date") %>
      </div>
    </nav>
    </body>
</html>
