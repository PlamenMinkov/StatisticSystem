package com.statistic.company.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "delayed_price")
public class DelayedPrice implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "delayed_price_id")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int delayedPriceId;
	
	@Column(name = "symbol")
	private String symbol;	
	
	@Column(name = "value")
	private Double value;
	
	public DelayedPrice() {}
	
	public DelayedPrice(String symbol, Double value) {
		this.symbol = symbol;
		this.value = value;
	}

	public int getDelayedPriceId() {
		return delayedPriceId;
	}

	public void setDelayedPriceId(int delayedPriceId) {
		this.delayedPriceId = delayedPriceId;
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
