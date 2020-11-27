package review;

public class Review {

	private String userName;
	private int fshopID;
	private String bbsDate;
	private String bbsContent;
	private float star;
	private int bbsAvailable;


	public void setFshopID(int fshopID) {
		this.fshopID = fshopID;
	}
	public int getFshopID() {
		return fshopID;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
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
	public void setStar(float star) {
		this.star = star;
	}
	public float getStar() {
		return star;
	}
	public int getBbsAvailable() {
		return bbsAvailable;
	}
	public void setBbsAvailable(int bbsAvailable) {
		this.bbsAvailable = bbsAvailable;
	}
}
