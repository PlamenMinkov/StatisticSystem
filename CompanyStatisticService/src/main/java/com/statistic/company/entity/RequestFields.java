package com.statistic.company.entity;

public class RequestFields {

	private String symbol;
	private String token;
	
	public RequestFields() {}
	
	public RequestFields(String symbol, String token) {
		this.symbol = symbol;
		this.token = token;
	}

	public String getSymbol() {
		return symbol;
	}

	public void setSymbol(String symbol) {
		this.symbol = symbol;
	}

	public String getToken() {
		return token;
	}

	public void setToken(String token) {
		this.token = token;
	}
}
