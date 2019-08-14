package com.statistic.company.entity;

import java.io.Serializable;

public class Company implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 7797789865197810728L;

	private String symbol;
	private String sector;
	private String securityType;
	private double bidPrice;
	private int bidSize;
	private double askPrice;
	private int askSize;
	private long lastUpdated;
	private double lastSalePrice;
	private double lastSaleSize;
	private long lastSaleTime;
	private int volume;
	
	public String getSymbol() {
		return symbol;
	}
	public void setSymbol(String symbol) {
		this.symbol = symbol;
	}
	public String getSector() {
		return sector;
	}
	public void setSector(String sector) {
		this.sector = sector;
	}
	public String getSecurityType() {
		return securityType;
	}
	public void setSecurityType(String securityType) {
		this.securityType = securityType;
	}
	public double getBidPrice() {
		return bidPrice;
	}
	public void setBidPrice(double bidPrice) {
		this.bidPrice = bidPrice;
	}
	public int getBidSize() {
		return bidSize;
	}
	public void setBidSize(int bidSize) {
		this.bidSize = bidSize;
	}
	public double getAskPrice() {
		return askPrice;
	}
	public void setAskPrice(double askPrice) {
		this.askPrice = askPrice;
	}
	public int getAskSize() {
		return askSize;
	}
	public void setAskSize(int askSize) {
		this.askSize = askSize;
	}
	public double getLastSalePrice() {
		return lastSalePrice;
	}
	public void setLastSalePrice(double lastSalePrice) {
		this.lastSalePrice = lastSalePrice;
	}
	public int getVolume() {
		return volume;
	}
	public void setVolume(int volume) {
		this.volume = volume;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public long getLastUpdated() {
		return lastUpdated;
	}
	public void setLastUpdated(long lastUpdated) {
		this.lastUpdated = lastUpdated;
	}
	public long getLastSaleTime() {
		return lastSaleTime;
	}
	public void setLastSaleTime(long lastSaleTime) {
		this.lastSaleTime = lastSaleTime;
	}
	public double getLastSaleSize() {
		return lastSaleSize;
	}
	public void setLastSaleSize(double lastSaleSize) {
		this.lastSaleSize = lastSaleSize;
	}
	
	@Override
    public String toString() 
    { 
        return "{ "
        		+ "\"symbol\": " +  symbol
		        + ", \"sector\": " +  sector
		        + ", \"securityType\": " +  securityType
		        + ", \"bidPrice\": " +  bidPrice
		        + ", \"bidSize\": " +  bidSize
		        + ", \"askPrice\": " +  askPrice
		        + ", \"askSize\": " +  askSize
		        + ", \"lastUpdated\": " +  lastUpdated
		        + ", \"lastSalePrice\": " +  lastSalePrice
		        + ", \"lastSalePrice\": " +  lastSaleSize
		        + ", \"lastSaleTime\": " +  lastSaleTime
		        + ", \"volume\": " +  volume
		        + ", \"link to logo\": \"https://storage.googleapis.com/iex/api/logos/" + symbol + ".png\" }"; 
    } 
}
