package com.statistic.company.controller;

import java.io.IOException;

import org.json.JSONException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.statistic.company.entity.Company;
import com.statistic.company.service.ICompanyStatisticService;

@Controller
public class CompanyStatisticController {
	
	@Autowired
	private ICompanyStatisticService statisticService;

	@RequestMapping(value = "/{token}", method = RequestMethod.GET)
	public String statisticForAll(@PathVariable String token, Model model) {
		try {
			String request = "https://cloud.iexapis.com/stable/stock/aapl/quote?token=" + token	+ "&filter=symbol";
			statisticService.readJsonFromUrl(request);
		} catch (JSONException | IOException e) {
			model.addAttribute("exception", "Token: '" + token + "' is invalide!");
		}
		
		model.addAttribute("token", token);
		
		return "statistics";
	}
	
	@RequestMapping(value = "/history/{symbol}/{token}", method = RequestMethod.GET)
	public String priceHistory(@PathVariable String symbol, @PathVariable String token, Model model) {
		Company company = statisticService.findCompanyBySymbol(symbol);
		
		model.addAttribute("company", company);
		model.addAttribute("token", token);
		
		return "priceHistory";
	}
}
