package com.regident.dao;

import java.sql.Date;

public class RegidentVo {
	private String account;
	private String userType;
	private String nickName;
	private String password;
	private String area;
	private String gender;
	private String bloodType;
	private Date birthDate;
	private Date regiDate;
	private int mind;
	private int energy;
	private int nature;
	private int tatics;
	private String MBTIcode;
	private String interests;
	private String rooms;
	private String occupation;
	
	
	public RegidentVo() {
		
	}


	public String getAccount() {
		return account;
	}


	public void setAccount(String account) {
		this.account = account;
	}


	public String getUserType() {
		return userType;
	}


	public void setUserType(String userType) {
		this.userType = userType;
	}


	public String getNickName() {
		return nickName;
	}


	public void setNickName(String nickName) {
		this.nickName = nickName;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public String getArea() {
		return area;
	}


	public void setArea(String area) {
		this.area = area;
	}


	public String getGender() {
		return gender;
	}


	public void setGender(String gender) {
		this.gender = gender;
	}


	public String getBloodType() {
		return bloodType;
	}


	public void setBloodType(String bloodType) {
		this.bloodType = bloodType;
	}


	public Date getBirthDate() {
		return birthDate;
	}


	public void setBirthDate(Date birthDate) {
		this.birthDate = birthDate;
	}


	public Date getRegiDate() {
		return regiDate;
	}


	public void setRegiDate(Date regiDate) {
		this.regiDate = regiDate;
	}


	public int getMind() {
		return mind;
	}


	public void setMind(int mind) {
		this.mind = mind;
	}


	public int getEnergy() {
		return energy;
	}


	public void setEnergy(int energy) {
		this.energy = energy;
	}


	public int getNature() {
		return nature;
	}


	public void setNature(int nature) {
		this.nature = nature;
	}


	public int getTatics() {
		return tatics;
	}


	public void setTatics(int tatics) {
		this.tatics = tatics;
	}


	public String getMBTIcode() {
		return MBTIcode;
	}


	public void setMBTIcode(String mBTIcode) {
		MBTIcode = mBTIcode;
	}


	public String getInterests() {
		return interests;
	}


	public void setInterests(String interests) {
		this.interests = interests;
	}


	public String getRooms() {
		return rooms;
	}


	public void setRooms(String rooms) {
		this.rooms = rooms;
	}


	public String getOccupation() {
		return occupation;
	}


	public void setOccupation(String occupation) {
		this.occupation = occupation;
	}


	
	
}
