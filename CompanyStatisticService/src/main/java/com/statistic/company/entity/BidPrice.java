package com.statistic.company.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "bid_price")
public class BidPrice implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "bid_price_id")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int bidPriceId;
	
	@Column(name = "symbol")
	private String symbol;	
	
	@Column(name = "value")
	private double value;

	public int getBidPriceId() {
		return bidPriceId;
	}

	public void setBidPriceId(int bidPriceId) {
		this.bidPriceId = bidPriceId;
	}

	public String getSymbol() {
		return symbol;
	}

	public void setSymbol(String symbol) {
		this.symbol = symbol;
	}

	public double getValue() {
		return value;
	}

	public void setValue(double value) {
		this.value = value;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
}
