<%@page import="classes.Stadium.SeatType"%>
<%@page import="classes.Stadium"%>
<% Stadium stadium = (Stadium) application.getAttribute("stadium"); %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
    response.setHeader("Pragma", "no-cache");
    response.setDateHeader("Expires", 0);
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Tickets</title>
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
            crossorigin="anonymous"
            />
        <style>
            * {
                margin: 0;
                padding: 0;
            }
            main {
                padding: 5vh 5vw;
                min-height: calc(100vh - 125px);
            }
            .ticket_table {
                display: flex;
                flex-direction: column;
                align-items: center;
                justify-content: center;
            }
            .ticket_row {
                display: flex;
                align-items: center;
                justify-content: center;
                max-height: 30px;
                width: fit-content;
            }

            .ticket_cell {
                position:relative;
                display: inline-block;
                height: 20px;
                width: 20px;
                margin: 0px 2px;
            }
            .modal-body {
                display: flex;
                align-items: center;
                justify-content: center;
            }

            .ticket_cell.taken {
                background-color: grey;
            }

            .ticket_cell.available {
                background-color: cornflowerblue;
            }

            .ticket_cell .ticket_tooltip {
                visibility: hidden;
                width: 120px;
                color: #fff;
                text-align: center;
                padding: 5px 0;
                position: absolute;
                z-index: 1;
                top: 20px;
                left: 110%;
                background: rgba( 2, 2, 2, 0.55 );
                backdrop-filter: blur( 9.5px );
                -webkit-backdrop-filter: blur( 9.5px );
                border-radius: 10px;
                border: 1px solid rgba( 255, 255, 255, 0.18 );
            }

            .ticket_cell:hover .ticket_tooltip {
                visibility: visible;
            }

            .ticket_row_count {
                display: flex;
                align-content: center;
                margin-right: 10px;
            }

            .ticket_cell.available.selected {
                background-color: yellow;
                border: 2px solid grey;
            }

            .hide {
                display: none;
            }

            .main-content {
                display: flex;
                gap: 30px;
            }
            .stadium-layout-container {
                display: flex;
                flex-direction: column;
                height: 100%;
            }
            .stadium-layout-img-container {
                height: 400px;
            }
            .stadium-layout-img-container img {
                height: 100%;
                border-radius: 20px;
            }
            .table-container {
                display: flex;
                flex: 1;
                width: 100%;
                flex-direction:column;
            }
            .selected-seats-list {
                max-width: 300px;
                margin-top: 20px;
                margin-bottom: 10px;
            }
            @media screen and (max-width: 992px) {
                .main-content {
                    flex-direction: column-reverse;
                    align-items: center;
                }

            }
        </style>
    </head>
    <body>
        <jsp:include page="navbar.jsp" />
        <main>

            <div class="main-content">
                <div class="stadium-layout-container">
                    <h2>Seat Plan</h2>
                    <div class="stadium-layout-img-container">
                        <img src="/mp4-ics2608/assets/stadium_layout.webp" alt="blue lock stadium layout"/>
                    </div>
                </div>
                <div class="table-container">
                    <h2>Tickets</h2>
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th scope="col">Area</th>
                                <th scope="col">Price</th>
                                <th scope="col">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                for (SeatType type : SeatType.values()) {
                            %>
                            <tr>
                                <td><%= Stadium.getSeatString(type)%></td>
                                <td>$<%= Stadium.getSeatPrice(type)%></td>
                                <td>
                                    <% if (session != null && (Boolean) session.getAttribute("isLoggedIn") != null && (Boolean) session.getAttribute("isLoggedIn")) {
                                    if (stadium.isAreaFull(type)) { %>
                                    <button class="btn btn-secondary" disabled>Unavailable</button>
                                    <% } else {%>
                                    <button class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#<%=type + "ticketModal"%>">Buy</button>
                                    <!-- Modal -->
                                    <div class="modal fade" id="<%=type + "ticketModal"%>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                        <div class="modal-dialog modal-dialog-centered">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h1 class="modal-title fs-5" id="exampleModalLabel"><%= Stadium.getSeatString(type)%></h1>
                                                    <button type="button" class="btn-close ticket-closer" data-bs-dismiss="modal" aria-label="Close"></button>
                                                </div>
                                                <div class="modal-body">
                                                    <div class="<%= type + " ticket_table"%>">
                                                        <%
                                                            Boolean[][] table = stadium.getTableFromType(type);
                                                            for (int i = 0; i < table.length; i++) {
                                                        %>
                                                        <div class="<%=type + " ticket_row"%>">
                                                            <div class="ticket_row_count">
                                                                <%= i + 1%>
                                                            </div>
                                                            <%
                                                                for (int j = 0; j < table[i].length; j++) {
                                                            %>
                                                            <div class="<%=type + " ticket_cell" + (table[i][j] ? " taken" : " available")%>" data-row="<%=i%>" data-column="<%=j%>" data-seat-type="<%=type%>" data-price="<%= Stadium.getSeatPrice(type)%>">
                                                                <span class="ticket_tooltip"><%= "Row " + (i + 1) + ", Seat " + (j + 1)%></span>
                                                            </div>
                                                            <% } %>
                                                        </div>
                                                        <% }%>
                                                        <div class="<%=type + " selected-seats-list"%>"></div>
                                                        <div class="<%=type + " selected-seats-total"%>"></div>
                                                    </div>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-danger ticket-closer" data-bs-dismiss="modal">Cancel</button>
                                                    <button type="button" class="btn btn-primary buy-ticket-btn">Purchase</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <% }
                                } else { %>
                                    <button class="btn btn-secondary" disabled>Log in to buy</button>
                                    <% } %>
                                </td>
                            </tr>
                            <% }%>
                        </tbody>
                    </table>
                </div>
            </div>
        </main>
        <jsp:include page="footer.jsp" />
        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"
        ></script>
        <script>
            document.addEventListener("DOMContentLoaded", () => {
                let availableSeats = document.querySelectorAll(".ticket_cell.available");
                const selectedSeats = new Set();
                const selectedSum = document.querySelectorAll(".selected-seats-total");
                const selectedSeatsList = document.querySelectorAll(".selected-seats-list");
                const ticketClosers = document.querySelectorAll(".ticket-closer");
                const buyTicketButtons = document.querySelectorAll(".buy-ticket-btn");

                availableSeats.forEach((seat) => {
                    seat.addEventListener("click", () => {
                        // Get data from seat DOM element
                        const seatRow = seat.dataset.row;
                        const seatColumn = seat.dataset.column;
                        const seatType = seat.dataset.seatType;
                        const seatPrice = Number(seat.dataset.price);
                        const seatObject = JSON.stringify({
                            row: seatRow,
                            column: seatColumn,
                            type: seatType,
                            price: seatPrice
                        });

                        // If selected again, remove from selected seats
                        if (selectedSeats.has(seatObject)) {
                            selectedSeats.delete(seatObject);
                        } else {
                            selectedSeats.add(seatObject);
                        }

                        seat.classList.toggle("selected");

                        // Update selected seats and sum
                        selectedSeatsList.forEach((list) => {
                            list.innerHTML = "Selected seats: " + getSelectedString();
                        });

                        selectedSum.forEach((sum) => {
                            sum.innerHTML = "Total: " + getSelectedSum();
                        });

                        // Conditionally show selected seat list and sum
                        if (selectedSeats.size === 0) {
                            selectedSeatsList.forEach((list) => {
                                list.classList.add("hide");
                            });

                            selectedSum.forEach((sum) => {
                                sum.classList.add("hide");
                            });
                        } else {
                            selectedSeatsList.forEach((list) => {
                                list.classList.remove("hide");
                            });
                            selectedSum.forEach((sum) => {
                                sum.classList.remove("hide");
                            });
                        }

                        console.log(selectedSeats);
                    });
                });

                // Clear ticket set when closing modal
                ticketClosers.forEach((closer) => {
                    closer.addEventListener("click", () => {
                        selectedSeats.clear();
                        console.log(selectedSeats);

                        availableSeats.forEach((seat) => {
                            seat.classList.remove("selected");
                        });

                        selectedSeatsList.forEach((list) => {
                            list.classList.add("hide");
                            list.innerHTML = "";
                        });
                        selectedSum.forEach((sum) => {
                            sum.classList.add("hide");
                            sum.innerHTML = "";
                        });
                    });
                });

                function getSelectedString() {
                    const seatObjects = Array.from(selectedSeats).map((seat) => JSON.parse(seat));
                    return seatObjects
                            .map((seat) => "R" + (++seat.row) + "-C" + (++seat.column))
                            .join(", ");
                }

                function getSelectedSum() {
                    const seatObjects = Array.from(selectedSeats).map((seat) => JSON.parse(seat));
                    sum = seatObjects.reduce((sum, seat) => sum + seat.price, 0);
                    return "$" + sum;
                }

                function getResponseStringFromTickets() {
                    const seatObjects = Array.from(selectedSeats).map((seat) => JSON.parse(seat));
                    return seatObjects.map((seat) => "" + (++seat.row) + "-" + (++seat.column) + "-" + seat.type)
                            .join(", ");

                }


                function buyTicket() {
                    const url = "/mp4-ics2608/receipt";  // Ensure this URL is correct.

                    fetch(url, {
                        method: "POST",
                        headers: {
                            "Content-Type": "application/json"
                        },
                        body: getResponseStringFromTickets()  // Pass your ticket data.
                    })
                            .then(response => {
                                if (response.ok) {
                                    // Redirect to receipt page or refresh if necessary.
                                    window.location.href = "/mp4-ics2608/receipt";  // Adjust the path as needed
                                } else {
                                    console.error("Failed to send request:", response.statusText);
                                }
                            })
                            .catch(error => {
                                console.log("Error sending request:", error);
                            });
                }


                buyTicketButtons.forEach((btn) => {
                    btn.addEventListener("click", buyTicket);
                })
            });

        </script>
    </body>
</html>
