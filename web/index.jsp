<%-- 
    Document   : index.jsp
    Created on : Oct 11, 2017, 10:33:43 AM
    Author     : Super Soft Tech
--%>
<jsp:include page="ins/header.jsp" />
<%@ page errorPage="errorPage.jsp" %>

<section style="background-image: url(assets/imgs/2.jpg); background-repeat: no-repeat; background-size: cover; background-position: center;">
    <div class="container">
    	<div class="py-5"></div>
    	<div class="row">
    		<div class="col-12 d-flex">
    			<div class="bg-dark py-3 px-2" style="width: 300px; min-width:300px; height: 550px; border-radius: 20px;margin-bottom: -120px">
    				<div class="bg-light p-1 w-25 mx-auto" style="border-radius: 5px; margin-bottom: 5px;"></div>
                    <div class="bg-white w-100" style="border-radius: 20px; height: calc(100% - 20px);"></div>
    			</div>
    			<div class="w-auto pl-5 p-3 align-self-center">
	    			<h2 class="display-3 text-white text-shadow font2">Use <span class="text-secondary-light">naira.com</span><br>enjoy unbeatable services</h2>
	    			<div class="border border-primary mb-3 w-25"></div>
	    			<a href="payBills.jsp" class="btn btn-lg btn-outline-light">Pay Bills</a>
	    			<a href="airtimePurchase.jsp" class="btn btn-lg btn-outline-light">Purchase Airtime</a>
	    			<a href="fundTransfer.jsp" class="btn btn-lg btn-secondary">Transfer Funds</a>
	    		</div>
    		</div>
    	</div>
    </div>
</section>
<!-- <section>
	<div class="container py-5">
		<div class="row">
			<div class="col-md-8 d-flex ">
				<div class="text-right align-self-center">
					<h3 class="display-3 text-muted">Student Loan</h3>
					<p class="lead">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Porro officia a numquam eaque libero eveniet esse est aliquam neque, sapiente obcaecati sunt, tempora id quibusdam illo, doloribus nulla maiores iure.</p>
					<button class="btn btn-primary">Student Loan</button>
				</div>
			</div>
			<div class="col-md-4">
				<div class="border border-primary p-3">
					<img class="img-fluid" src="assets/imgs/backpack.png" alt="">
				</div>
			</div>
		</div>
	</div>
</section> -->
<jsp:include page="ins/footer.jsp" />