<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<jsp:include page="tags/header.jsp" >
  <jsp:param name="title" value="Price History"/>
</jsp:include>

  <!-- team -->
	<div class="team" id="team">
		<div class="container">
			<div class="agileits-team-grids">
				<div class="agileits-title"> 
					<h3>${company.getCompanyName()}</h3>
				</div>
				
				<div id="latestPrices" style="height: 370px; max-width: 920px; margin: 0px auto; margin-top:40px;"></div>
				
				<div id="iexAskPrices" style="height: 370px; max-width: 920px; margin: 0px auto; margin-top:30px;"></div>
				
				<div id="iexBidPrices" style="height: 370px; max-width: 920px; margin: 0px auto; margin-top:30px;"></div>
				
				<div id="iexRealtimePrices" style="height: 370px; max-width: 920px; margin: 0px auto; margin-top:30px;"></div>
				
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
window.onload = function () {
	var latestPriceCounter = 0;
	var latestPrices = {
		animationEnabled: true,
		title:{
			text: "Latest Prices History"
		},
		axisX:{
			valueFormatString: ".",
			crosshair: {
				enabled: true,
				snapToDataPoint: true
			}
		},
		axisY: {
			title: "Latest Price",
			includeZero: false,
			valueFormatString: "$##0.00",
			crosshair: {
				enabled: true,
				snapToDataPoint: true,
				labelFormatter: function(e) {
					return "$" + CanvasJS.formatNumber(e.value, "##0.00");
				}
			}
		},
		data: [{
			type: "area",
			xValueFormatString: "N",
			yValueFormatString: "$##0.00",
			dataPoints: [
				<c:forEach var="latestPrice" items="${company.getLatestPriceList()}">
					{ x: latestPriceCounter++, y: ${latestPrice.getValue()} },
	        	</c:forEach>
				
			]
		}]
	};
	
	var iexAskPricesCounter = 0;
	var iexAskPrices = {
			animationEnabled: true,
			title:{
				text: "Iex Ask Prices History"
			},
			axisX:{
				valueFormatString: ".",
				crosshair: {
					enabled: true,
					snapToDataPoint: true
				}
			},
			axisY: {
				title: "Iex Ask Price",
				includeZero: false,
				valueFormatString: "$##0.00",
				crosshair: {
					enabled: true,
					snapToDataPoint: true,
					labelFormatter: function(e) {
						return "$" + CanvasJS.formatNumber(e.value, "##0.00");
					}
				}
			},
			data: [{
				type: "area",
				xValueFormatString: "N",
				yValueFormatString: "$##0.00",
				dataPoints: [
					<c:forEach var="iexAskPrice" items="${company.getIexAskPriceList()}">
						{ x: iexAskPricesCounter++, y: ${iexAskPrice.getValue()} },
		        	</c:forEach>
					
				]
			}]
		};
	
	var iexBidPricesCounter = 0;
	var iexBidPrices = {
			animationEnabled: true,
			title:{
				text: "Iex Bid History"
			},
			axisX:{
				valueFormatString: ".",
				crosshair: {
					enabled: true,
					snapToDataPoint: true
				}
			},
			axisY: {
				title: "Iex Bid Price",
				includeZero: false,
				valueFormatString: "$##0.00",
				crosshair: {
					enabled: true,
					snapToDataPoint: true,
					labelFormatter: function(e) {
						return "$" + CanvasJS.formatNumber(e.value, "##0.00");
					}
				}
			},
			data: [{
				type: "area",
				xValueFormatString: "N",
				yValueFormatString: "$##0.00",
				dataPoints: [
					<c:forEach var="iexBidPrice" items="${company.getIexBidPriceList()}">
						{ x: iexBidPricesCounter++, y: ${iexBidPrice.getValue()} },
		        	</c:forEach>
					
				]
			}]
		};
	
	var iexRealtimePriceCounter = 0;
	var iexRealtimePrices = {
			animationEnabled: true,
			title:{
				text: "Iex Realtime Prices History"
			},
			axisX:{
				valueFormatString: ".",
				crosshair: {
					enabled: true,
					snapToDataPoint: true
				}
			},
			axisY: {
				title: "Iex Realtime Prices",
				includeZero: false,
				valueFormatString: "$##0.00",
				crosshair: {
					enabled: true,
					snapToDataPoint: true,
					labelFormatter: function(e) {
						return "$" + CanvasJS.formatNumber(e.value, "##0.00");
					}
				}
			},
			data: [{
				type: "area",
				xValueFormatString: "N",
				yValueFormatString: "$##0.00",
				dataPoints: [
					<c:forEach var="iexRealtimePrice" items="${company.getIexRealtimePriceList()}">
						{ x: iexRealtimePriceCounter++, y: ${iexRealtimePrice.getValue()} },
		        	</c:forEach>
					
				]
			}]
		};

	$("#latestPrices").CanvasJSChart(latestPrices);
	$("#iexAskPrices").CanvasJSChart(iexAskPrices);
	$("#iexBidPrices").CanvasJSChart(iexBidPrices);
	$("#iexRealtimePrices").CanvasJSChart(iexRealtimePrices);

}
</script>
<script src="https://canvasjs.com/assets/script/jquery-1.11.1.min.js"></script>
<script src="https://canvasjs.com/assets/script/jquery.canvasjs.min.js"></script>
<jsp:include page="tags/footer.jsp" flush="true"></jsp:include>