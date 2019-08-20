package com.statistic.company.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "latest_price")
public class LatestPrice implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "latest_price_id")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int latestPriceId;
	
	@Column(name = "symbol")
	private String symbol;	
	
	@Column(name = "value")
	private double value;

	public int getLatestPriceId() {
		return latestPriceId;
	}

	public void setLatestPriceId(int latestPriceId) {
		this.latestPriceId = latestPriceId;
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
