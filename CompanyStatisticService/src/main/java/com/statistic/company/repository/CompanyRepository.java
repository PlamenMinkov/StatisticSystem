package com.statistic.company.repository;

import javax.transaction.Transactional;

import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

import com.statistic.company.entity.BidPrice;
import com.statistic.company.entity.Company;

@Repository
@Transactional
public interface CompanyRepository  extends PagingAndSortingRepository<BidPrice, Long>
{	
	Company findBySymbol(String symbol);
	
//	@Query(value =  "SELECT image_id FROM image ORDER BY image_id DESC LIMIT 1", nativeQuery = true)
//	Integer getLastImageId();
	
	/*@Modifying
	@Query(value = "DELETE FROM game_votes WHERE game_id = :gameId", nativeQuery = true)
	Integer deleteGameVotes(@Param("gameId") int gameId);*/
}
