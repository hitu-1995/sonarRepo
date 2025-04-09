package com.cjc.store.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Product {

	@Id
	private int pid;
	private String pname;
	private String duration;
	private double price;
	private int seats;
	
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getDuration() {
		return duration;
	}
	public void setDuration(String duration) {
		this.duration = duration;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public int getSeats() {
		return seats;
	}
	public void setSeats(int seats) {
		this.seats = seats;
	}
	public Product(int pid, String pname, String duration, double price, int seats) {
		super();
		this.pid = pid;
		this.pname = pname;
		this.duration = duration;
		this.price = price;
		this.seats = seats;
	}
	public Product() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Product [pid=" + pid + ", pname=" + pname + ", duration=" + duration + ", price=" + price + ", seats="
				+ seats + "]";
	}

	
	

}
