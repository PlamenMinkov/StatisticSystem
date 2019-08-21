package com.statistic.company.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.statistic.company.entity.IexBidPrice;

@Repository
@Transactional
public interface IexBidPriceRepository  extends PagingAndSortingRepository<IexBidPrice, Long>
{	
	List<IexBidPrice> findBySymbol(String symbol);

	@Query(value =  "DELETE FROM `iex_bid_price` WHERE symbol = :symbol ORDER BY `iex_bid_price_id` ASC LIMIT 1", nativeQuery = true)
	Integer deleteOldestRecord(@Param("symbol") String symbol);
}
