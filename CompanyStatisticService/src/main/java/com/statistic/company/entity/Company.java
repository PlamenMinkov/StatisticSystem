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
	
	@Column(name = "companyName")
	private String companyName;
	
	@Column(name = "calculationPrice")
	private String calculationPrice;
	
	@Column(name = "latestPrice")
	private double latestPrice;
	
	@Column(name = "iexRealtimePrice")
	private double iexRealtimePrice;
	
	@Column(name = "delayedPrice")
	private Double delayedPrice;
	
	@Column(name = "extendedPrice")
	private Double extendedPrice;
	
	@Column(name = "iexBidPrice")
	private double iexBidPrice;
	
	@Column(name = "iexAskPrice")
	private double iexAskPrice;
	
	@OneToMany(orphanRemoval = true)
	@JoinColumn(name = "symbol")
	private List<CalculationPrice> calculationPriceList;
	
	@OneToMany(orphanRemoval = true)
	@JoinColumn(name = "symbol")
	private List<LatestPrice> lastestPriceList;
	
	@OneToMany(orphanRemoval = true)
	@JoinColumn(name = "symbol")
	private List<IexRealtimePrice> iexRealtimePriceList;
	
	@OneToMany(orphanRemoval = true)
	@JoinColumn(name = "symbol")
	private List<DelayedPrice> delayedPriceList;
	
	@OneToMany(orphanRemoval = true)
	@JoinColumn(name = "symbol")
	private List<ExtendedPrice> extendedPriceList;
	
	@OneToMany(orphanRemoval = true)
	@JoinColumn(name = "symbol")
	private List<IexBidPrice> iexBidPriceList;
	
	@OneToMany(orphanRemoval = true)
	@JoinColumn(name = "symbol")
	private List<IexAskPrice> iexAskPriceList;
	
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

	public double getLatestPrice() {
		return latestPrice;
	}

	public void setLatestPrice(double latestPrice) {
		this.latestPrice = latestPrice;
	}

	public double getIexRealtimePrice() {
		return iexRealtimePrice;
	}

	public void setIexRealtimePrice(double iexRealtimePrice) {
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

	public double getIexBidPrice() {
		return iexBidPrice;
	}

	public void setIexBidPrice(double iexBidPrice) {
		this.iexBidPrice = iexBidPrice;
	}

	public double getIexAskPrice() {
		return iexAskPrice;
	}

	public void setIexAskPrice(double iexAskPrice) {
		this.iexAskPrice = iexAskPrice;
	}

	public List<CalculationPrice> getCalculationPriceList() {
		return calculationPriceList;
	}

	public void setCalculationPriceList(List<CalculationPrice> calculationPriceList) {
		this.calculationPriceList = calculationPriceList;
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
