/**
 * 
 */
package com.rsinc.webretail.b2c.estore.data.entity;

/**
 * @author Roshan Titus
 *
 */
public class UserImageBean extends ImageBean {

	/**
	 * 
	 */
	private static final long serialVersionUID = -4855271409002386789L;
	
	private UserBean user;
	private ImageBean image;

	public UserImageBean() {
		super();
	}	

	public Long getUserImageId() {
		return id;
	}

	public void setUserImageId(Long id) {
		this.id = id;
	}	

	public UserBean getUser() {
		return user;
	}

	public void setUser(UserBean user) {
		this.user = user;
	}

	public ImageBean getImage() {
		return image;
	}


	public void setImage(ImageBean image) {
		this.image = image;
	}

}
