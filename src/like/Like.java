package like;

public class Like {

	private int like;
	private String userID;
	private int fshopID;
	private int likeAvailable;
	
	public int getLike() {
		return like;
	}
	public void setLike(int like) {
		this.like = like;
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
	public int getLikeAvailable() {
		return likeAvailable;
	}

	public void setLikeAvailable(int likeAvailable) {
		this.likeAvailable = likeAvailable;
	}

}
