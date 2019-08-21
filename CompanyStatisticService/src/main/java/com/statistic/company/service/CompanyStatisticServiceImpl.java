package com.statistic.company.service;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.net.URL;
import java.nio.charset.Charset;
import java.nio.file.Files;
import java.nio.file.Paths;

import org.json.JSONException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.statistic.company.entity.Companies;
import com.statistic.company.entity.Company;
import com.statistic.company.repository.CompanyRepository;

@Service
public class CompanyStatisticServiceImpl implements ICompanyStatisticService {

	@Autowired
	private CompanyRepository companyRepository;
	
	@Autowired
	private IPricesService priceService;
	
	
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
	public Company readJsonFromUrl(String url) throws IOException, JSONException {
		InputStream inputStream = null;
		
		try {
			inputStream = new URL(url).openStream();
			BufferedReader rd = new BufferedReader(new InputStreamReader(inputStream, Charset.forName("UTF-8")));
			String jsonText = readAll(rd);
			ObjectMapper mapper = new ObjectMapper();
			
			Company participantJsonList = mapper.readValue(jsonText, new TypeReference<Company>(){});
			
			return participantJsonList;
		} catch(IOException ex) {
			throw new IOException("Problem on reading JSON from URL: " + url + " \n" + ex.getMessage());
		} finally {
			if(inputStream != null)
			{
				inputStream.close();
			}			
		}
	}

	@Override
	public void saveDataInDB(Company company) {
		String symbol = company.getSymbol();
		Company thisCompany = companyRepository.findBySymbol(symbol);
		companyRepository.save(company);
		
		if(thisCompany != null) {
			if(company.getDelayedPrice() != null && !company.getDelayedPrice().equals(thisCompany.getDelayedPrice())) {
				priceService.addDeayedPrice(symbol, company.getDelayedPrice());
			}
			
			if(company.getExtendedPrice() != null &&!company.getExtendedPrice().equals(thisCompany.getExtendedPrice())) {
				priceService.addExtendedPrice(symbol, company.getExtendedPrice());
			}
			
			if(company.getIexAskPrice() != null && !company.getIexAskPrice().equals(thisCompany.getIexAskPrice())) {
				priceService.addIexAskPrice(symbol, company.getIexAskPrice());
			}
			
			if(company.getIexBidPrice() != null &&!company.getIexBidPrice().equals(thisCompany.getIexBidPrice())) {
				priceService.addIexBidPrice(symbol, company.getIexBidPrice());
			}
			
			if(company.getIexRealtimePrice() != null && !company.getIexRealtimePrice().equals(thisCompany.getIexRealtimePrice())) {
				priceService.addIexRealtimePrice(symbol, company.getIexRealtimePrice());
			}
			
			if(company.getLatestPrice() != null && !company.getLatestPrice().equals(thisCompany.getLatestPrice())) {
				priceService.addLatestPrice(symbol, company.getLatestPrice());
			}
		}
		else {
			priceService.addDeayedPrice(symbol, company.getDelayedPrice());
			priceService.addExtendedPrice(symbol, company.getExtendedPrice());
			priceService.addIexAskPrice(symbol, company.getIexAskPrice());
			priceService.addIexBidPrice(symbol, company.getIexBidPrice());
			priceService.addIexRealtimePrice(symbol, company.getIexRealtimePrice());
			priceService.addLatestPrice(symbol, company.getLatestPrice());
		}		
	}

	@Override
	public Companies exportCompaniesToJSON(String[] symbolsArr) throws IOException {
		Companies selectedCompanies = new Companies();
		
		for (int i = 0; i < symbolsArr.length; i++) {
			selectedCompanies.setCompany(companyRepository.findBySymbol(symbolsArr[i]));
		}
		
		Files.write(Paths.get("statistic.json"), selectedCompanies.toString().getBytes());
		
		return selectedCompanies;
	}

}
