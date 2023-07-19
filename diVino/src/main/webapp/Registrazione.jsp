<%--
  Created by IntelliJ IDEA.
  User: giuse
  Date: 24/05/2022
  Time: 12:26
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
    <title>Registrazione</title>
</head>
<header>
    <div class="logo-container">
        <img class="logo"   src="https://www.collinedelsole.it/wp-content/uploads/2019/02/logo_colline-del-solesss.png" alt="logo">
    </div>
</header>
<body>
<div class="registrazione">
    <h1> Registrazione</h1>
    <form action="Registrazione" method="post">

        <label for="nomeID" class="checkForm"> Nome:<br>
            <input type="text" name="nome" required id="nomeID" minlength="2" maxlength="20">
            <span class="checkFormText">Inserisci un nome con lunghezza 2-20 caratteri.</span>
        </label><br>

        <label for="cognomeID" class="checkForm"> Cognome:<br>
            <input type="text" name="cognome" required id="cognomeID" minlength="2" maxlength="30">
            <span class="checkFormText">Inserisci un cognome con lunghezza 2-30 caratteri.</span>
        </label><br>

        <label for="ViaID" class="checkForm"> Via:<br>
            <input type="text" name="via" required id="ViaID" minlength="4" maxlength="40">
            <span class="checkFormText"></span>
        </label><br>

        <label for="CAPID" class="checkForm"> CAP:<br>
            <input type="text" name="CAP" required id="CAPID" minlength="5" maxlength="5">
            <span class="checkFormText">Inserisci il CAP della tua città.</span>
        </label><br>

        <label for="CittaID" class="checkForm"> Città:<br>
            <input type="text" name="citta" required id="CittaID" minlength="5" maxlength="25">
            <span class="checkFormText">Inserisci la tua città.</span>
        </label><br>

        <label for="telefonoID" class="checkForm"> Telefono:<br>
            <input type="tel" name="telefono" pattern="[0-9]{10}" required id="telefonoID"
                   minlength="10" maxlength="10">
            <span class="checkFormText">Inserisci un numero di telefono di 10 cifre.</span>
        </label><br>

        <label for="nome_utenteID" class="checkForm"> Nome Utente:<br>
            <input type="text" name="nome_utente" required id="nome_utenteID" minlength="4" maxlength="20">
            <span class="checkFormText">Inserisci un nome utente di 4-20 caratteri.<br>Non modificabile.</span>
        </label><br>

        <label for="passwordID" class="checkForm"> Password:<br>
            <input type="password" name="password" required id="passwordID" minlength="8" maxlength="16" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*\W)(?!.*\s).{8,16}">
            <span class="checkFormText">Inserisci una password con queste caratteristiche:<br>-lunghezza: 8-16 caratteri<br>-almeno un carattere speciale<br>-almeno una lettera maiuscola<br>-almeno una lettera minuscola<br>-almeno una cifra</span>
        </label><br>

        <label for="passwordCheckID" class="checkForm"> Conferma Password:<br>
            <input type="password" name="passwordCheck" required id="passwordCheckID" minlength="8" maxlength="16" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*\W)(?!.*\s).{8,16}">
            <span class="checkFormText">Le due password devono coincidere</span>
        </label><br><br>

        <button type="submit" onclick="return checkPassword()">Registrati</button>
    </form>
</div>

</body>
</html>
