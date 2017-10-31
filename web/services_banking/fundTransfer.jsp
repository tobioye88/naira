<div class="">
	<form action="" method="post" class="p-3">
		<div class="#" id="">
			<div class="row">
				<div class="col-md-6 screen-1-ft mx-auto">
					<div class="form-group">
						<label>What Bank?</label>
						<select class="form-control" data-bind=".ftbank" required>
							<option value="disabled">-- Please Select Bank-- </option>
							<option>GTB Bank</option>
							<option>Access Bank</option>
							<option>Diamond Bank</option>
							<option>Zenith Bank</option>
						</select>
					</div>
					<div class="form-group">
						<label>To Whom?</label>
						<input class="form-control" type="number" name="ftaccountNumber" data-bind=".ftaccountNumber" placeholder="Please enter the recipient of the transfer">
						<small class="text-muted">10 digit Account Number</small>
					</div>
					<div class="form-group">
						<label>How Much?</label>
						<input class="form-control" data-bind=".ftamount" type="number" name="ftamount" min="100" pattern="[0-9]+" placeholder="Please enter Amount to transfer" required>
						<small class="text-muted">e.g 10,000.00, 10000.00, 10000</small>
					</div>

					<div class="form-group text-right">
						<button type="button" class="btn btn-primary fund_transfer_next" data-toggle="modal" data-target="#confirmTransferModal">Next</button>
					</div>
				</div>
				<div class="col-md-6 screen-2-ft mx-auto" style="display: none;">
					<h2 class="text-muted">Payment Gateway here</h2> 
					<button type="button" class="btn btn-secondary btn-block">Buy</button>
					<p class="text-center py-3"><a class="fund_transfer_back" href="#">Back</a></p>
				</div>
			</div>
		</div>
	</form>
</div>
<div class="modal fade" id="confirmTransferModal" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title text-primary" id="modalLabel">Confirm Payment</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<p class="text-muted"><b>What Bank?</b></p>
				<p class="ftbank">...</p>
				<p class="text-muted"><b>To Whom?</b></p>
				<p class="ftaccountNumber">...</p>
				<p class="text-muted"><b>How Much?</b></p>
				<p class="ftamount">...</p>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-outline-dark" data-dismiss="modal">NO</button>
				<button type="button" class="btn btn-secondary" onclick="fund_transfer_payment();" data-dismiss="modal">Yes</button>
			</div>
		</div>
	</div>
</div>
<script>
	function fund_transfer_payment(event){
		$('.screen-1-ft').hide();
		$('.screen-2-ft').show();
	}
	$(function() {
		$('.fund_transfer_next').click(function(event) {
			event.preventDefault();
		});
		$('.fund_transfer_back').click(function(event) {
			event.preventDefault();
			var btnParent = $(this).closest('.col-md-6');
			btnParent.parent().children().hide();
			console.log(btnParent.parent().first())
			btnParent.parent().children().first().show();
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