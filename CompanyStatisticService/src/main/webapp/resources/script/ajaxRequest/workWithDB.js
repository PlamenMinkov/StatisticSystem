
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
			if(command == "add")
			{
				var row = "<tr class=\"companyRow\" id=\"" + result["symbol"].toLowerCase() + "\">" 
				+ "<td>" + result["symbol"] + "</td>"
				+ "<td id=\"askPrice_" + result["symbol"] + "\">" + result["askPrice"] + "</td>"
				+ "<td id=\"bidPrice_" + result["symbol"] + "\">" + result["bidPrice"] + "</td>"
				+ "<td id=\"lastSalePrice_" + result["symbol"] + "\">" + result["lastSalePrice"] + "</td>"
				+ "<td>https://storage.googleapis.com/iex/api/logos/" + result["symbol"] + ".png</td></tr>";
				
				$("#statisticTable tbody").append(row); 
			}
			else 
			{
				$("#bidPrice_" + result["symbol"]).html(result["bidPrice"]);
				$("#askPrice_" + result["symbol"]).html(result["askPrice"]);
				$("#lastSalePrice_" + result["symbol"]).html(result["lastSalePrice"]);
			}
		},
		error : function(e) 
		{
			$.notify("There is no result for this symbol!", {align:"center", verticalAlign:"top", type: "warning"});
		}
	});
}