package com.statistic.company.service;

import java.io.IOException;
import java.io.Reader;

import org.json.JSONException;

import com.statistic.company.entity.Company;

public interface ICompanyStatisticService {
	String readAll(Reader rd) throws IOException;
	
	Company readJsonFromUrl(String url) throws IOException, JSONException;
}
