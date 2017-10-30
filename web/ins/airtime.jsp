<div class="">
	<form action="" method="post" class="p-3">
		<div class="#" id="">
			<div class="row">
				<div class="col-md-6 mx-auto">
					<div class="form-group">
						<label>Amount</label>
						<input class="form-control" data-bind=".amount" type="number" name="amount" min="100" pattern="[0-9]+" required>
					</div>
					<div class="form-group">
						<label>Phone Number</label>
						<input class="form-control" type="tel" name="to" pattern="[0-9]+" data-bind=".recipient" required>
					</div>
					<div class="form-group">
						<label>Network</label>
						<select class="form-control" name="network" data-bind=".network" required>
							<option>Select a Netwrok</option>
							<option value="9Moblie">9Moblie</option>
							<option value="Airtel">Airtel</option>
							<option value="Glo">Glo</option>
							<option value="MTN">MTN</option>
						</select>
					</div>
					<div class="form-group">
						<label>From: Phone Number</label>
						<input class="form-control" data-bind=".sender" type="tel" name="from" pattern="[0-9]+" required>
					</div>
					<div class="form-group text-right">
						<button type="button" class="btn btn-primary airtime_next" data-toggle="modal" data-target="#confirmPaymentModal">Next</button>
					</div>
				</div>
				<div class="col-md-6 mx-auto" style="display: none">
					<button class="btn btn-primary airtime_payment">Next</button>
				</div>
				<div class="col-md-6 mx-auto" style="display: none;">
					<h2 class="text-muted">Payment Gateway here</h2> 
					<button type="button" class="btn btn-secondary btn-block">Buy</button>
					<p class="text-center py-3"><a class="airtime_payment_back" href="#">Back</a></p>
				</div>
			</div>
		</div>
	</form>
</div>
<div class="modal fade" id="confirmPaymentModal" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
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
				<p class="amount">...</p>
				<p class="text-muted"><b>Recipient's Phone Number</b></p>
				<p class="recipient">...</p>
				<p class="text-muted"><b>Network</b></p>
				<p class="network">...</p>
				<p class="text-muted"><b>Sender's Phone Number</b></p>
				<p class="sender">...</p>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-outline-dark" data-dismiss="modal">NO</button>
				<button type="button" class="btn btn-secondary" onclick="$('.airtime_payment').trigger('click')" data-dismiss="modal">Yes</button>
			</div>
		</div>
	</div>
</div>
<script>
var btnCollapse = "Back";
$(function() {
	$('.airtime_next').click(function(event) {
		event.preventDefault();
	});
	$('.airtime_payment_back').click(function(event) {
		event.preventDefault();
		var btnParent = $(this).closest('.col-md-6');
		btnParent.parent().children().hide();
		console.log(btnParent.parent().first())
		btnParent.parent().children().first().show();
	});
	$('.airtime_payment').click(function(event) {
		var btnParent = $(this).closest('.col-md-6');
		btnParent.parent().children().hide();
		btnParent.next().show();
	});
	$('[data-bind]').focusout(function(event) {
		/* Act on the event */
		var bindend = $(this).data('bind');
		var value = $(this).val();
		// console.log(value.length);
		// if(value.length > 0)
			$(bindend).html(value);
	});
});
</script>