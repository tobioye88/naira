<%-- 
    Document   : airtimePurchanse.jsp
    Created on : Oct 24, 2017, 10:48:06 AM
    Author     : Super Soft Tech
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="ins/header.jsp" />
<section class="py-5"></section>
<section>
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-lg-4 mx-auto">
				<div class="bg-secondary text-center">
					<h2 class="text-white p-5">Registration</h2>
				</div>
				<div class="mt-3 bg-white p-3 mb-5">
					<form>
						<div class="form-group">
							<label class="hidden" for="">First Name</label>
							<input class="form-control" type="text" name="first_name" placeholder="First Name">
						</div>
						<div class="form-group">
							<label class="hidden" for="">Surmane</label>
							<input class="form-control" type="text" name="last_name" placeholder="Surname">
						</div>
						<div class="form-group">
							<label class="hidden" for="">Phone</label>
							<input class="form-control" type="tel" name="phone" placeholder="Phone Number">
						</div>
						<div class="form-group">
							<label class="hidden" for="">Email</label>
							<input class="form-control" type="email" name="email" placeholder="Email">
						</div>
						<div class="form-group">
							<label class="hidden" for="">Password</label>
							<input class="form-control" type="password" name="password1" placeholder="Password1">
						</div>
						<div class="form-group">
							<label class="hidden" for="">Confirm Password</label>
							<input class="form-control" type="password" name="password2" placeholder="Password2">
						</div>
						<div class="form-group">
							<button type="submit" class="btn btn-primary btn-block">Sign up</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</section>
<jsp:include page="ins/footer.jsp" />