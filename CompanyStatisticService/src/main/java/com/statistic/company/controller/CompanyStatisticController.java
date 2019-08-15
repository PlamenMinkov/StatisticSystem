package com.statistic.company.controller;

import java.io.IOException;
import java.security.NoSuchAlgorithmException;

import org.json.JSONException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.statistic.company.entity.Companies;
import com.statistic.company.service.ICompanyStatisticService;

@Controller
public class CompanyStatisticController {
	
	@Autowired
	private ICompanyStatisticService statisticService;

	@RequestMapping(value = "/{token}", method = RequestMethod.GET)
	public String statisticForAll(@PathVariable String token, Model model) 
					throws NoSuchAlgorithmException, JSONException, IOException {
		Companies companies = statisticService.readJsonFromUrl("https://cloud.iexapis.com/stable/tops?token=" + token);
		
		model.addAttribute("companies", companies);
		model.addAttribute("token", token);
		
		return "statistics";
	}
	
	@RequestMapping(value = "/{token}/{symbol}", method = RequestMethod.GET)
	public String statisticSelectedCompany(@PathVariable String token, @PathVariable String symbol, Model model) 
					throws NoSuchAlgorithmException, JSONException, IOException {
		Companies companies = statisticService.readJsonFromUrl("https://cloud.iexapis.com/stable/tops?token=" 
																+ token + "&symbols=" + symbol);
		
		model.addAttribute("companies", companies);
		model.addAttribute("symbol", symbol);
		model.addAttribute("token", token);
		
		return "statistics";
	}
}
