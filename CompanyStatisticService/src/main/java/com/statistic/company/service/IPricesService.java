package com.statistic.company.service;

public interface IPricesService {
	void addDeayedPrice(String symbol, Double value);
	
	void addExtendedPrice(String symbol, Double value);
	
	void addIexAskPrice(String symbol, Double value);
	
	void addIexBidPrice(String symbol, Double value);
	
	void addIexRealtimePrice(String symbol, Double value);
	
	void addLatestPrice(String symbol, Double value);
	
	void removeFromDeayedPrice(String symbol);
	
	void removeFromExtendedPrice(String symbol);
	
	void removeFromIexAskPrice(String symbol);
	
	void removeFromIexBidPrice(String symbol);
	
	void removeFromIexRealtimePrice(String symbol);
	
	void removeFromLatestPrice(String symbol);
}
