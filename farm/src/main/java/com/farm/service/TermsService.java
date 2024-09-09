package com.farm.service;

import java.util.List;

import com.farm.dao.TermsDao;
import com.farm.dto.TermsDto;



public class TermsService {

	private static TermsService instance = new TermsService();
	public static TermsService getInstance() {
		return instance;
	}
	private TermsService() {}
	
	private TermsDao dao = TermsDao.getInstance();
	
	
	public void insertTerms(TermsDto dto) {
		dao.insertTerms(dto);
	}
	public TermsDto selectTerms() {
		return dao.selectTerms();
	}
	public List<TermsDto> selectTermses() {		
		return dao.selectTermses();
	}
	public void updateTerms(TermsDto dto) {
		dao.updateTerms(dto);
	}
	public void deleteTerms() {
		dao.deleteTerms();
	}
}
