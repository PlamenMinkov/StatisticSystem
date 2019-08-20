package com.statistic.company.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "extended_price")
public class ExtendedPrice implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "extended_price_id")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int extendedPriceId;
	
	@Column(name = "symbol")
	private String symbol;	
	
	@Column(name = "value")
	private Double value;
	
	public ExtendedPrice() {}
	
	public ExtendedPrice(String symbol, Double value) {
		this.symbol = symbol;
		this.value = value;
	}

	public int getExtendedPriceId() {
		return extendedPriceId;
	}

	public void setExtendedPriceId(int extendedPriceId) {
		this.extendedPriceId = extendedPriceId;
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
