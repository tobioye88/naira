<div class="">
    <form action="" method="post" class="p-3">
        <div class="#" id="">
            <div class="row">
                <div class="col-md-6 screen-1-refer mx-auto">
                    <h3>Please enter referral details</h3>
                    <div class="form-group">
                        <label>Referral ID:</label>
                        <input class="form-control" type="text" name="refer_name" data-bind=".refer_name" placeholder="Please enter referral email or phone number ">
                        <small class="text-muted">ayomirotoye@gmail.com or 08065057496</small>
                    </div>
                    <div class="form-group text-right">
                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#referModal">Next</button>
                    </div>
                </div>
                <div class="col-md-6 screen-2-refer mx-auto" style="display: none;">
                    <h2 class="text-muted">Notification</h2> 
                    <hr>
                    <div class="card border-success mb-3" style="max-width: 20rem;">
                      <div class="card-header bg-transparent border-success">Transaction Status:</div>
                      <div class="card-body text-success">
                        <h4 class="card-title">Success</h4>
                        <p class="card-text">Referral link has been sent</p>
                      </div>
                      <div class="card-footer bg-transparent border-success">Would you like to enjoy more services <a href="">Click here</a></div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>
<div class="modal fade" id="referModal" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title text-primary" id="modalLabel">Confirm Details</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <p class="text-muted"><b>Referral ID</b></p>
                <p class="refer_name">...</p>
                
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-outline-dark" data-dismiss="modal">NO</button>
                <button type="button" class="btn btn-secondary" onclick="send_referral();" data-dismiss="modal">Send Link</button>
            </div>
        </div>
    </div>
</div>
<script>
    function send_referral(event){
        $('.screen-1-refer').hide();
        $('.screen-2-refer').show();
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