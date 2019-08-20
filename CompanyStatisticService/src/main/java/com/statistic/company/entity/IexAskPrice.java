package com.statistic.company.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "iex_ask_price")
public class IexAskPrice implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "iex_ask_price_id")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int iexAskPriceId;
	
	@Column(name = "symbol")
	private String symbol;	
	
	@Column(name = "value")
	private Double value;
	
	public IexAskPrice() {}
	
	public IexAskPrice(String symbol, Double value) {
		this.symbol = symbol;
		this.value = value;
	}

	public int getIexAskPriceId() {
		return iexAskPriceId;
	}

	public void setIexAskPriceId(int iexAskPriceId) {
		this.iexAskPriceId = iexAskPriceId;
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
