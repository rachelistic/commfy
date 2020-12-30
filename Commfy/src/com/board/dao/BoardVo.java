package com.board.dao;

import java.sql.Date;

public class BoardVo {

    private int postId;               
    private String postTitle;            
    private String postRange;  
    private String postWriter ;             
    private Date postDate ;            
    private String postArea   ;         
    private String postContent;        
            
    private String postCategory ;
    private int postHit   ;    
	
    private String eventTitle ;
    private String eventPlace  ; 
    private Date eventDate ;
    private String eventTime;
    private int eventMin;
    private int eventMax;
    private int eventFee;
    private String Interest;
    private String interestSm;
    private int eventJoin;
	public int getPostId() {
		return postId;
	}
	public void setPostId(int postId) {
		this.postId = postId;
	}
	public String getPostTitle() {
		return postTitle;
	}
	public void setPostTitle(String postTitle) {
		this.postTitle = postTitle;
	}
	public String getPostRange() {
		return postRange;
	}
	public void setPostRange(String postRange) {
		this.postRange = postRange;
	}
	public String getPostWriter() {
		return postWriter;
	}
	public void setPostWriter(String postWriter) {
		this.postWriter = postWriter;
	}
	public Date getPostDate() {
		return postDate;
	}
	public void setPostDate(Date postDate) {
		this.postDate = postDate;
	}
	public String getPostArea() {
		return postArea;
	}
	public void setPostArea(String postArea) {
		this.postArea = postArea;
	}
	public String getPostContent() {
		return postContent;
	}
	public void setPostContent(String postContent) {
		this.postContent = postContent;
	}
	public String getPostCategory() {
		return postCategory;
	}
	public void setPostCategory(String postCategory) {
		this.postCategory = postCategory;
	}
	public int getPostHit() {
		return postHit;
	}
	public void setPostHit(int postHit) {
		this.postHit = postHit;
	}
	public String getEventTitle() {
		return eventTitle;
	}
	public void setEventTitle(String eventTitle) {
		this.eventTitle = eventTitle;
	}
	public String getEventPlace() {
		return eventPlace;
	}
	public void setEventPlace(String eventPlace) {
		this.eventPlace = eventPlace;
	}
	public Date getEventDate() {
		return eventDate;
	}
	public void setEventDate(Date eventDate) {
		this.eventDate = eventDate;
	}
	public String getEventTime() {
		return eventTime;
	}
	public void setEventTime(String eventTime) {
		this.eventTime = eventTime;
	}
	public int getEventMin() {
		return eventMin;
	}
	public void setEventMin(int eventMin) {
		this.eventMin = eventMin;
	}
	public int getEventMax() {
		return eventMax;
	}
	public void setEventMax(int eventMax) {
		this.eventMax = eventMax;
	}
	public int getEventFee() {
		return eventFee;
	}
	public void setEventFee(int eventFee) {
		this.eventFee = eventFee;
	}
	public String getInterest() {
		return Interest;
	}
	public void setInterest(String interest) {
		Interest = interest;
	}
	public String getInterestSm() {
		return interestSm;
	}
	public void setInterestSm(String interestSm) {
		this.interestSm = interestSm;
	}
	public int getEventJoin() {
		return eventJoin;
	}
	public void setEventJoin(int eventJoin) {
		this.eventJoin = eventJoin;
	}
	
    
    
    
    
    
    
}
