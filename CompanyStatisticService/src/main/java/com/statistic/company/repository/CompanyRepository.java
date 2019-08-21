package com.statistic.company.repository;

import javax.transaction.Transactional;

import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

import com.statistic.company.entity.Company;

@Repository
@Transactional
public interface CompanyRepository  extends PagingAndSortingRepository<Company, Long>
{	
	Company findBySymbol(String symbol);
}
