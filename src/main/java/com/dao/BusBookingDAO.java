package com.dao;

import java.util.List;

import com.model.BusDetail;
import com.model.SignUp;

public interface BusBookingDAO {

	void saveSignUp(SignUp signup);
	
	public SignUp checkLogin(String email,String password);
	
	void saveBusDetail(BusDetail busdetail);
	
	List<BusDetail> getAllBusDetail();
	
	List<BusDetail> SearchBusDetail(String fromcity,String tocity);
}
