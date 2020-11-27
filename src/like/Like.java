package like;

public class Like {

	private int heart;
	private String userID;
	private int fshopID;

	
	public int getLike() {
		return heart;
	}
	public void setLike(int heart) {
		this.heart = heart;
	}
	public void setFshopID(int fshopID) {
		this.fshopID = fshopID;
	}
	public int getFshopID() {
		return fshopID;
	}
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}

}
