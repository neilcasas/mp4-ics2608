<%-- Document : navbar Created on : 12 5, 24, 9:31:25 PM Author : neila --%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

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
    <a class="navbar-brand" href="#">
      <img src="assets/Blue_Lock_Logo.png" id="navbarLogo" />
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
          <a class="nav-link" aria-current="page" href="#">Home</a>
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
            <li><a class="dropdown-item" href="#">Blue Lock</a></li>
            <li><a class="dropdown-item" href="#">Japan U-20</a></li>
          </ul>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Tickets</a>
        </li>
        <div class="ms-auto d-flex gap-2">
          <% if (session != null) { if ((Boolean)
          session.getAttribute("isLoggedIn") != null && (Boolean)
          session.getAttribute("isLoggedIn") == true) { %>
          <div>Welcome back, <%= session.getAttribute("username")%>!</div>
          <a href="" class="btn btn-danger">Logout</a>
          <% } else { %>
          <a href="login" class="btn btn-primary">Login</a>

          <% } } else { %>
          <a href="login" class="btn btn-primary">Login</a>
          <% } %>
        </div>
      </ul>
    </div>
  </div>
</nav>
