package com.dao;

public class BusBookingDAOFactory {

	public static BusBookingDAO BusBookingSystem()
	{
		return new BusBookingDAOImpl();
	}
}
