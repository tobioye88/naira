<%-- 
    Document   : airtimePurchanse.jsp
    Created on : Oct 24, 2017, 10:48:06 AM
    Author     : Super Soft Tech
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="ins/header.jsp" />
<!--  style="background-image: url(/naira3/assets/imgs/1.jpg); background-position: center; background-repeat: no-repeat; background-size: cover; filter: opacity(40%);" -->
<section class="py-5"></section>
<section>
	<div class="container">
		<div class="row mb-5">
			<div class="col-md-6 col-lg-8 d-flex align-items-center">
				<h2 class="display-1 w-100 text-secondary"></h2>
			</div>
			<div class="col-md-6 col-lg-4">
				<div class="">
					<div class="bg-white text-center p-3 mb-3">
						<h2 class="text-secondary m-0">Airtime Purchase</h2>
					</div>
					<div class="bg-white p-3">
						<form>
							<div class="form-group">
								<label>How Much?</label>
								<input class="form-control" type="number" name="amount">
								<small class="text-muted">e.g 10,000.00, 10000.00, 10000</small>
							</div>
							<div class="form-group">
								<label>What Network?</label>
								<select class="form-control">
									<option>Choose a Network</option>
									<option>MTN</option>
									<option>Airtel</option>
									<option>9Mobile</option>
									<option>Others</option>
								</select>
								<small class="text-muted"></small>
							</div>
							<div class="form-group">
								<label>To whom?</label>
								<input class="form-control" type="tel" name="receiver">
								<small class="text-muted">e.g Phone number of the person to recieve the airtime</small>
							</div>
							<hr>
							<div class="form-group">
								<label>Who is paying?</label>
								<input class="form-control" type="tel" name="receiver">
								<small class="text-muted"><input type="checkbox" class=""> Phone number same as above?</small>
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