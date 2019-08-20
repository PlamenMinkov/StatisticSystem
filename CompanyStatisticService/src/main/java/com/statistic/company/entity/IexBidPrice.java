package com.statistic.company.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "iex_bid_price")
public class IexBidPrice implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "iex_bid_price_id")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int iexBidPriceId;
	
	@Column(name = "symbol")
	private String symbol;	
	
	@Column(name = "value")
	private Double value;
	
	public IexBidPrice() {}
	
	public IexBidPrice(String symbol, Double value) {
		this.symbol = symbol;
		this.value = value;
	}

	public int getIexBidPriceId() {
		return iexBidPriceId;
	}

	public void setIexBidPriceId(int iexBidPriceId) {
		this.iexBidPriceId = iexBidPriceId;
	}

	public String getSymbol() {
		return symbol;
	}

	public void setSymbol(String symbol) {
		this.symbol = symbol;
	}

	public Double getValue() {
		return value;
	}

	public void setValue(Double value) {
		this.value = value;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
}
