<div class="">
    <div class="screen-1-rcpay">
      <table class="table table-striped">
      <thead>
        <tr>
          <th>#</th>
          <th>Biller/Beneficiary</th>
          <th>Account Number/ Merchant Code</th>
          <th>Amount/Value</th>
          <th>Recurrence Option</th>
          <th></th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <th scope="row">1</th>
          <td>DSTV</td>
          <td>43256666</td>
          <td># 16,900</td>
          <td>30 days</td>
          <td>
            <button type="button" class="btn btn-primary btn-sm" data-dismiss="modal">Edit</button>
            <button type="button" class="btn btn-primary btn-sm" data-dismiss="modal">Suspend</button>
            <button type="button" class="btn btn-primary btn-sm" data-dismiss="modal">Stop</button>
          </td>
        </tr>
        <tr>
          <th scope="row">2</th>
             <td>Glo Data</td>
            <td>43256556</td>
            <td># 5,000</td>
            <td>30 days</td>
            <td>
              <button type="button" class="btn btn-primary btn-sm" data-dismiss="modal">Edit</button>
              <button type="button" class="btn btn-primary btn-sm" data-dismiss="modal">Suspend</button>
              <button type="button" class="btn btn-primary btn-sm" data-dismiss="modal">Stop</button>
            </td>
        </tr>
        <tr>
          <th scope="row">3</th>
          <td>Smile</td>
            <td>12547678</td>
            <td># 18,000</td>
            <td>30 days</td>
            <td>
              <button type="button" class="btn btn-primary btn-sm" data-dismiss="modal">Edit</button>
              <button type="button" class="btn btn-primary btn-sm" data-dismiss="modal">Suspend</button>
              <button type="button" class="btn btn-primary btn-sm" data-dismiss="modal">Stop</button>
            </td>
        </tr>
        <tr>
          <th scope="row">4</th>
          <td>Oyelami Tobi</td>
            <td>0050972006</td>
            <td># 2,000</td>
            <td>14 days</td>
            <td>
              <button type="button" class="btn btn-primary btn-sm" data-dismiss="modal">Edit</button>
              <button type="button" class="btn btn-primary btn-sm" data-dismiss="modal">Suspend</button>
              <button type="button" class="btn btn-primary btn-sm" data-dismiss="modal">Stop</button>
            </td>
        </tr>
      </tbody>
        </table>
        <div class="form-group text-right">
            <button type="button" class="btn btn-primary fund_transfer_next" onclick="newRecurring_paymentForm();">New recurring payment</button>
        </div>
        
    </div>
    <div class="screen-2-rcpay mx-auto" style="display: none;">
        <div class="modal-header">
            <h5 class="modal-title text-primary" id="">New Recurrent Payment</h5>
            <button type="button" class="btn btn-secondary btn-sm" onclick="back();" aria-label="Close">
                Back
            </button>
        </div>
        <div class="">
            <form action="" method="post" class="">
                <div class="#" id="">
                    <div class="row">
                        <div class="col-md-6 mx-auto">
                            <div class="form-group">
                                <label>Biller/Beneficiary Name </label>
                                <input class="form-control" type="text" name="rcpay_name" data-bind=".rcpay_name" placeholder="Please enter the biller or beneficiary name">
                                <small class="text-muted">e.g. Akinrotoye Ayomide, DSTV Subscription</small>
                            </div>
                            <div class="form-group">
                                <label>Account number/ Merchant code</label>
                                <input class="form-control" type="number" name="rcpay_accountNumber" data-bind=".rcpay_accountNumber" placeholder="Account number or Merchant code">
                                <small class="text-muted">e.g. 1234567890 or 45673545 </small>
                            </div>
                            <div class="form-group">
                                <label>Amount</label>
                                <input class="form-control" data-bind=".rcpay_amount" type="number" name="rcpay_amount" min="100" pattern="[0-9]+" placeholder="Please enter Amount" required>
                                <small class="text-muted">e.g 10,000.00, 10000.00, 10000</small>
                            </div>
                            <div class="form-group">
                                <label>Recurrence option</label>
                                <input class="form-control" data-bind=".rcpay_option" type="textr" name="rcpay_option" pattern="[0-9]+" placeholder="Please enter option in days">
                                <small class="text-muted">e.g 14, 30, 90</small>
                            </div>

                            <div class="form-group text-right">
                                <button type="button" class="btn btn-primary fund_transfer_next" data-toggle="modal" data-target="#rcpay_Modal">CREATE</button>
                            </div>
                        </div>
                        
                    </div>
                </div>
            </form>
        </div>
    </div>
    <div class="col-md-6 screen-3-rcpay mx-auto" style="display: none;">
        <div class="alert-info">Recurrent Payment is set up</div>
        <button type="button" class="btn btn-secondary btn-sm" onclick="back();" aria-label="Close">
                Back
            </button>
    </div>
    <!-- newRecurring_paymentModal -->
    <div class="modal fade" id="rcpay_Modal" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title text-primary" id="modalLabel">Confirm Information</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <p class="text-muted"><b>Biller/Beneficiary Name</b></p>
                    <p class="rcpay_name">...</p>
                    <p class="text-muted"><b>Account number/ Merchant code</b></p>
                    <p class="rcpay_accountNumber">...</p>
                    <p class="text-muted"><b>Amount</b></p>
                    <p class="rcpay_amount">...</p>
                    <p class="text-muted"><b>Recurrence Option</b></p>
                    <p class="rcpay_option">...</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-outline-dark" data-dismiss="modal">Edit</button>
                    <button type="button" class="btn btn-secondary" onclick="confirm_rcpay();" data-dismiss="modal">Confirmed</button>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    function newRecurring_paymentForm(event){
        $('.screen-1-rcpay').hide();
        $('.screen-2-rcpay').show();
    }
    function back(event){
      
            event.preventDefault();
            var btnParent = $(this).closest('.col-md-6');
            btnParent.parent().children().hide();
            console.log(btnParent.parent().first())
            btnParent.parent().children().first().show();
      
    }
    function confirm_rcpay(event){
        $('.screen-3-rcpay').show();
        $('.screen-2-rcpay').hide();
    }
</script>

