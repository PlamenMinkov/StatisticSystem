<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<jsp:include page="tags/header.jsp" flush="true"></jsp:include>

  <!-- team -->
	<div class="team" id="team">
		<div class="container">
			<div class="agileits-team-grids">
				<c:choose>
					<c:when test="${exception == null}">
						<div class="agileits-title"> 
							<h3>Companies</h3>
						</div>
					
						<form:form class="searchForm" style="margin:20px 0px 3em 0px;">
							Time for reload: <input type="text" id="nextTime"  placeholder="in seconds">							
							<input type="button" id="setTimeInterval" class="btn btn-success" value="Set">	
							<input type="button" id="removeTimeInterval" class="btn btn-danger" value="Remmove" style="margin-right:2em;">
							
							Add Company: <input type="text" id="companyName"  style="margin-top:20px;" placeholder="symbol of company">				
							<input type="button" id="addCompany" class="btn btn-success" value="Add">
							<input type="button" id="removeCompany" class="btn btn-danger" value="Remmove"><br/>
						</form:form>
					
						<table class="table" id="statisticTable">
							<thead class="thead-dark">
								<tr>
									<th scope="col">SYMBOL</th>
									<th scope="col">BIDPRICE</th>
									<th scope="col">ASKPRICE</th>
									<th scope="col">LASTSALESPRICE</th>
									<th scope="col">LOGO</th>
								</tr>
							</thead>
							<tbody>
							</tbody>
						</table>
					</c:when>
					<c:otherwise>
						<div class="agileits-title"> 
							<h4>${exception}</h4>
						</div>
					</c:otherwise>
				</c:choose>
				
				<c:if test="${not empty ddd}">
			        
				</c:if>
				
				<div class="col-md-3 agileits-team-grid">
					<div class="team-info">
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
<script type="text/javascript">
	var count = 0,
	timer = $.timer(function() {
		$(".companyRow").each(function() {
			getSymbolStatistic("${token}", $(this).attr("id"), "update");
		});
	});

	$("#addCompany").click(function(event) {
		event.preventDefault();
		
		getSymbolStatistic("${token}", $("#companyName").val(), "add");
		$("#companyName").val("");
	})
	
	$("#removeCompany").click(function(event) {
		event.preventDefault();
		
		$("#" + $("#companyName").val()).remove();
		$("#companyName").val("");
	})
	
	$("#setTimeInterval").click(function(event) {
		event.preventDefault();
		
		timer.set({ time : $("#nextTime").val() + "000", autostart : true });
		$("#nextTime").val("");
	})
	
	$("#removeTimeInterval").click(function(event) {
		event.preventDefault();
		$("#nextTime").val("");
		timer.stop();
	})
	
</script>
<jsp:include page="tags/footer.jsp" flush="true"></jsp:include>