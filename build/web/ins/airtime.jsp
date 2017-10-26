<div class="">
	<div class="collapse show multi-collapse" id="multiCollapseExample1">
		<form action="" method="post" class="p-3">
			<div class="row">
				<div class="col-md-6">
					<div class="form-group">
						<label>Amount</label>
						<input class="form-control" type="number" name="amount" min="100" pattern="[0-9]+" required>
					</div>
					<div class="form-group">
						<label>Phone Number</label>
						<input class="form-control" type="tel" name="to" pattern="[0-9]+" required>
					</div>
					<div class="form-group">
						<label>Network</label>
						<select class="form-control" name="network" required>
							<option>Select a Netwrok</option>
							<option value="9Moblie">9Moblie</option>
							<option value="Airtel">Airtel</option>
							<option value="Glo">Glo</option>
							<option value="MTN">MTN</option>
						</select>
					</div>
					<div class="form-group">
						<label>From: Phone Number</label>
						<input class="form-control" type="tel" name="from" pattern="[0-9]+" required>
					</div>
				</div>
				<!-- <div class="col-md-6">
					<p><b>Amount</b></p>
					<p>...</p>
					<p><b>Recipient's Phone Number</b></p>
					<p>...</p>
					<p><b>Network</b></p>
					<p>...</p>
					<p><b>Sender's Phone Number</b></p>
					<p>...</p>
				</div> -->
			</div>
		</form>
	</div>
	<div class="collapse multi-collapse p-3" id="airtime_collapse2">
		<div class="row">
			<!-- <div class="col-md-6">
				<div class="rounded border border-primary m-2">
					<p class="lead text-center">Payment gateway...</p>
				</div>
			</div> -->
			<div class="col-md-6">
				<p><b>Amount</b></p>
				<p>...</p>
				<p><b>Recipient's Phone Number</b></p>
				<p>...</p>
				<p><b>Network</b></p>
				<p>...</p>
				<p><b>Sender's Phone Number</b></p>
				<p>...</p>
				<div class="text-right">
					<button class="btn btn-secondary">Confirm Payment</button>
				</div>
			</div>
		</div>
	</div>
	<div class="p-3 text-right">
		<button class="btn btn-primary btn-collapse" name="submit" type="button" data-toggle="collapse" data-target=".multi-collapse" aria-expanded="false" aria-controls="airtime_collapse1 airtime_collapse2">Next</button>
		
	</div>
</div>
<script>
var btnCollapse = "Back";
$(function() {
	$('.btn-collapse').on('click', function(){
		var btn = $(this).html();
		$(this).html(btnCollapse);
		btnCollapse = btn;
	});
});
</script>