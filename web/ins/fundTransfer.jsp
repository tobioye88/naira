<%-- 
    Document   : fundTransfer.jsp
    Created on : Oct 24, 2017, 10:48:06 AM
    Author     : Super Soft Tech
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="ins/header.jsp" />

<section class="py-5"></section>
<section>
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-lg-8 d-flex align-items-center">
                <h2 class="display-1 w-100 text-secondary"></h2>
            </div>
            <div class="col-md-6 col-lg-4">
                <div class="">
                    <div class="bg-white text-center p-3 mb-2">
                        <h2 class="text-secondary m-0">Transfer Funds</h2>
                    </div>
                    <div class="bg-white p-3">
                        <form action="">
                            <div class="form-group">
                                <label>What Bank?</label>
                                <select class="form-control">
                                    <option>Select Bank</option>
                                    <option>GTB Bank</option>
                                    <option>Access Bank</option>
                                    <option>Diamond Bank</option>
                                    <option>Zenith Bank</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>To Whom?</label>
                                <input class="form-control" type="text" name="accountNumber">
                                <small class="text-muted">10 digit Account Number</small>
                            </div>
                            <div class="form-group">
                                <label>How Much?</label>
                                <input class="form-control" type="number" name="amount">
                                <small class="text-muted">e.g 10,000.00, 10000.00, 10000</small>
                            </div>
                            <div class="form-group">
                                <label>Who gets the receipt?</label>
                                <input class="form-control" type="tel" name="receipt">
                            </div>
                            <div class="form-group">
                                <button type="submit" class="btn btn-primary btn-block">Next</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<jsp:include page="ins/footer.jsp" />