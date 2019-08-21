package com.statistic.company.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.statistic.company.entity.LatestPrice;

@Repository
@Transactional
public interface LatestPriceRepository  extends PagingAndSortingRepository<LatestPrice, Long>
{	
	List<LatestPrice> findBySymbol(String symbol);

	@Query(value =  "DELETE FROM `latest_price` WHERE symbol = :symbol ORDER BY `latest_price_id` ASC LIMIT 1", nativeQuery = true)
	Integer deleteOldestRecord(@Param("symbol") String symbol);
}
