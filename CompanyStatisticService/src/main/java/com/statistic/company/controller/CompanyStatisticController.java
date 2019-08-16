package com.statistic.company.controller;

import java.io.IOException;

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
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index(@PathVariable String token, Model model) {
		
		return "index";
	}

	@RequestMapping(value = "/{token}", method = RequestMethod.GET)
	public String statisticForAll(@PathVariable String token, Model model) {
		Companies companies = null;
		
		try {
			statisticService.readJsonFromUrl("https://cloud.iexapis.com/stable/tops?token=" + token +"&symbols=aapl");
		} catch (JSONException | IOException e) {
			model.addAttribute("exception", "Token: " + token + " is invalide!");
		}
		
		model.addAttribute("companies", null);
		model.addAttribute("token", token);
		
		return "statistics";
	}
}
