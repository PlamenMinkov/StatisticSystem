<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<jsp:include page="tags/header.jsp" >
  <jsp:param name="title" value="Company Statistic"/>
</jsp:include>

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
							Add Company: <input type="text" id="companyName"  style="margin-top:20px;" placeholder="symbol of company">				
							<input type="button" id="addCompany" class="btn btn-success" value="Add">
							<input type="button" id="removeCompany" class="btn btn-danger" value="Remove" style="margin-right:2em;">
							
							Time for reload: <input type="text" id="nextTime"  placeholder="in seconds">							
							<input type="button" id="setTimeInterval" class="btn btn-success" value="Set">	
							<input type="button" id="removeTimeInterval" class="btn btn-danger" value="Remove">
						</form:form>
					
						<table class="table" id="statisticTable">
							<thead class="thead-dark">
								<tr>
									<th scope="col">Symbol</th>
									<th scope="col">Name</th>
									<th scope="col">CalculationPrice</th>
									<th scope="col">LatestPrice</th>
									<th scope="col">IexRealtimePrice</th>
									<th scope="col">DelayedPrice</th>
									<th scope="col">ExtendedPrice</th>
									<th scope="col">IexBidPrice</th>
									<th scope="col">IexAskPrice</th>
									<th scope="col">Logo</th>
									<th scope="col">History</th>
								</tr>
							</thead>
							<tbody>
							</tbody>
						</table>
						
						<section>
							<input type="button" id="exportData" class="btn btn-success" value="Export data in statistic.json">
						</section>
					</c:when>
					<c:otherwise>
						<div class="agileits-title"> 
							<h4>${exception}</h4>
						</div>
					</c:otherwise>
				</c:choose>
				
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
	
	$("#exportData").click(function(event) {
		var cmpaniesSymbols = "";
		
		$(".companyRow").each(function() {
			cmpaniesSymbols = cmpaniesSymbols + $(this).attr("id") + ",";
		});
		
		createStatisticJson(cmpaniesSymbols);
	})
	
</script>
<jsp:include page="tags/footer.jsp" flush="true"></jsp:include>