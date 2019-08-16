package com.statistic.company.controller;

import java.io.IOException;

import org.json.JSONException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

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
		Company company = statisticService.readJsonFromUrl("https://cloud.iexapis.com/stable/tops?token=pk_30d71c84dfb14b7bac65e95725c4b1ef&symbols=aapl");
		
		return company;
	}
}