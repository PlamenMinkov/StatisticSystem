package com.statistic.company.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.statistic.company.entity.IexAskPrice;

@Repository
@Transactional
public interface IexAskPriceRepository  extends PagingAndSortingRepository<IexAskPrice, Long>
{	
	List<IexAskPrice> findBySymbol(String symbol);

	@Query(value =  "DELETE FROM `iex_ask_price` WHERE symbol = :symbol ORDER BY `iex_ask_price_id` ASC LIMIT 1", nativeQuery = true)
	Integer deleteOldestRecord(@Param("symbol") int symbol);
}
