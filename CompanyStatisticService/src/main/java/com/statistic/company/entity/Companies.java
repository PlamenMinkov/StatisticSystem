package com.statistic.company.entity;

import java.util.ArrayList;
import java.util.List;

public class Companies {

	private List<Company> companies;
	
	public Companies() {
		companies = new ArrayList<Company>();
	}

	public List<Company> getCompanies() {
		return companies;
	}

	public void setCompanies(List<Company> companies) {
		this.companies = companies;
	}
	
	public void setCompany(Company company) {
		this.companies.add(company);
	}
	
	@Override
    public String toString() 
    { 
		StringBuilder builder = new StringBuilder();
		
		for (int i = 0; i < companies.size(); i++) {
			builder.append(companies.get(i).toString() + "\\n\\n");
		}
		
        return builder.toString(); 
    } 
}
