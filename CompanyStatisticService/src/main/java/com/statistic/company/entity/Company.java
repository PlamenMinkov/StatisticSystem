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
//	
//	@Column(name = "companyName")
//	private String companyName;
	
//	@Column(name = "calculationPrice")
//	private String calculationPrice;
//	
//	@Column(name = "latestPrice")
//	private double latestPrice;
//	
//	@Column(name = "iexRealtimePrice")
//	private double iexRealtimePrice;
//	
//	@Column(name = "delayedPrice")
//	private Double delayedPrice;
//	
//	@Column(name = "extendedPrice")
//	private Double extendedPrice;
//	
//	@Column(name = "iexBidPrice")
//	private double iexBidPrice;
//	
//	@Column(name = "iexAskPrice")
//	private double iexAskPrice;
	
	public String getSymbol() {
		return symbol;
	}
	
	public void setSymbol(String symbol) {
		this.symbol = symbol;
	}
//	
//	public String getCompanyName() {
//		return companyName;
//	}
//
//	public void setCompanyName(String companyName) {
//		this.companyName = companyName;
//	}

//	public String getCalculationPrice() {
//		return calculationPrice;
//	}
//
//	public void setCalculationPrice(String calculationPrice) {
//		this.calculationPrice = calculationPrice;
//	}
//
//	public double getLatestPrice() {
//		return latestPrice;
//	}
//
//	public void setLatestPrice(double latestPrice) {
//		this.latestPrice = latestPrice;
//	}
//
//	public double getIexRealtimePrice() {
//		return iexRealtimePrice;
//	}
//
//	public void setIexRealtimePrice(double iexRealtimePrice) {
//		this.iexRealtimePrice = iexRealtimePrice;
//	}
//
//	public Double getDelayedPrice() {
//		return delayedPrice;
//	}
//
//	public void setDelayedPrice(Double delayedPrice) {
//		this.delayedPrice = delayedPrice;
//	}
//
//	public Double getExtendedPrice() {
//		return extendedPrice;
//	}
//
//	public void setExtendedPrice(Double extendedPrice) {
//		this.extendedPrice = extendedPrice;
//	}
//
//	public double getIexBidPrice() {
//		return iexBidPrice;
//	}
//
//	public void setIexBidPrice(double iexBidPrice) {
//		this.iexBidPrice = iexBidPrice;
//	}
//
//	public double getIexAskPrice() {
//		return iexAskPrice;
//	}
//
//	public void setIexAskPrice(double iexAskPrice) {
//		this.iexAskPrice = iexAskPrice;
//	}
//
//	@Override
//    public String toString() 
//    { 
//        return "{ "
//        		+ "\"symbol\": " +  symbol
//		        + ", \"companyName\": " +  companyName
//		        + ", \"calculationPrice\": " +  calculationPrice
//		        + ", \"latestPrice\": " +  latestPrice
//		        + ", \"iexRealtimePrice\": " +  iexRealtimePrice
//		        + ", \"delayedPrice\": " +  delayedPrice
//		        + ", \"extendedPrice\": " +  extendedPrice
//		        + ", \"iexBidPrice\": " +  iexBidPrice
//		        + ", \"iexAskPrice\": " +  iexAskPrice
//		        + ", \"link to logo\": \"https://storage.googleapis.com/iex/api/logos/" + symbol + ".png\" }"; 
//    } 
}
