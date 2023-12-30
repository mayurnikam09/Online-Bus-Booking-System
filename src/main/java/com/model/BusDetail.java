package com.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class BusDetail {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int busid;
	private String busno;
	private String busname;
	private String fromcity;
	private String tocity;
	private String time;
	private String stationname;
	private long ticket;

	public BusDetail() {
		super();
		// TODO Auto-generated constructor stub
	}

	public BusDetail(int busid, String busno, String busname, String fromcity, String tocity, String time,
			String stationname, long ticket) {
		super();
		this.busid = busid;
		this.busno = busno;
		this.busname = busname;
		this.fromcity = fromcity;
		this.tocity = tocity;
		this.time = time;
		this.stationname = stationname;
		this.ticket = ticket;
	}

	public int getBusid() {
		return busid;
	}

	public void setBusid(int busid) {
		this.busid = busid;
	}

	public String getBusno() {
		return busno;
	}

	public void setBusno(String busno) {
		this.busno = busno;
	}

	public String getBusname() {
		return busname;
	}

	public void setBusname(String busname) {
		this.busname = busname;
	}

	public String getFromcity() {
		return fromcity;
	}

	public void setFromcity(String fromcity) {
		this.fromcity = fromcity;
	}

	public String getTocity() {
		return tocity;
	}

	public void setTocity(String tocity) {
		this.tocity = tocity;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getStationname() {
		return stationname;
	}

	public void setStationname(String stationname) {
		this.stationname = stationname;
	}

	public long getTicket() {
		return ticket;
	}

	public void setTicket(long ticket) {
		this.ticket = ticket;
	}

	@Override
	public String toString() {
		return "BusDetail [busid=" + busid + ", busno=" + busno + ", busname=" + busname + ", fromcity=" + fromcity
				+ ", tocity=" + tocity + ", time=" + time + ", stationname=" + stationname + ", ticket=" + ticket + "]";
	}

}
