<div class="">
	<form action="" method="post" class="p-3">
		<div class="#" id="">
			<div class="row">
				<div class="col-md-6 mx-auto">
                                        <div class="form-group">
                                            <div class="form-check">
                                                <label class="form-check-label">
                                                    <input class="form-check-input" type="checkbox"> Would you like to Fund your Personal Wallet?
                                                </label>
                                            </div>
                                        </div>
                                    <hr>
					<div class="form-group">
						<label>Amount</label>
						<input class="form-control" data-bind=".nw_amount" type="number" name=".nw_amount" min="100" pattern="[0-9]+" required>
					</div>
                                        <div class="form-group">
                                            <label>Wallet ID</label>
                                            <input class="form-control" data-bind=".wallet_id" type="text" name="wallet_id" min="100" required>
                                        </div>
                                    
					<div class="form-group text-right">
						<button type="button" class="btn btn-primary fund_wallet_next" data-toggle="modal" data-target="#confirmWalletFormModal">Next</button>
					</div>
				</div>
				<div class="col-md-6 mx-auto" style="display: none">
					<button class="btn btn-primary fund_wallet_payment">Next</button>
				</div>
				<div class="col-md-6 mx-auto" style="display: none;">
					<h2 class="text-muted">Payment Gateway here</h2> 
					<button type="button" class="btn btn-secondary btn-block">Buy</button>
					<p class="text-center py-3"><a class="fund_wallet_back" href="#">Back</a></p>
				</div>
			</div>
		</div>
	</form>
</div>
<div class="modal fade" id="confirmWalletFormModal" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
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
				<p class="nw_amount">...</p>
				<p class="text-muted"><b>Wallet ID</b></p>
				<p class="wallet_id">...</p>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-outline-dark" data-dismiss="modal">NO</button>
				<button type="button" class="btn btn-secondary" onclick="$('.fund_wallet_payment').trigger('click')" data-dismiss="modal">Yes</button>
			</div>
		</div>
	</div>
</div>
<script>
var btnCollapse = "Back";
$(function() {
	$('.fund_wallet_next').click(function(event) {
		event.preventDefault();
	});
	$('.fund_wallet_back').click(function(event) {
		event.preventDefault();
		var btnParent = $(this).closest('.col-md-6');
		btnParent.parent().children().hide();
		console.log(btnParent.parent().first())
		btnParent.parent().children().first().show();
	});
	$('.fund_wallet_payment').click(function(event) {
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