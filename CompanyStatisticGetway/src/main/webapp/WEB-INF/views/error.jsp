<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<jsp:include page="tags/header.jsp" flush="true"></jsp:include>
	
	<script type="text/javascript">
		document.getElementsByTagName('title')[0].innerHTML = 'Профили';
	</script>
	
  <!-- team -->
	<div class="team" id="team">
		<div class="container">
			<div class="agileits-title"> 
				<h3>There is error in your request! See validity of token that you  give.</h3> 
				<form:form class="searchForm" method="GET" action="${contextPath}${accountRegister}" modelAttribute="UserSearch">
					<table>
						<tr>
							<td class="search"><input type="text" name="username" style="margin: 0.5em 0 0 0;"><button type=submit id="searchBtn" name="Search"><span class="fa fa-search"></span></button><td>
						</tr>
					</table>		
				</form:form>
			</div>
			<div class="agileits-team-grids">
				
				
				<div class="col-md-3 agileits-team-grid">
					<div class="team-info">
						<img src="images/t1.jpg" alt="">
						<div class="team-caption"> 
							<h4>Peter Parker</h4>
							<p>Fusce laoreet</p>
							<ul>
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="fa fa-rss"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-md-3 agileits-team-grid">
					<div class="team-info">
						<img src="images/t2.jpg" alt="">
						<div class="team-caption"> 
							<h4>Johan Botha</h4>
							<p>Fusce laoreet</p>
							<ul>
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="fa fa-rss"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-md-3 agileits-team-grid">
					<div class="team-info">
						<img src="images/t3.jpg" alt="">
						<div class="team-caption"> 
							<h4>Justo Congue</h4>
							<p>Fusce laoreet</p>
							<ul>
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="fa fa-rss"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-md-3 agileits-team-grid">
					<div class="team-info">
						<img src="images/t4.jpg" alt="">
						<div class="team-caption"> 
							<h4>Steven Wilson</h4>
							<p>Fusce laoreet</p>
							<ul>
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="fa fa-rss"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!-- //team -->
</body>
<script>
	$( document ).ready(function() {
		var token = $("meta[name='_csrf']").attr("content");
	    var header = $("meta[name='_csrf_header']").attr("content");
	    $(document).ajaxSend(function(e, xhr, options) {
	        xhr.setRequestHeader(header, token);
	    });
	    
		$(".addPeriod").on('click', function() {
			var accountId = $(this).attr("id");
			
			operationsWithDB.addPeriod(accountId);
		});
		
		$(".toAdmin").on('click', function() {
			var accountId = $(this).attr("id").split("_")[0];
			
			operationsWithDB.changeAuthority(accountId, 1);
		});
		
		$(".toUser").on('click', function() {
			var accountId = $(this).attr("id").split("_")[0];
			
			operationsWithDB.changeAuthority(accountId, 0);
		});
	});
</script>
	
<jsp:include page="tags/footer.jsp" flush="true"></jsp:include>