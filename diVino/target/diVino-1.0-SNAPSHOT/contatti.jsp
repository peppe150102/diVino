<%--
  Created by IntelliJ IDEA.
  User: giuse
  Date: 23/05/2022
  Time: 16:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>contatti</title>
    <meta charset="UTF-8">
    <title>contatti</title>
    <title>contatti</title>
    <link href="https://fonts.googleapis.com/css2?family=Oswald&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@1,300&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="CSS/contatti.css">
</head>
<body>
<header>
    <div class="logo-container">
        <img class="logo"   src="https://www.collinedelsole.it/wp-content/uploads/2019/02/logo_colline-del-solesss.png" alt="logo">
    </div>
</header>
<main>
    <nav>
        <div class="dropdown">
            <button class="dropbtn">home</button>
            <div class="dropdown-content">
                <a href="#">Link 1</a>
                <a href="#">Link 2</a>
                <a href="#">Link 3</a>
            </div>
        </div>
        <a href="#">Prodotti</a>
        <a href="#">Negozio</a>
        <a href="#">Tour</a>
        <a href="contatti.jsp">Contatti</a>
        <a href="#">  <i class="fas fa-shopping-cart"> </i> </a>
        <a href="#">  <i class="fa fa-user-circle" aria-hidden="true"> </i> </a>
        <div class="search-bar">
            <!-- <label for="search" class="structural"> </label>  DA ELIMINARE SE NON SERVE -->
            <input type="search" id="search" name="search" class="txt" size="20">
            <input type="submit" class="btn" value="Cerca">
        </div>

        <div class="animation start-home"></div>
    </nav>
</main>
</body>
</html>
