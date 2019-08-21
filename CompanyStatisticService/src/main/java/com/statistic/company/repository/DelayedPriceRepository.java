package com.statistic.company.repository;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.statistic.company.entity.DelayedPrice;

@Repository
@Transactional
public interface DelayedPriceRepository  extends CrudRepository<DelayedPrice, Long>
{	
	DelayedPrice findLastBySymbol(String symbol);
	
	@Query(value =  "DELETE FROM `iex_ask_price` WHERE symbol = :symbol ORDER BY `iex_ask_price_id` ASC LIMIT 1", nativeQuery = true)
	Integer deleteOldestRecord(@Param("symbol") String symbol);
}
