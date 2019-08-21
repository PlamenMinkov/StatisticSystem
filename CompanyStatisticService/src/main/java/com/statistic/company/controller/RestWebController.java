package com.statistic.company.controller;

import java.io.IOException;

import org.json.JSONException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.statistic.company.entity.Companies;
import com.statistic.company.entity.Company;
import com.statistic.company.entity.RequestFields;
import com.statistic.company.service.ICompanyStatisticService;

@RestController
@RequestMapping("/request")
public class RestWebController {

	@Autowired
	private ICompanyStatisticService statisticService;

	@RequestMapping(value="/getSymbolStatistic", method=RequestMethod.POST)
	public Company getResource(@RequestBody RequestFields requestFields) throws JSONException, IOException {
		
		String request = "https://cloud.iexapis.com/stable/stock/" + requestFields.getSymbol() + "/quote?token=" + requestFields.getToken() 
							+ "&filter=symbol,companyName,calculationPrice,latestPrice,"
							+ "iexRealtimePrice,delayedPrice,extendedPrice,iexBidPrice,iexAskPrice";
		
		Company company = statisticService.readJsonFromUrl(request);
		
		return company;
	}
	
	@RequestMapping(value="/updateCompanyDataInDB", method=RequestMethod.POST)
	public Company updateCompanyDataInDB(@RequestBody Company company) throws JSONException, IOException {
		
		statisticService.saveDataInDB(company);
		
		return company;
	}
	
	@RequestMapping(value="/createStatisticJson", method=RequestMethod.POST)
	public Companies createStatisticJson(@RequestBody RequestFields requestFields) throws JSONException, IOException {
		String symbols = requestFields.getSymbol();
		symbols = symbols.substring(0, symbols.length() - 1);
		String[] symbolsArr = symbols.split(",");
				
		return statisticService.exportCompaniesToJSON(symbolsArr);
	}
}