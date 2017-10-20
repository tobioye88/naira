<%@page import="com.naira3.jsp.*"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Naira.com</title>
    <link rel="stylesheet" href="assets/css/bootstrap.css">
    <link rel="stylesheet" href="assets/css/custom.css">
    <script src="assets/js/jquery.js"></script>
    <script src="assets/js/popper.min.js"></script>
    <script src="assets/js/bootstrap.js"></script>
    <link rel="stylesheet" href="assets/css/font-awesome.min.css">
    <link rel="icon" href="/assets/imgs/naira_logo.png" type="image/png">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body class="bg-light">
    <header class="fixed-top" style="background-color: rgba(255,255,255,0.3);">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav class="navbar navbar-expand-lg py-0">
                        <img src="assets/imgs/naira_logo.png" alt="Naira Logo" height="50px">
                        <a class="navbar-brand" href="#">Naira.com</a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>

                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav ml-auto">
                                <li class="nav-item active">
                                    <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">About</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">FAQs</a>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </header>
<script>
$(window).scroll(function(event) {
    // console.log('hello world');
    // console.log($(this).scrollTop());
    if($(this).scrollTop() > 50 && !$('header').hasClass('bg-white')){
        $('header').addClass('bg-white').addClass('text-dark');
    }else if($(this).scrollTop() < 50 && $('header').hasClass('bg-white')){
        $('header').removeClass('bg-white').removeClass('text-dark');
    }
});
</script>