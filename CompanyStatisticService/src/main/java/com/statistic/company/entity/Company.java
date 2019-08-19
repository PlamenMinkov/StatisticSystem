package com.statistic.company.entity;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name = "company")
public class Company implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 7797789865197810728L;

	@Id
	@Column(name = "symbol")
	private String symbol;
	
	@Transient
	private String sector;
	
	@Transient
	private String securityType;
	
	@Column(name = "bid_price")
	private double bidPrice;
	
	@Transient
	private int bidSize;
	
	@Column(name = "ask_price")
	private double askPrice;
	
	@Transient
	private int askSize;
	
	@Transient
	private long lastUpdated;
	
	@Column(name = "lastSalePrice")
	private double lastSalePrice;
	
	@Transient
	private double lastSaleSize;
	
	@Transient
	private long lastSaleTime;
	
	@Transient
	private int volume;
	
	@OneToMany(orphanRemoval = true)
	@JoinColumn(name = "symbol")
	private List<BidPrice> bidPrices;
	
	@OneToMany(orphanRemoval = true)
	@JoinColumn(name = "symbol")
	private List<AskPrice> askPrices;
	
	@OneToMany(orphanRemoval = true)
	@JoinColumn(name = "symbol")
	private List<LastSalePrice> lastSalePrices;
	
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
	
	public List<BidPrice> getBidPrices() {
		return bidPrices;
	}
	public void setBidPrices(List<BidPrice> bidPrices) {
		this.bidPrices = bidPrices;
	}
	public List<AskPrice> getAskPrices() {
		return askPrices;
	}
	public void setAskPrices(List<AskPrice> askPrices) {
		this.askPrices = askPrices;
	}
	public List<LastSalePrice> getLastSalePrices() {
		return lastSalePrices;
	}
	public void setLastSalePrices(List<LastSalePrice> lastSalePrices) {
		this.lastSalePrices = lastSalePrices;
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
