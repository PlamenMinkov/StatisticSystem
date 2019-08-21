window.onload = function () {
	var lastestPriceCounter = 1;
	var lastestPrices = {
		animationEnabled: true,
		title:{
			text: "Lastest Prices History"
		},
		axisX:{
			valueFormatString: "N",
			crosshair: {
				enabled: true,
				snapToDataPoint: true
			}
		},
		axisY: {
			title: "Lastest Price",
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
				<c:forEach var="lastestPrice" items="${company.getLastestPriceList()}">
					{ x: lastestPriceCounter++, y: ${lastestPrice.getValue()} },
	        	</c:forEach>
				
			]
		}]
	};

	$("#lastestPrices").CanvasJSChart(lastestPrices);

}