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
					
						<form:form class="searchForm" style="margin-top:20px;">
							Time for reload (in seconds): <input type="text" id="nextTime">							
							<input type="button" id="setTimeInterval" value="Set">	
							<input type="button" id="removeDateFilter" value="Remmove Filter"><br/>
							
							Company symbol: <input type="text" id="companyName"  style="margin-top:20px;"><br/>					
							<input type="button" id="addCompany" value="Add">
							<input type="button" id="removeCompany" value="Remmove"><br/>
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
	$(document).ready(
		$("#addCompany").click(function(event) {
			event.preventDefault();
			
			getSymbolStatistic("${token}", $("#companyName").val());
		})
	);
</script>
<jsp:include page="tags/footer.jsp" flush="true"></jsp:include>