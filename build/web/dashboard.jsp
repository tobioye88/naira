<%-- 
    Document   : dashboard.jsp
    Created on : Oct 24, 2017, 10:48:06 AM
    Author     : Super Soft Tech
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="ins/header.jsp" />
<script src="assets/js/validate.min.js"></script>
<section class="py-5"></section>
 <section>
        <div class="container my-3">
            <div class="row d-flex">
                <div class="col-md-5 col-lg-3">
                	<div class="mb-3 p-3 rounded border border-primary"><h3 class="mb-0 text-secondary-dark">Services</h3>
                		<div class="border border-primary w-25"></div>
                	</div>
                	<div id="accordion" role="tablist" class="border border-primary rounded">
                		<div class="">
                			<div class=" p-3" role="tab" id="headingOne">
                				<p class="mb-0 font-weight-bold">
                					<a data-toggle="collapse" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                						Commercial Services
                					</a>
                				</p>
                			</div>

                			<div id="collapseOne" class="collapse show bg-grey100" role="tabpanel" aria-labelledby="headingOne" data-parent="#accordion">
                				<div class="nav flex-column" role="tablist">
                					<a 
                            class="nav-link" 
                            id="airtime-tab" 
                            data-toggle="pill" 
                            href="#airtime" 
                            role="tab" 
                            aria-controls="airtime" 
                            aria-expanded="true"><i class="fa fa-image" aria-hidden="true"></i> buy airtime</a>
                					<a 
                            class="nav-link" 
                            id="bills-tab" 
                            data-toggle="pill" 
                            href="#bills" 
                            role="tab" 
                            aria-controls="bills" 
                            aria-expanded="true"><i class="fa fa-image" aria-hidden="true"></i> pay bill</a>
                					<a 
                            class="nav-link" 
                            id="funds-tab" 
                            data-toggle="pill" 
                            href="#funds" 
                            role="tab" 
                            aria-controls="funds" 
                            aria-expanded="true"><i class="fa fa-image" aria-hidden="true"></i> fund naira wallet</a>
                					<a 
                            class="nav-link" 
                            id="mailp-tab" 
                            data-toggle="pill" 
                            href="#mailp" 
                            role="tab" 
                            aria-controls="mailp" 
                            aria-expanded="true"><i class="fa fa-image" aria-hidden="true"></i> pay using mail (mail pay)</a>
