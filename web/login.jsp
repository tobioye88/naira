<%-- 
    Document   : airtimePurchanse.jsp
    Created on : Oct 24, 2017, 10:48:06 AM
    Author     : Super Soft Tech
--%>
<jsp:include page="ins/header.jsp" />

<section class="py-5"></section>
<section>
    <div class="container mt-3">
        <div class="row">
            <div class="col-md-6 col-lg-4 mx-auto">
        		<div class="p-3 mb-3 bg-white"><h2 class="m-0">Login</h2></div>
            	<div class="p-3 bg-white">
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
</section>
<jsp:include page="ins/footer.jsp" />
