package bbs;

public class Bbs {
	
private int bbsID;
private String bbsTitle;
private String userID;
private String bbsDate;
private String bbsContent;
private int bbsAvailable;

private float star;
private int fshopID;

public int getBbsID() {
	return bbsID;
}
public void setBbsID(int bbsID) {
	this.bbsID = bbsID;
}
public String getBbsTitle() {
	return bbsTitle;
}
public void setBbsTitle(String bbsTitle) {
	this.bbsTitle = bbsTitle;
}
public String getUserID() {
	return userID;
}
public void setUserID(String userID) {
	this.userID = userID;
}

public String getBbsDate() {
	return bbsDate;
}

public void setBbsDate(String bbsDate) {
	this.bbsDate = bbsDate;
}

public String getBbsContent() {
	return bbsContent;
}

public void setBbsContent(String bbsContent) {
	this.bbsContent = bbsContent;
}

public int getBbsAvailable() {
	return bbsAvailable;
}

public void setBbsAvailable(int bbsAvailable) {
	this.bbsAvailable = bbsAvailable;
}
public float getStar() {
	return star;
}
public void setStar(float star) {
	this.star = star;
}
public void setFshopID(int fshopID) {
	this.fshopID = fshopID;
}
public int getFshopID() {
	return fshopID;
}
}
