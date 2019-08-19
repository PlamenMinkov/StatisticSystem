package com.statistic.company.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "last_sale_price")
public class LastSalePrice implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "last_sale_price_id")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int lastSalePriceId;
	
	@Column(name = "symbol")
	private String symbol;	
	
	@Column(name = "value")
	private double value;

	public int getLastSalePriceId() {
		return lastSalePriceId;
	}

	public void setLastSalePriceId(int lastSalePriceId) {
		this.lastSalePriceId = lastSalePriceId;
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
