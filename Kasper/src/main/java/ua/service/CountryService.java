package ua.service;


import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import filter.BasicFilter;
import ua.entity.Country;

public interface CountryService {
	
	Country findOne(int id);
	
	Country findOne(String name);
	
	List<Country> findAll();
	
	void save(Country country);
	
	void delete(int id);
	
	Page<Country> findAll(BasicFilter filter, Pageable pageable);


}
