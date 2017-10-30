<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="">
	<div class="row">
		<div class="col-md-12 mx-auto screen-1">
			<h3 class="text-center text-muted">Select Biller</h3>
			<div class="row">
			<c:forEach var="j" begin="1" end="18">
				<div class="col-md-2">
					<a href="Biller_${j}" class="screen-1-billers">
						<div class="card mb-3">
							<div class="card-body bg-grey500">
								<p class="text-white text-center">Biller_${j}</p>
							</div>
						</div>
					</a>
				</div>
			</c:forEach>
			</div>
			<!-- <div class="text-right"><button class="btn btn-primary screen-1-billers">Next</button></div> -->
		</div>
		<div class="col-md-6 mx-auto screen-2" style="display: none;">
			<form action="#" method="post">
				<div class="form-group">
					<label>Biller</label>
					<input class="form-control biller-name" type="text" name="biller" readonly>
				</div>
				<div class="form-group">
					<label>Amount</label>
					<input class="form-control" type="number" name="amount" min="100" pattern="[0-9]+" data-bind=".bill_amount">
					<small class="text-muted">e.g 10,000.00, 10000.00, 10000</small>
				</div>
				<div class="form-group">
					<label>Biller info</label>
					<input class="form-control" type="text" name="billerinfo" data-bind=".bill_info">
				</div>
				<div class="form-group">
					<label>Phone number</label>
					<input class="form-control" type="tel" name="phone" data-bind=".bill_phone">
				</div>
				<div class="form-group text-right">
					<button type="button" class="btn btn-primary bills_back">Back</button>
					<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#payBillsModal">Next</button>
				</div>							
			</form>
		</div>
		<div class="col-md-6 mx-auto screen-3" style="display: none;">
			<h2 class="text-muted">Payment Gateway here</h2> 
			<button type="button" class="btn btn-secondary btn-block">Buy</button>
			<p class="text-center py-3"><a class="airtime_payment_back" href="#">Back</a></p>
		</div>
	</div>
</div>

<div class="modal fade" id="payBillsModal" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title text-primary" id="modalLabel">Confirm Payment</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<p class="text-muted"><b>Amount</b></p>
				<p class="bill_amount">...</p>
				<p class="text-muted"><b>Biller Info</b></p>
				<p class="bill_info">...</p>
				<p class="text-muted"><b>Senders's Phone Number</b></p>
				<p class="bill_phone">...</p>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-outline-dark" data-dismiss="modal">NO</button>
				<button type="button" class="btn btn-secondary btn-screen-3" data-dismiss="modal">Yes</button>
			</div>
		</div>
	</div>
</div>
<script>
$(function(){

	$('.screen-1-billers').click(function(event) {
		event.preventDefault();
		var biller = $(this).attr('href');
		console.log(biller);
		$('.biller-name').val(biller);
		$('.screen-1').hide();
		$('.screen-2').show();
	});
	$('.btn-screen-3').click(function(event) {
		$('.screen-2').hide();
		$('.screen-3').show();
	});
	$('.bills_back').click(function(event){
		var btnParent = $(this).closest('.col-md-6');
		btnParent.parent().children().hide();
		console.log(btnParent.parent().first())
		btnParent.parent().children().first().show();
	})

});
</script>