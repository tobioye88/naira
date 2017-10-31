
    <div class="">
        <form action="" method="post" class="p-3">
            <div class="#" id="">
                <div class="row">
                    <div class="col-md-6 mx-auto">
                        <div class="form-group">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input class="form-check-input" type="checkbox"> Use <strong>registered</strong> Beneficiary List?
                                </label>
                            </div>
                            <div>
                                <label class="custom-file">
                                  <input type="file" id="file2" class="custom-file-input">
                                  <span class="custom-file-control"></span>
                                </label>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input class="form-check-input" type="checkbox"> Create <strong>New </strong> Beneficiary List?
                                </label>
                            </div>
                        </div>
                        <hr>
                        <div class="form-group">
                            <label>Account Number</label>
                            <input class="form-control" data-bind=".pmbenf_account" type="text" name="pmbenf_account" min="100" pattern="[0-9]+" Placeholder="Please enter beneficiary account number" >
                        </div>
                        <div class="form-group">
                            <label>Bank name</label>
                            <select class="form-control" data-bind=".pmbenf_bank" >
                                <option value="disabled">-- Please Select Bank-- </option>
                                <option>GTB Bank</option>
                                <option>Access Bank</option>
                                <option>Diamond Bank</option>
                                <option>Zenith Bank</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Amount</label>
                            <input class="form-control" data-bind=".pmbenf_amount" type="number" name="pmbenf_amount" min="100" pattern="[0-9]+" placeholder="Please enter the amount you are transferrring to this beneficiary" >
                        </div>

                        <div class="form-group text-right">
                            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#confirmPay_many_benfModal">Next</button>
                        </div>
                    </div>
                    <div class="col-md-6 mx-auto" style="display: none;">
                        <button class="btn btn-primary pmbenf_payment">Next</button>
                    </div>
                    <div class="col-md-6 mx-auto" style="display: none;">
                        <h2 class="text-muted">Payment Gateway here</h2> 
                        <button type="button" class="btn btn-secondary btn-block">Buy</button>
                        <p class="text-center py-3"><a class="pmbenf_back" href="#">Back</a></p>
                    </div>
                </div>
            </div>
        </form>
    </div>
    <div class="modal fade" id="confirmPay_many_benfModal" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title text-primary" id="modalLabel">Confirm Payment</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <p class="text-muted"><b>Account number</b></p>
                    <p class="pmbenf_amount">...</p>
                    <p class="text-muted"><b> Bank name</b></p>
                    <p class="pmbenf_bank">...</p>
                    <p class="text-muted"><b> Amount</b></p>
                    <p class="pmbenf_amount">...</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-outline-dark" data-dismiss="modal">NO</button>
                    <button type="button" class="btn btn-secondary" onclick="$('.pmbenf_payment').trigger('click')" data-dismiss="modal">Yes</button>
                </div>
            </div>
        </div>
    </div>
    <script>
        var btnCollapse = "Back";
        $(function () {
            $('.pmbenf_next').click(function (event) {
                event.preventDefault();
            });
            $('.pmbenf_back').click(function (event) {
                event.preventDefault();
                var btnParent = $(this).closest('.col-md-6');
                btnParent.parent().children().hide();
                console.log(btnParent.parent().first())
                btnParent.parent().children().first().show();
            });
            $('.pmbenf_payment').click(function (event) {
                event.preventDefault();
                var btnParent = $(this).closest('.col-md-6');
                btnParent.parent().children().hide();
                btnParent.next().show();
            });
            $('[data-bind]').focusout(function (event) {
                /* Act on the event */
                var bindend = $(this).data('bind');
                var value = $(this).val();
                // console.log(value.length);
                // if(value.length > 0)
                $(bindend).html(value);
            });
        });
    </script>