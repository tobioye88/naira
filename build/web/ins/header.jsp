<%@page import="com.naira3.jsp.*"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Naira.com</title>
    <base href="/naira3/">
    <link rel="stylesheet" href="assets/css/bootstrap.css">
    <script src="assets/js/jquery.js"></script>
    <script src="assets/js/popper.min.js"></script>
    <script src="assets/js/bootstrap.js"></script>
    <link rel="stylesheet" href="assets/css/font-awesome.min.css">
    <link rel="icon" href="/assets/imgs/naira_logo.png" type="image/png">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css?family=Roboto|Montserrat:900" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/custom.css">
</head>
<body class="">
    <header class="fixed-top" style="background-color: rgba(255,255,255,0.0);">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav class="navbar navbar-expand-lg py-0">
                        <img src="assets/imgs/naira_logo.png" alt="Naira Logo" height="50px">
                        <a class="navbar-brand" href="/naira3">Naira.com</a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"><i class="fa fa-bars" aria-hidden="true"></i></span>
                        </button>

                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav ml-auto">
                                <li class="nav-item">
                                    <a class="nav-link" href="about.jsp">About</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="faqs.jsp">FAQs</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#loginModal" data-toggle="modal" data-target="#loginModal">Login</a>
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
<!-- Login Modal -->
<div id="loginModal" class="modal" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header border-0">
                <h5 class="modal-title text-secondary display-4">Login</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="app/login.jsp" method="POST">
                    <div class="form-group">
                        <label>Email</label>
                        <input type="text" name="email" placeholder="Email" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Password</label>
                        <input type="password" name="password" placeholder="Password" class="form-control">
                    </div>
                    <div class="form-group m-0 text-center">
                        <button type="submit" name="submit" placeholder="Email" class="btn btn-secondary btn-block mb-3"><i class="fa fa-unlock" aria-hidden="true"></i> Login</button>
                        <a class="text-secondary" href="register.jsp">Register Now</a>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>