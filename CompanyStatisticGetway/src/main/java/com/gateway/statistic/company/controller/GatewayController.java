package com.gateway.statistic.company.controller;

import java.security.NoSuchAlgorithmException;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class GatewayController {

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) throws NoSuchAlgorithmException {
		return "home";
	}
	
	@RequestMapping(value = "/redirectToStatistic", method = RequestMethod.POST)
	public String addImageSave(Model model, HttpServletRequest request)
			throws Exception
	{
		String token = request.getParameter("token");

		return "redirect:/statistic/" + token;
	}
}
