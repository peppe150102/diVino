<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>diVino</title>
    <link href="https://fonts.googleapis.com/css2?family=Oswald&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@1,300&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="CSS/style.css">
</head>
<body>
<header>
    <div class="logo-container">
        <img class="logo"   src="https://www.collinedelsole.it/wp-content/uploads/2019/02/logo_colline-del-solesss.png" alt="logo">
    </div>
</header>
<main>
    <nav>
        <a href="#">Home</a>
        <div class="dropdown">
            <button class="dropbtn">Prodotti</button>
            <div class="dropdown-content">
                <a href="#">Vino Bianco</a>
                <a href="#">Vino Rosso</a>
                <a href="#">Spumante</a>
            </div>
        </div>
        <a href="#">Negozio</a>
        <a href="#">Tour</a>
        <a href="#">Contatti</a>
        <a href="#">  <i class="fas fa-shopping-cart"> </i> </a>
        <a href="Login.jsp">  <i class="fa fa-user-circle" aria-hidden="true"> </i> </a>
        <div class="search-bar">
            <!-- <label for="search" class="structural"> </label>  DA ELIMINARE SE NON SERVE -->
            <input type="search" id="search" name="search" class="txt" size="20">
            <input type="submit" class="btn" value="Cerca">
        </div>

        <div class="animation start-home"></div>
    </nav>



    <div class="slideshow-container">

        <div class="mySlides fade">

            <img src="imgs/esterno-cantina.jpg" style="width:100%">
            <div class="text"><h1> La Cantina </h1></div>
        </div>

        <div class="mySlides fade">

            <img src="imgs/slide-vini.jpg" style="width:100%">
            <div class="text"><h1> I Vini </h1></div>
        </div>

        <div class="mySlides fade">

            <img src="imgs/contatti2.jpg" style="width:100%">
            <div class="text">
                <h1></h1>
            </div>
        </div>

        <i class="fa fa-arrow-left" aria-hidden="true" onclick="plusSlides(-1)" ></i>
        <i class="fa fa-arrow-right" aria-hidden="true" onclick="plusSlides(1)" style= "right: 0;
    border-radius: 3px 0 0 3px;"></i>

    </div>

    <br>

    <div style="text-align:center">
        <span class="dot" onclick="currentSlide(1)"></span>
        <span class="dot" onclick="currentSlide(2)"></span>
        <span class="dot" onclick="currentSlide(3)"></span>
    </div>


    <div class="separatorSmallCenter" style="margin-top: 20px; margin-bottom: 20px;"></div>

    <!-- 2vw= setta la taglia del testo alla grandezza 2 viewport width, ovvero il 20% della grandezza della finestra del browser stesso
     rende il font size responsive-->
    <div style="margin-top: 10px">
        <h2 style="text-align: center; padding:10px; font-size:2vw;"> Chi Siamo:  </h2>
    </div>

    <label class="text-description" >

        <p style="margin: 50px;font-size:1vw;">
            L´Azienda “Colline del Sole” nasce dall´esigenza della famiglia Iommazzo di dare continuità alla propria tradizione centenaria di viticoltori, arricchendola con elementi innovativi, ma nel rispetto delle proprie origini. Tale attività si è tramandata attraverso i secoli da padre in figlio, testimoni e detentori di una cultura contadina radicata ad un territorio da sempre vocato ad una produzione viticola di qualità.
        </p >
        <p style="margin: 50px;font-size:1vw;">
            Come rilevato dagli atti notarili e dai racconti verbali, al bisnonno Camillo il padre Francesco Iommazzo donava la cantina scavata nel terreno tufaceo, ad archi in calce e ciottoli di pietra locali, con annessi terreni situati in località “Vignali”.
        </p>
        <p style="margin: 50px;font-size:1vw;">
            Dall´inizio degli anni novanta l´azienda si è trasformata impiantando vigneti di gran pregio, quali il Greco di Tufo, il Fiano di Avellino, l’Aglianico e la Falanghina in provincia di Benevento ed Avellino. La cantina, situata nel comune di Torrioni (AV), nel cuore di produzione dell´area D.O.C.G. del Greco di Tufo, rispetta tutte le norme della buona tecnica enologica. L´enologo Roberto Iommazzo ideatore dell´attuale cantina, cura direttamente tutte le operazioni che avvengono in azienda, per dare sempre il meglio ai propri vini.
        </p>

    </label>

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



<script>
    let slideIndex = 1;
    showSlides(slideIndex);

    function plusSlides(n) {
        showSlides(slideIndex += n);
    }

    function currentSlide(n) {
        showSlides(slideIndex = n);
    }

    function showSlides(n) {
        let i;
        let slides = document.getElementsByClassName("mySlides");
        let dots = document.getElementsByClassName("dot");
        if (n > slides.length) {slideIndex = 1}
        if (n < 1) {slideIndex = slides.length}
        for (i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";
        }
        for (i = 0; i < dots.length; i++) {
            dots[i].className = dots[i].className.replace(" active", "");
        }
        slides[slideIndex-1].style.display = "block";
        dots[slideIndex-1].className += " active";
    }
</script>

</body>
</html>