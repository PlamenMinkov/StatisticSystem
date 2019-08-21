package com.statistic.company.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.statistic.company.entity.DelayedPrice;
import com.statistic.company.entity.ExtendedPrice;
import com.statistic.company.entity.IexAskPrice;
import com.statistic.company.entity.IexBidPrice;
import com.statistic.company.entity.IexRealtimePrice;
import com.statistic.company.entity.LatestPrice;
import com.statistic.company.repository.DelayedPriceRepository;
import com.statistic.company.repository.ExtendedPriceRepository;
import com.statistic.company.repository.IexAskPriceRepository;
import com.statistic.company.repository.IexBidPriceRepository;
import com.statistic.company.repository.IexRealtimePriceRepository;
import com.statistic.company.repository.LatestPriceRepository;

@Service
public class PricesServiceImpl implements IPricesService {

	@Autowired
	private DelayedPriceRepository delayedPriceRepository;
	
	@Autowired
	private ExtendedPriceRepository extendedPriceRepository;
	
	@Autowired
	private IexAskPriceRepository iexAskPriceRepository;
	
	@Autowired
	private IexBidPriceRepository iexBidPriceRepository;
	
	@Autowired
	private IexRealtimePriceRepository iexRealtimePriceRepository;
	
	@Autowired
	private LatestPriceRepository latestPriceRepository;
	
	@Override
	public void addDeayedPrice(String symbol, Double value) {
		delayedPriceRepository.save(new DelayedPrice(symbol, value));
		
	}

	@Override
	public void addExtendedPrice(String symbol, Double value) {
		extendedPriceRepository.save(new ExtendedPrice(symbol, value));
		
	}

	@Override
	public void addIexAskPrice(String symbol, Double value) {
		iexAskPriceRepository.save(new IexAskPrice(symbol, value));
		
	}

	@Override
	public void addIexBidPrice(String symbol, Double value) {
		iexBidPriceRepository.save(new IexBidPrice(symbol, value));
		
	}

	@Override
	public void addIexRealtimePrice(String symbol, Double value) {
		iexRealtimePriceRepository.save(new IexRealtimePrice(symbol, value));
		
	}

	@Override
	public void addLatestPrice(String symbol, Double value) {
		latestPriceRepository.save(new LatestPrice(symbol, value));
		
	}

	@Override
	public void removeFromDeayedPrice(String symbol) {
		delayedPriceRepository.deleteOldestRecord(symbol);
	}

	@Override
	public void removeFromExtendedPrice(String symbol) {
		extendedPriceRepository.deleteOldestRecord(symbol);
	}

	@Override
	public void removeFromIexAskPrice(String symbol) {
		iexAskPriceRepository.deleteOldestRecord(symbol);
	}

	@Override
	public void removeFromIexBidPrice(String symbol) {
		iexBidPriceRepository.deleteOldestRecord(symbol);
	}

	@Override
	public void removeFromIexRealtimePrice(String symbol) {
		iexRealtimePriceRepository.deleteOldestRecord(symbol);
	}

	@Override
	public void removeFromLatestPrice(String symbol) {
		latestPriceRepository.deleteOldestRecord(symbol);
	}
}
