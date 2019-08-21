package com.statistic.company.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.statistic.company.entity.IexRealtimePrice;

@Repository
@Transactional
public interface IexRealtimePriceRepository  extends PagingAndSortingRepository<IexRealtimePrice, Long>
{	
	List<IexRealtimePrice> findBySymbol(String symbol);

	@Modifying
	@Query(value =  "DELETE FROM `iex_realtime_price` WHERE symbol = :symbol ORDER BY `iex_realtime_price_id` ASC LIMIT 1", nativeQuery = true)
	Integer deleteOldestRecord(@Param("symbol") String symbol);
}
