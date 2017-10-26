<%-- 
    Document   : about.jsp
    Created on : Oct 24, 2017, 10:48:06 AM
    Author     : Super Soft Tech
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<jsp:include page="ins/header.jsp" />

<section class="py-5"></section>
<section>
	<div class="container">
		<div class="row">
			<div class="col-md-4">
				<div class="sticky-top d-flex align-items-center" style="top:72px; height:100vh;">
					<div class="">
						<h2 class="display-4 font2">FAQs<br><span class="text-secondary">naira.com</span></h2>
						<div class="border border-primary w-25 mb-3"></div>
						<p class="lead">Frequently asked question</p>
					</div>
				</div>
			</div>
			<div class="col-md-8">
				<div class="row">
					<c:forEach var="j" begin="1" end="20">
					<div class="col-md-4 mb-3">
						<div class="card">
							<div class="card-body">
								<h4 class="card-title font2">Special title treatment?</h4>
								<p class="card-text text-secondary-dark">With supporting text below as a natural lead-in to additional content.</p>
							</div>
						</div>
					</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
</section>
<jsp:include page="ins/footer.jsp" />