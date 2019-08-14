package com.statistic.company.service;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.List;

import org.json.JSONException;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.statistic.company.entity.Companies;
import com.statistic.company.entity.Company;

@Service
public class CompanyStatisticServiceImpl implements ICompanyStatisticService {

	@Override
	public String readAll(Reader rd) throws IOException {
		StringBuilder sb = new StringBuilder();
		int cp;
		while ((cp = rd.read()) != -1) {
			sb.append((char) cp);
		}
		return sb.toString();
	}

	@Override
	public Companies readJsonFromUrl(String url) throws IOException, JSONException {
		InputStream inputStream = null;
		Companies companies = new Companies();
		
		try {
			inputStream = new URL(url).openStream();
			BufferedReader rd = new BufferedReader(new InputStreamReader(inputStream, Charset.forName("UTF-8")));
			String jsonText = readAll(rd);
			ObjectMapper mapper = new ObjectMapper();
			
			List<Company> participantJsonList = mapper.readValue(jsonText, new TypeReference<List<Company>>(){});
			
			for (int i = 0; i < participantJsonList.size(); i++) {
				companies.setCompany(participantJsonList.get(i));
			}
			
			return companies;
		} catch(IOException ex) {
			throw new IOException("Problem on reading JSON from URL: " + url + " \n" + ex.getMessage());
		} finally {
			if(inputStream != null)
			{
				inputStream.close();
			}			
		}
	}

}
