<%--
  Created by IntelliJ IDEA.
  User: giuse
  Date: 24/05/2022
  Time: 10:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://fonts.googleapis.com/css2?family=Oswald&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@1,300&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="CSS/style.css">
    <title>Login</title>
</head>
<header>
    <div class="logo-container">
    <img class="logo"   src="https://www.collinedelsole.it/wp-content/uploads/2019/02/logo_colline-del-solesss.png" alt="logo">
</div>
</header>
<body>
<main>
<div class="login">
<form action="Login" method="post">
    <h1>Login</h1>
    <label for="nome_utenteID"> Nome Utente:
        <br>
        <input type="text" required name="nome_utente" id="nome_utenteID" maxlength="20" minlength="4">
    </label>
    <br><br>
    <label for="passwordID"> Password:
        <br>
        <input type="password" required name="password" id="passwordID" minlength="8" maxlength="16">
    </label><br><br>

    <button type="submit" >Accedi </button><br><br>
</form>
    <p>Non sei registrato?</p>
    <a href="Registrazione.jsp"> Registrati</a>
</div>
</main>

<div class="footer-basic">
    <footer>
        <div>
            <p>Inserire l'indirizzo </p>
            <p>123456789</p>
            <a href="#">Inserire email</a>
            <p>Inserire cose a caso oppure no vedi tu</p>
        </div>
        <img class="footer-logo" src="imgs/colline%20del%20sole.jpg">
        <div class="social">
            <a href="#">  <i class="fab fa-facebook-square"></i>Facebook </a>
            <a href="#">  <i class="fab fa-instagram-square"></i>Instagram </a>
            <a href="#">  <i class="fab fa-twitter-square"></i>Twitter </a>
        </div>

    </footer>
</div>
</body>
</html>
