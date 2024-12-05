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
        <li class="nav-item">
          <a class="nav-link" href="#">Players</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Tickets</a>
        </li>
        <div class="ms-auto d-flex gap-2">
          <button class="btn btn-primary">Login</button>
          <button class="btn btn-primary">Sign Up</button>
        </div>
      </ul>
    </div>
  </div>
</nav>
