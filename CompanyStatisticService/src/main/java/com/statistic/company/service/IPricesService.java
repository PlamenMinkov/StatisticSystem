package com.statistic.company.service;

public interface IPricesService {
	void addDeayedPrice(String symbol, Double value);
	
	void addExtendedPrice(String symbol, Double value);
	
	void addIexAskPrice(String symbol, Double value);
	
	void addIexBidPrice(String symbol, Double value);
	
	void addIexRealtimePrice(String symbol, Double value);
	
	void addLatestPrice(String symbol, Double value);
	
	void validateCountOfDeayedPrice();
	
	void validateCountOfExtendedPrice();
	
	void validateCountOfIexAskPrice();
	
	void validateCountOfIexBidPrice();
	
	void validateCountOfIexRealtimePrice();
	
	void validateCountOfLatestPrice();
}
