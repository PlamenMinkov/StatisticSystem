package com.statistic.company.entity;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

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
	
	@Column(name = "companyName")
	private String companyName;
	
	@Column(name = "calculationPrice")
	private String calculationPrice;
	
	@Column(name = "latestPrice")
	private Double latestPrice;
	
	@Column(name = "iexRealtimePrice")
	private Double iexRealtimePrice;
	
	@Column(name = "delayedPrice")
	private Double delayedPrice;
	
	@Column(name = "extendedPrice")
	private Double extendedPrice;
	
	@Column(name = "iexBidPrice")
	private Double iexBidPrice;
	
	@Column(name = "iexAskPrice")
	private Double iexAskPrice;
	
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "symbol")
	private List<LatestPrice> lastestPriceList = new ArrayList<LatestPrice>();
	
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "symbol")
	private List<IexRealtimePrice> iexRealtimePriceList = new ArrayList<IexRealtimePrice>();
	
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "symbol")
	private List<DelayedPrice> delayedPriceList = new ArrayList<DelayedPrice>();
	
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "symbol")
	private List<ExtendedPrice> extendedPriceList = new ArrayList<ExtendedPrice>();
	
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "symbol")
	private List<IexBidPrice> iexBidPriceList = new ArrayList<IexBidPrice>();
	
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "symbol")
	private List<IexAskPrice> iexAskPriceList = new ArrayList<IexAskPrice>();
	
	public String getSymbol() {
		return symbol;
	}
	
	public void setSymbol(String symbol) {
		this.symbol = symbol;
	}
	
	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public String getCalculationPrice() {
		return calculationPrice;
	}

	public void setCalculationPrice(String calculationPrice) {
		this.calculationPrice = calculationPrice;
	}

	public Double getLatestPrice() {
		return latestPrice;
	}

	public void setLatestPrice(Double latestPrice) {
		this.latestPrice = latestPrice;
	}

	public Double getIexRealtimePrice() {
		return iexRealtimePrice;
	}

	public void setIexRealtimePrice(Double iexRealtimePrice) {
		this.iexRealtimePrice = iexRealtimePrice;
	}

	public Double getDelayedPrice() {
		return delayedPrice;
	}

	public void setDelayedPrice(Double delayedPrice) {
		this.delayedPrice = delayedPrice;
	}

	public Double getExtendedPrice() {
		return extendedPrice;
	}

	public void setExtendedPrice(Double extendedPrice) {
		this.extendedPrice = extendedPrice;
	}

	public Double getIexBidPrice() {
		return iexBidPrice;
	}

	public void setIexBidPrice(Double iexBidPrice) {
		this.iexBidPrice = iexBidPrice;
	}

	public Double getIexAskPrice() {
		return iexAskPrice;
	}

	public void setIexAskPrice(double iexAskPrice) {
		this.iexAskPrice = iexAskPrice;
	}

	public List<LatestPrice> getLastestPriceList() {
		return lastestPriceList;
	}

	public void setLastestPriceList(List<LatestPrice> lastestPriceList) {
		this.lastestPriceList = lastestPriceList;
	}

	public List<IexRealtimePrice> getIexRealtimePriceList() {
		return iexRealtimePriceList;
	}

	public void setIexRealtimePriceList(List<IexRealtimePrice> iexRealtimePriceList) {
		this.iexRealtimePriceList = iexRealtimePriceList;
	}

	public List<DelayedPrice> getDelayedPriceList() {
		return delayedPriceList;
	}

	public void setDelayedPriceList(List<DelayedPrice> delayedPriceList) {
		this.delayedPriceList = delayedPriceList;
	}

	public List<ExtendedPrice> getExtendedPriceList() {
		return extendedPriceList;
	}

	public void setExtendedPriceList(List<ExtendedPrice> extendedPriceList) {
		this.extendedPriceList = extendedPriceList;
	}

	public List<IexBidPrice> getIexBidPriceList() {
		return iexBidPriceList;
	}

	public void setIexBidPriceList(List<IexBidPrice> iexBidPriceList) {
		this.iexBidPriceList = iexBidPriceList;
	}

	public List<IexAskPrice> getIexAskPriceList() {
		return iexAskPriceList;
	}

	public void setIexAskPriceList(List<IexAskPrice> iexAskPriceList) {
		this.iexAskPriceList = iexAskPriceList;
	}

	@Override
    public String toString() 
    { 
        return "{ "
        		+ "\"symbol\": " +  symbol
		        + ", \"companyName\": " +  companyName
		        + ", \"calculationPrice\": " +  calculationPrice
		        + ", \"latestPrice\": " +  latestPrice
		        + ", \"iexRealtimePrice\": " +  iexRealtimePrice
		        + ", \"delayedPrice\": " +  delayedPrice
		        + ", \"extendedPrice\": " +  extendedPrice
		        + ", \"iexBidPrice\": " +  iexBidPrice
		        + ", \"iexAskPrice\": " +  iexAskPrice
		        + ", \"link to logo\": \"https://storage.googleapis.com/iex/api/logos/" + symbol + ".png\" }"; 
    } 
}
