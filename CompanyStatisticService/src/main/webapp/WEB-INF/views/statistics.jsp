<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<jsp:include page="tags/header.jsp" flush="true"></jsp:include>
	
	<script type="text/javascript">
		document.getElementsByTagName('title')[0].innerHTML = 'Профили';
		
		var javaScriptRelease = Date.parse('04 Dec 1995 00:12:00 GMT');

		console.log(javaScriptRelease);
	</script>
	
  <!-- team -->
	<div class="team" id="team">
		<div class="container">
			<div class="agileits-team-grids">
				<c:choose>
					<c:when test="${symbol == null}">
						<div class="agileits-title"> 
							<h3>Companies</h3>
						</div>
					
						<form:form class="searchForm" style="margin-top:20px;">
							Start date and time: <input type="datetime-local" id="nextTime">
							End date and time: <input type="datetime-local" id="beforeTime"><br/>
							
							<input type="button" id="filterByLastUpdated" value="Filter By LastUpdated">
							<input type="button" id="filterByLastSateTime" value="Filter By LastSaleTime">		
							<input type="button" id="removeDateFilter" value="Remmove Filter"><br/>
							
							<input type="text" id="symbolFilterValue"  style="margin-top:20px;"><br/>					
							<input type="button" id="filterBySymbol" value="Filter By Name (symbol)">
							<input type="button" id="removeNameFilter" value="Remmove Filter"><br/>
						</form:form>
					
						<table class="table">
							<thead class="thead-dark">
								<tr>
									<th scope="col">SYMBOL</th>
									<th scope="col">SECTOR</th>
									<th scope="col">BIDPRICE</th>
									<th scope="col">ASKPRICE</th>
									<th scope="col">LASTSALESPRICE</th>
									<th scope="col">LASTUPDATED</th>
									<th scope="col">LASTSALETIME</th>
									<th scope="col">VOLUME</th>
									<th scope="col">LOGO</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="company" items="${companies.getCompanies()}">
							         <tr>
										<th scope="row">${company.getSymbol()}</th>
										<td>${company.getSector()}</td>
										<td>${company.getBidPrice()}</td>
										<td>${company.getAskPrice()}</td>
										<td>${company.getLastSalePrice()}</td>
										<td class="lastUpdated">${company.getLastUpdated()}</td>
										<td class="lastSaleTime">${company.getLastSaleTime()}</td>
										<td>
											<a href="${contextPath}/statistic/${token}/${company.getSymbol()}">
												<button>View</button>
											</a>
										</td>
										<td>
											<img src="https://storage.googleapis.com/iex/api/logos/${company.getSymbol()}.png" 
												style="max-width: 30px;">
										</td>
									</tr>
					         	</c:forEach>
							</tbody>
						</table>
					</c:when>
					<c:otherwise>
						<p><span style="margin:0px auto;">Company: ${companies.getCompanies().get(0).getSymbol()}</span></p>
						<table class="table">
							<thead class="thead-dark">
								<tr>
									<th scope="col">SYMBOL</th>
									<th scope="col">SECTOR</th>
									<th scope="col">BIDPRICE</th>
									<th scope="col">ASKPRICE</th>
									<th scope="col">LASTSALESPRICE</th>
									<th scope="col">LASTUPDATED</th>
									<th scope="col">LASTSALETIME</th>
									<th scope="col">VOLUME</th>
									<th scope="col">LOGO</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="company" items="${companies.getCompanies()}">
							         <tr>
										<th scope="row">${company.getSymbol()}</th>
										<td>${company.getSector()}</td>
										<td>${company.getBidPrice()}</td>
										<td>${company.getAskPrice()}</td>
										<td>${company.getLastSalePrice()}</td>
										<td>${company.getLastUpdated()}</td>
										<td>${company.getLastSaleTime()}</td>
										<td>${company.getVolume()}</td>
										<td>
											<img src="https://storage.googleapis.com/iex/api/logos/${company.getSymbol()}.png" 
												style="max-width: 30px;">
										</td>
									</tr>
					         	</c:forEach>
							</tbody>
						</table>
					</c:otherwise>
				</c:choose>
				
				<c:if test="${not empty ddd}">
			        
				</c:if>
				
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
	    
		$("#filterByLastUpdated").on('click', function() {
			var nextTime = $("#nextTime").val();
			var beforeTime = $("#beforeTime").val();
			
			if(nextTime != "")
			{
				var timestamp = 1565884713713;//Date.parse(nextTime);
				
				$(".lastUpdated").each(function( index ) {
					console.log(parseInt($(this).html()) < parseInt(nextTime));
					  if(parseInt($(this).html()) < parseInt(nextTime) ) {
						  $(this).closest("tr").hide();
					  }
				});
			}
			if(beforeTime != "")
			{
				var timestamp = Date.parse(beforeTime);
			}
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