<!--                					<a
        					class="nav-link" 
                            id="ppservice-tab" 
                            data-toggle="pill" 
                            href="#ppservice" 
                            role="tab" 
                            aria-controls="ppservice" 
                            aria-expanded="true"><i class="fa fa-image" aria-hidden="true"></i> enjoy postpaid services</a>-->
                					<a 
        					class="nav-link"
                            id="esloans-tab" 
                            data-toggle="pill" 
                            href="#esloans" 
                            role="tab" 
                            aria-controls="esloans" 
                            aria-expanded="true"><i class="fa fa-image" aria-hidden="true"></i> enjoy student loans</a>
                				</div>
                			</div>
                		</div>
                		<div class="">
                			<div class=" p-3" role="tab" id="headingTwo">
                				<p class="mb-0 font-weight-bold">
                					<a class="collapsed" data-toggle="collapse" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                						Banking Services
                					</a>
                				</p>
                			</div>
                			<div id="collapseTwo" class="collapse bg-grey100" role="tabpanel" aria-labelledby="headingTwo" data-parent="#accordion">
                				<div class="nav flex-column">
                					<a class="nav-link"
                            id="tfinstantly-tab" 
                            data-toggle="pill" 
                            href="#tfinstantly" 
                            role="tab" 
                            aria-controls="tfinstantly" 
                            aria-expanded="true"><i class="fa fa-image" aria-hidden="true"></i> transfer funds instantly</a>
                					<a class="nav-link"
                            id="pmbenf-tab" 
                            data-toggle="pill" 
                            href="#pmbenf" 
                            role="tab" 
                            aria-controls="pmbenf" 
                            aria-expanded="true"><i class="fa fa-image" aria-hidden="true"></i> pay many beneficiaries</a>
                					<a class="nav-link"
                            id="vbaccounts-tab" 
                            data-toggle="pill" 
                            href="#vbaccounts" 
                            role="tab" 
                            aria-controls="vbaccounts" 
                            aria-expanded="true"><i class="fa fa-image" aria-hidden="true"></i> view all my bank accounts</a>
                					<a class="nav-link"
                            id="recurringpay-tab" 
                            data-toggle="pill" 
                            href="#recurringpay" 
                            role="tab" 
                            aria-controls="recurringpay" 
                            aria-expanded="true"><i class="fa fa-image" aria-hidden="true"></i> set up recurring payments</a>
                				</div>
                			</div>
                		</div>
                		<div class="">
                			<div class=" p-3" role="tab" id="headingThree">
                				<p class="mb-0 font-weight-bold">
                					<a class="collapsed" data-toggle="collapse" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                						Operational Services
                					</a>
                				</p>
                			</div>
                			<div id="collapseThree" class="collapse bg-grey100" role="tabpanel" aria-labelledby="headingThree" data-parent="#accordion">
                				<div class="nav flex-column">
                					<a class="nav-link"
                            id="ssportal-tab" 
                            data-toggle="pill" 
                            href="#ssportal" 
                            role="tab" 
                            aria-controls="ssportal" 
                            aria-expanded="true"><i class="fa fa-image" aria-hidden="true"></i> switchpay Settlement Portal</a>
                					<a class="nav-link"
                            id="sdrs-tab" 
                            data-toggle="pill" 
                            href="#sdrs" 
                            role="tab" 
                            aria-controls="sdrs" 
                            aria-expanded="true"><i class="fa fa-image" aria-hidden="true"></i> switchpay DRS</a>
                					<a class="nav-link"
                            id="ppackage-tab" 
                            data-toggle="pill" 
                            href="#ppackage" 
                            role="tab" 
                            aria-controls="ppackage" 
                            aria-expanded="true"><i class="fa fa-image" aria-hidden="true"></i> payroll Package</a>
                				</div>
                			</div>
                		</div>
                		<div class="">
                			<div class=" p-3" role="tab" id="headingTwo">
                				<p class="mb-0 font-weight-bold">
                					<a class="collapsed" data-toggle="collapse" href="#adminServices" aria-expanded="false" aria-controls="adminServices">
                						Admin Services
                					</a>
                				</p>
                			</div>
                			<div id="adminServices" class="collapse bg-grey100" role="tabpanel" aria-labelledby="headingTwo" data-parent="#accordion">
                				<div class="nav flex-column">
                					<a class="nav-link"
                            id="manageuser-tab" 
                            data-toggle="pill" 
                            href="#manageuser" 
                            role="tab" 
                            aria-controls="manageuser" 
                            aria-expanded="true"><i class="fa fa-image" aria-hidden="true"></i> manage users</a>
                					<a class="nav-link"
                            id="vu-actv-tab" 
                            data-toggle="pill" 
                            href="#vu-actv" 
                            role="tab" 
                            aria-controls="vu-actv" 
                            aria-expanded="true"><i class="fa fa-image" aria-hidden="true"></i> view user activities</a>
                					<a class="nav-link"
                            id="vatousers-tab" 
                            data-toggle="pill" 
                            href="#vatousers" 
                            role="tab" 
                            aria-controls="vatousers" 
                            aria-expanded="true"><i class="fa fa-image" aria-hidden="true"></i> view audit trail of users</a>
                				</div>
                			</div>
                		</div>
                	</div>
                </div>
                <div class="col-md-7 col-lg-9">
                    <div class="tab-content" id="tabContent">
                        <div 
                        class="tab-pane fade show active" 
                        id="home" 
                        role="tabpanel" 
                        aria-labelledby="home-tab">
							<div class="row">
	                        	<div class="col-md-12 col-lg-7">
		                        	<div class="p-3  mb-3 text-center rounded">
			                            <h1 class="display-1 text-secondary-dark">Welcome</h1>
			                            <div class="border-bottom-primary w-25 mb-3 mx-auto"></div>
			                            <p class="text-muted">What will you like to do?</p>
			                            <div class="border-bottom-primary w-25 mb-3 mx-auto"></div>
		                        	</div>
	                        	</div>
	                        	<div class="col-lg-5 hidden-md-down">
	                        		<img src="assets/imgs/naira_mobile.png" class="img-fluid">
	                        	</div>
                            </div>
                        </div>
                        <div 
                          class="tab-pane fade border border-primary rounded p-3" 
                          id="airtime" 
                          role="tabpanel" 
                          aria-labelledby="airtime-tab">
                          <h2 class="text-center">Airtime Topup</h2>
                          <jsp:include page="ins/airtime.jsp" />
                        </div>
                      <div 
                      class="tab-pane fade border border-primary rounded p-3" 
                      id="bills" 
                      role="tabpanel" 
                      aria-labelledby="bills-tab">
	                      <h2 class="text-center">Bills Payment</h2>
	                      <jsp:include page="ins/payBills.jsp" />
                  		</div>
                      <div 
                      class="tab-pane fade border border-primary rounded p-3" 
                      id="tfinstantly" 
                      role="tabpanel" 
                      aria-labelledby="instant-tab"><h2 class="text-center">Instant Funds Transfer</h2>
                          <jsp:include page="services_banking/fundTransfer.jsp" />

                      </div>
                      <div 
                      class="tab-pane fade border border-primary rounded p-3" 
                      id="funds" 
                      role="tabpanel" 
                      aria-labelledby="funds-tab"><h2 class="text-center">Fund Naira Wallet</h2>
                           <jsp:include page="services_commercial/fundNairaWallet.jsp" />
                      </div>
                      <div 
                      class="tab-pane fade border border-primary rounded p-3" 
                      id="mailp" 
                      role="tabpanel" 
                      aria-labelledby="mailp-tab"><h2 class="text-center">Pay Using Mail (Mail Pay)</h2>
                          <jsp:include page="services_commercial/mailpay.jsp" />
                      </div>
                      <div 
                          class="tab-pane fade border border-primary rounded p-3" 
                          id="pmbenf" 
                          role="tabpanel" 
                          aria-labelledby="pmbenf-tab"><h2 class="text-center">Pay Many Beneficiaries</h2>
                          <jsp:include page="services_banking/pay_many_beneficiaries.jsp" />
                      </div>
                      <div 
                          class="tab-pane fade border border-primary rounded p-3" 
                          id="recurringpay" 
                          role="tabpanel" 
                          aria-labelledby="recurringpay-tab"><h2 class="text-center">Recurring Payments</h2>
                          <jsp:include page="services_banking/recurring_payments.jsp" />
                      </div>
                        
                      <div 
                      class="tab-pane fade border border-primary rounded p-3" 
                      id="bulkp" 
                      role="tabpanel" 
                      aria-labelledby="bulkp-tab"><h2 class="text-center">Bulk Payment Workflow</h2></div>
                      <div 
                      class="tab-pane fade border border-primary rounded p-3" 
                      id="vbaccounts" 
                      role="tabpanel" 
                      aria-labelledby="vbaccounts-tab"><h2 class="text-center">View My accounts</h2>
                      <jsp:include page="services_banking/view_all_my_accounts.jsp" />
                  	  </div>
                      <div 
                      class="tab-pane fade border border-primary rounded p-3" 
                      id="payroll" 
                      role="tabpanel" 
                      aria-labelledby="payroll-tab"><h2 class="text-center">Payroll package</h2></div>
                      <div 
                      class="tab-pane fade border border-primary rounded p-3" 
                      id="switchpay" 
                      role="tabpanel" 
                      aria-labelledby="switchpay-tab"><h2 class="text-center">SwitchPay Settlement Portal</h2></div>
                      <div 
                      class="tab-pane fade border border-primary rounded p-3" 
                      id="switchpaydrs" 
                      role="tabpanel" 
                      aria-labelledby="switchpaydrs-tab"><h2 class="text-center">SwitchPay DRS</h2></div>
                      <div 
                      class="tab-pane fade border border-primary rounded p-3" 
                      id="postpaidserv" 
                      role="tabpanel" 
                      aria-labelledby="postpaidserv-tab"><h2 class="text-center">Postpaid Services</h2></div>
                      <div 
                      class="tab-pane fade border border-primary rounded p-3" 
                      id="stdloan" 
                      role="tabpanel" 
                      aria-labelledby="stdloan-tab"><h2 class="text-center">Student Loans</h2></div>
                      <div 
                      class="tab-pane fade border border-primary rounded p-3" 
                      id="refer_earn" 
                      role="tabpanel" 
                      aria-labelledby="stdloan-tab"><h2 class="text-center">Refer and Earn</h2></div>   
                </div>
            </div>
        </div>
    </section>
<jsp:include page="ins/footer.jsp" />