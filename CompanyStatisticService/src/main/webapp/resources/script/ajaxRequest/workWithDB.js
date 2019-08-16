
function getSymbolStatistic(token, symbol) {
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
		success : function(result) {
			var row = "<tr><td>" + result["symbol"] + "</td>" +
					+ "<td>" + parseFloat(result["askPrice"]) + "</td>"
					+ "<td>" + result["bidPrice"] + "</td>"
					+ "<td>" + result["lastSalePrice"] + "</td>"
					+ "<td>https://storage.googleapis.com/iex/api/logos/" + result["symbol"] + ".png</td></tr>";
			console.log(result);
			console.log(row);
			$("#statisticTable tbody").append(row); 
		},
		error : function(e) {
			console.log("ERROR: ", e);
		}
	});
}