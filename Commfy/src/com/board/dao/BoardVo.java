package com.board.dao;

import java.sql.Date;

public class BoardVo {

    private int postId;               
    private String postTitle;            
    private String postRange;         
    private String account ;             
    private Date postDate ;            
    private int postHit   ;           
    private String postArea   ;         
    private String postTag    ;         
    private String description;        
    private String interest   ;         
    private String postCategory ;
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
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public Date getPostDate() {
		return postDate;
	}
	public void setPostDate(Date postDate) {
		this.postDate = postDate;
	}
	public int getPostHit() {
		return postHit;
	}
	public void setPostHit(int postHit) {
		this.postHit = postHit;
	}
	public String getPostArea() {
		return postArea;
	}
	public void setPostArea(String postArea) {
		this.postArea = postArea;
	}
	public String getPostTag() {
		return postTag;
	}
	public void setPostTag(String postTag) {
		this.postTag = postTag;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getInterest() {
		return interest;
	}
	public void setInterest(String interest) {
		this.interest = interest;
	}
	public String getPostCategory() {
		return postCategory;
	}
	public void setPostCategory(String postCategory) {
		this.postCategory = postCategory;
	}        

    
    
    

	
}
