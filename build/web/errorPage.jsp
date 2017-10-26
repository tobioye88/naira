<%@ page isErrorPage="true" %> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="ins/header.jsp" />

<section>
	<div class="">
		<div class="text-center d-flex align-items-center" style="height: 100vh;">
			<div class="w-100">
				<h2 class="display-1 text-muted">Oops...</h2>
				<p class="lead">something went wrong.</p>
				<small class="text-muted">The exception is: <%= exception %></small>
			</div>
		</div>
	</div>
</section>
<jsp:include page="ins/footer.jsp" />