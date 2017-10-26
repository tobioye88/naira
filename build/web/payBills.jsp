<%-- 
    Document   : payBills.jsp
    Created on : Oct 24, 2017, 10:48:06 AM
    Author     : Super Soft Tech
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="ins/header.jsp" />

<section class="py-5"></section>
<section>
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-lg-8 d-flex align-items-center">
				<h2 class="display-1 w-100 text-secondary"></h2>
			</div>
			<div class="col-md-6 col-lg-4">
				<div class="">
					<div class="bg-white text-center p-3 mb-2">
						<h2 class="text-secondary m-0">Bills Payment</h2>
					</div>
					<div class="bg-white p-3">
						<form action="">
							<div class="form-group">
								<label>What Biller?</label>
								<select class="form-control">
									<option value="">Select Biller</option>
								</select>
							</div>
							<div class="form-group">
								<label>How Much?</label>
								<input class="form-control" type="number" name="amount">
							</div>
							<div class="form-group">
								<label>How Much?</label>
								<input class="form-control" type="number" name="amount">
							</div>
							<div class="form-group">
								<label>How Much?</label>
								<input class="form-control" type="number" name="amount">
								<small class="text-muted">e.g 10,000.00, 10000.00, 10000</small>
							</div>
							<div class="form-group">
								<button type="submit" class="btn btn-primary btn-block">Next</button>
							</div>							
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<jsp:include page="ins/footer.jsp" />