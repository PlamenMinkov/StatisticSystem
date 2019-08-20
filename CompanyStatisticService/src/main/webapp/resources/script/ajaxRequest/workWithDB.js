
function getSymbolStatistic(token, symbol, command) {
	
	if (command == "add" && $("#" + symbol.toLowerCase()).length) {					 
		$.notify("Row for this symbol aready exist!", {align:"center", verticalAlign:"top", type: "warning"});
		return;
	}
	
	var dataJSON = {
			symbol: symbol,
            token: token
        };
	
	$.ajax({
		type : "POST",					
		url : "request/getSymbolStatistic",
		dataType:'json',
		data: JSON.stringify(dataJSON),
        contentType: 'application/json',
        mimeType: 'application/json',
		success : function(result) 
		{
			updateCompanyDataInDB(result);
			
			if(command == "add")
			{
				var row = "<tr class=\"companyRow\" id=\"" + result["symbol"].toLowerCase() + "\">" 
				+ "<td>" + result["symbol"] + "</td>"
				+ "<td id=\"companyName_" + result["symbol"] + "\">" + result["companyName"] + "</td>"
				+ "<td id=\"calculationPrice_" + result["symbol"] + "\">" + result["calculationPrice"] + "</td>"
				+ "<td id=\"latestPrice_" + result["symbol"] + "\">" + result["latestPrice"] + "</td>"
				+ "<td id=\"iexRealtimePrice_" + result["symbol"] + "\">" + result["iexRealtimePrice"] + "</td>"
				+ "<td id=\"delayedPrice_" + result["symbol"] + "\">" + result["delayedPrice"] + "</td>"
				+ "<td id=\"extendedPrice_" + result["symbol"] + "\">" + result["extendedPrice"] + "</td>"
				+ "<td id=\"iexBidPrice_" + result["symbol"] + "\">" + result["iexBidPrice"] + "</td>"
				+ "<td id=\"iexAskPrice_" + result["symbol"] + "\">" + result["iexAskPrice"] + "</td>"
				+ "<td>https://storage.googleapis.com/iex/api/logos/" + result["symbol"] + ".png</td></tr>";
				
				$("#statisticTable tbody").append(row); 
			}
			else 
			{
				$("#calculationPrice_" + result["symbol"]).html(result["calculationPrice"]);
				$("#latestPrice_" + result["symbol"]).html(result["latestPrice"]);
				$("#iexRealtimePrice_" + result["symbol"]).html(result["iexRealtimePrice"]);
				$("#delayedPrice_" + result["symbol"]).html(result["delayedPrice"]);
				$("#extendedPrice_" + result["symbol"]).html(result["extendedPrice"]);
				$("#iexBidPrice_" + result["symbol"]).html(result["iexBidPrice"]);
				$("#iexAskPrice_" + result["symbol"]).html(result["iexAskPrice"]);
			}
		},
		error : function(e) 
		{
			$.notify("There is no result for this symbol!", {align:"center", verticalAlign:"top", type: "warning"});
		}
	});
}

function updateCompanyDataInDB(company) {	
	$.ajax({
		type : "POST",					
		url : "request/updateCompanyDataInDB",
		dataType:'json',
		data: JSON.stringify(company),
        contentType: 'application/json',
        mimeType: 'application/json',
		success : function(result) 
		{
			console.log("Successful updating data for company: " + result);
		},
		error : function(e) 
		{
			console.log("Error in updating data for company: " + company["companyName"]);
		}
	});
}