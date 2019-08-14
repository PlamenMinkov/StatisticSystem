<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<jsp:include page="../tags/head.jsp" flush="true">
  <jsp:param name="title" value="За Нас"/>
</jsp:include>
<jsp:include page="../tags/header1.jsp" flush="true"></jsp:include>

	<!-- content page -->
	<section class="bgwhite p-t-66 p-b-38">
		<div class="container">
			<div class="row">
				<div class="col-md-8 p-b-30">
					<h3 class="m-text26 p-t-15 p-b-16">
						${error}
					</h3>
				</div>
			</div>
		</div>
	</section>

	<jsp:include page="../tags/footer1.jsp" flush="true"></jsp:include>
	<script>
		$(".aboutus").each(function() {
			  $(this).addClass("sale-noti");;
		});  		
	</script>

</body>
</html>
