<%-- 
    Document   : dashboard.jsp
    Created on : Oct 24, 2017, 10:48:06 AM
    Author     : Super Soft Tech
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="ins/header.jsp" />

<section class="py-5"></section>
 <section>
        <div class="container my-3">
            <div class="row d-flex">
                <div class="col-md-5 col-lg-3">
                	<div class="bg-white mb-3 p-3 rounded"><h3 class="mb-0 text-secondary-dark">Services</h3>
                		<div class="border border-primary w-25"></div>
                	</div>
                	<div id="accordion" role="tablist">
                		<div class="">
                			<div class="bg-white p-3" role="tab" id="headingOne">
                				<h5 class="mb-0">
                					<a data-toggle="collapse" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                						Commercial Services
                					</a>
                				</h5>
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
                					<a
        					class="nav-link" 
                            id="ppservice-tab" 
                            data-toggle="pill" 
                            href="#ppservice" 
                            role="tab" 
                            aria-controls="ppservice" 
                            aria-expanded="true"><i class="fa fa-image" aria-hidden="true"></i> enjoy postpaid services</a>
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
                			<div class="bg-white p-3" role="tab" id="headingTwo">
                				<h5 class="mb-0">
                					<a class="collapsed" data-toggle="collapse" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                						Banking Services
                					</a>
                				</h5>
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
                            id="srpayment-tab" 
                            data-toggle="pill" 
                            href="#srpayment" 
                            role="tab" 
                            aria-controls="srpayment" 
                            aria-expanded="true"><i class="fa fa-image" aria-hidden="true"></i> set up recurring payments</a>
                				</div>
                			</div>
                		</div>
                		<div class="">
                			<div class="bg-white p-3" role="tab" id="headingThree">
                				<h5 class="mb-0">
                					<a class="collapsed" data-toggle="collapse" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                						Operational Services
                					</a>
                				</h5>
                			</div>
                			<div id="collapseThree" class="collapse bg-grey100" role="tabpanel" aria-labelledby="headingThree" data-parent="#accordion">
                				<div class="nav flex-column">
                					<a class="nav-link"
                            id="ssportal-tab" 
                            data-toggle="pill" 
                            href="#ssportal" 
                            role="tab" 
                            aria-controls="ssportal" 
                            aria-expanded="true"><i class="fa fa-image" aria-hidden="true"></i> SwitchPay Settlement Portal</a>
                					<a class="nav-link"
                            id="sdrs-tab" 
                            data-toggle="pill" 
                            href="#sdrs" 
                            role="tab" 
                            aria-controls="sdrs" 
                            aria-expanded="true"><i class="fa fa-image" aria-hidden="true"></i> SwitchPay DRS</a>
                					<a class="nav-link"
                            id="ppackage-tab" 
                            data-toggle="pill" 
                            href="#ppackage" 
                            role="tab" 
                            aria-controls="ppackage" 
                            aria-expanded="true"><i class="fa fa-image" aria-hidden="true"></i> Payroll Package</a>
                				</div>
                			</div>
                		</div>
                		<div class="">
                			<div class="bg-white p-3" role="tab" id="headingThree">
                				<h5 class="mb-0">
                					<a class="collapsed" data-toggle="collapse" href="#profileManagement" aria-expanded="false" aria-controls="profileManagement">
                						Profile Management
                					</a>
                				</h5>
                			</div>
                			<div id="profileManagement" class="collapse bg-grey100" role="tabpanel" aria-labelledby="headingThree" data-parent="#accordion">
                				<div class="nav flex-column" role="tablist">
                					<a class="nav-link"
                            id="rnearn-tab" 
                            data-toggle="pill" 
                            href="#rnearn" 
                            role="tab" 
                            aria-controls="rnearn" 
                            aria-expanded="true"><i class="fa fa-image" aria-hidden="true"></i> refer and earn</a>
                					<a class="nav-link"
                            id="nwallet-tab" 
                            data-toggle="pill" 
                            href="#nwallet" 
                            role="tab" 
                            aria-controls="nwallet" 
                            aria-expanded="true"><i class="fa fa-image" aria-hidden="true"></i> naira wallet</a>
                					<a class="nav-link"
                            id="cpassword-tab" 
                            data-toggle="pill" 
                            href="#cpassword" 
                            role="tab" 
                            aria-controls="cpassword" 
                            aria-expanded="true"><i class="fa fa-image" aria-hidden="true"></i> change password</a>
                					<a class="nav-link"
                            id="pwallet-tab" 
                            data-toggle="pill" 
                            href="#pwallet" 
                            role="tab" 
                            aria-controls="pwallet" 
                            aria-expanded="true"><i class="fa fa-image" aria-hidden="true"></i> promo wallet</a>
                					<a class="nav-link"
                            id="ainformation-tab" 
                            data-toggle="pill" 
                            href="#ainformation" 
                            role="tab" 
                            aria-controls="ainformation" 
                            aria-expanded="true"><i class="fa fa-image" aria-hidden="true"></i> account information</a>
                					<a class="nav-link"
                            id="ftbenf-tab" 
                            data-toggle="pill" 
                            href="#ftbenf" 
                            role="tab" 
                            aria-controls="ftbenf" 
                            aria-expanded="true"><i class="fa fa-image" aria-hidden="true"></i> fund transfer beneficiaries</a>
                					<a class="nav-link"
                            id="merchants-tab" 
                            data-toggle="pill" 
                            href="#merchants" 
                            role="tab" 
                            aria-controls="merchants" 
                            aria-expanded="true"><i class="fa fa-image" aria-hidden="true"></i> merchants</a>
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
                        	<div class="p-3 bg-white mb-3 text-center rounded">
	                            <h1 class="display-1 text-secondary-dark">Welcome</h1>
	                            <div class="border-bottom-primary w-25 mb-3 mx-auto"></div>
	                            <p class="text-muted">What will you like to do?</p>
	                            <div class="border-bottom-primary w-25 mb-3 mx-auto"></div>
                        	</div>
                        	<div class="p-3 mt-3 text-center bg-white">
                        		<p class="m-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
                        	</div>
                            <!-- <div class="row">
                                <div class="col-md-4">
                                    <div class="card border-light">
                                        <div class="card-body">
                                            <h3 class="display-4">Pay <br>Bills</h3>
                                            <div class="text-right">
                                                <button class="btn btn-primary"><i class="fa fa-send" aria-hidden="true"></i> Go</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="card border-light">
                                        <div class="card-body">
                                            <h3 class="display-4">Transfer <br>Funds</h3>
                                            <div class="text-right">
                                                <button class="btn btn-primary"><i class="fa fa-send" aria-hidden="true"></i> Go</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="card border-light">
                                        <div class="card-body">
                                            <h3 class="display-4">Airtime <br>Topup</h3>
                                            <div class="text-right">
                                                <button class="btn btn-primary"><i class="fa fa-send" aria-hidden="true"></i> Go</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div> -->
                        </div>
                        <div 
                          class="tab-pane fade bg-white rounded p-3" 
                          id="airtime" 
                          role="tabpanel" 
                          aria-labelledby="airtime-tab">
                          <h2>Airtime Topup</h2>
                          <jsp:include page="ins/airtime.jsp" />
                        </div>
                      <div 
                      class="tab-pane fade bg-white rounded p-3" 
                      id="bills" 
                      role="tabpanel" 
                      aria-labelledby="bills-tab"><h2>Bills Payment</h2></div>
                      <div 
                      class="tab-pane fade bg-white rounded p-3" 
                      id="instant" 
                      role="tabpanel" 
                      aria-labelledby="instant-tab"><h2>Instant Funds Transfer</h2></div>
                      <div 
                      class="tab-pane fade bg-white rounded p-3" 
                      id="funds" 
                      role="tabpanel" 
                      aria-labelledby="funds-tab"><h2>Fund Naira Wallet</h2></div>
                      <div 
                      class="tab-pane fade bg-white rounded p-3" 
                      id="mailp" 
                      role="tabpanel" 
                      aria-labelledby="mailp-tab"><h2>Pay Using Mail (Mail Pay)</h2></div>
                      <div 
                      class="tab-pane fade bg-white rounded p-3" 
                      id="bulkp" 
                      role="tabpanel" 
                      aria-labelledby="bulkp-tab"><h2>Bulk Payment Workflow</h2></div>
                      <div 
                      class="tab-pane fade bg-white rounded p-3" 
                      id="singlev" 
                      role="tabpanel" 
                      aria-labelledby="singlev-tab"><h2>Single View (of Accounts)</h2></div>
                      <div 
                      class="tab-pane fade bg-white rounded p-3" 
                      id="payroll" 
                      role="tabpanel" 
                      aria-labelledby="payroll-tab"><h2>Payroll package</h2></div>
                      <div 
                      class="tab-pane fade bg-white rounded p-3" 
                      id="switchpay" 
                      role="tabpanel" 
                      aria-labelledby="switchpay-tab"><h2>SwitchPay Settlement Portal</h2></div>
                      <div 
                      class="tab-pane fade bg-white rounded p-3" 
                      id="switchpaydrs" 
                      role="tabpanel" 
                      aria-labelledby="switchpaydrs-tab"><h2>SwitchPay DRS</h2></div>
                      <div 
                      class="tab-pane fade bg-white rounded p-3" 
                      id="postpaidserv" 
                      role="tabpanel" 
                      aria-labelledby="postpaidserv-tab"><h2>Postpaid Services</h2></div>
                      <div 
                      class="tab-pane fade bg-white rounded p-3" 
                      id="stdloan" 
                      role="tabpanel" 
                      aria-labelledby="stdloan-tab"><h2>Student Loans</h2></div>
                        <div 
                      class="tab-pane fade bg-white rounded p-3" 
                      id="recurringpay" 
                      role="tabpanel" 
                      aria-labelledby="recurringpay-tab"><h2>Recurring Payments</h2></div>
                    </div>
                </div>
            </div>
        </div>
    </section>
<jsp:include page="ins/footer.jsp" />