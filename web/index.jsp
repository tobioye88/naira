<%-- 
    Document   : index.jsp
    Created on : Oct 11, 2017, 10:33:43 AM
    Author     : Super Soft Tech
--%>
<jsp:include page="ins/header.jsp" />
<%@ page errorPage="errorPage.jsp" %> 

<section style="background-image: url(assets/imgs/1.jpg); background-repeat: no-repeat; background-size: cover; background-position: center;">
    <div class="container">
    	<div class="py-5"></div>
    	<div class="row">
    		<div class="col-12 d-flex">
    			<div class="bg-dark py-3 px-2" style="width: 300px; min-width:300px; height: 550px; border-radius: 20px;margin-bottom: -120px">
    				<div class="bg-light p-1 w-25 mx-auto" style="border-radius: 5px; margin-bottom: 5px;"></div>
                    <div class="bg-white w-100" style="border-radius: 20px; height: calc(100% - 20px);"></div>
    			</div>
    			<div class="w-auto pl-5 p-3 align-self-center">
	    			<h2 class="display-3 text-white text-shadow">What will you <br> like to do today?</h2>
	    			<hr>
	    			<button class="btn btn-outline-light">Pay Bills</button>
	    			<button class="btn btn-outline-light">Purchase Airtime</button>
	    			<button class="btn btn-secondary">Transfer Funds</button>
	    		</div>
    		</div>
    	</div>
    </div>
</section>
<section>
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
</section>
<section class="bg-white">
	<div class="container py-5">
		<div class="row">
			<div class="col-md-4">
				<div class="border border-secondary p-3 bg-light">
					<img class="img-fluid" src="assets/imgs/backpack.png" alt="">
				</div>
			</div>
			<div class="col-md-8 d-flex ">
				<div class="align-self-center">
					<h3 class="display-3 text-muted"> Loan</h3>
					<p class="lead">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Porro officia a numquam eaque libero eveniet esse est aliquam neque, sapiente obcaecati sunt, tempora id quibusdam illo, doloribus nulla maiores iure.</p>
					<button class="btn btn-secondary">Student Loan</button>
				</div>
			</div>
		</div>
	</div>
</section>
<script type="text/javascript">
$.post('test.jsp', function(data) {
	console.log(data);
},"json");
</script>
<jsp:include page="ins/footer.jsp" />