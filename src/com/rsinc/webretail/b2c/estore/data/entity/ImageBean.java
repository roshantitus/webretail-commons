/**
 * 
 */
package com.rsinc.webretail.b2c.estore.data.entity;

/**
 * @author Roshan Titus
 *
 */
public class ImageBean extends BaseBean {

	/**
	 * 
	 */
	private static final long serialVersionUID = -4667762931922711304L;

	private String imageFilePath;

	private Integer imageWidth;

	private Integer imageHeight;

	private String imageThumbnailFilePath;

	private Integer imageThumbnailWidth;

	private Integer imageThumbnailHeight;
	
	

	public ImageBean() {
		super();
		// TODO initialize object
	}


	public Long getImageId() {
		return id;
	}

	public void setImageId(Long id) {
		this.id = id;
	}	

	public String getImageFilePath() {
		return imageFilePath;
	}



	public void setImageFilePath(String imageFilePath) {
		this.imageFilePath = imageFilePath;
	}



	public Integer getImageWidth() {
		return imageWidth;
	}



	public void setImageWidth(Integer imageWidth) {
		this.imageWidth = imageWidth;
	}



	public Integer getImageHeight() {
		return imageHeight;
	}



	public void setImageHeight(Integer imageHeight) {
		this.imageHeight = imageHeight;
	}



	public String getImageThumbnailFilePath() {
		return imageThumbnailFilePath;
	}



	public void setImageThumbnailFilePath(String imageThumbnailFilePath) {
		this.imageThumbnailFilePath = imageThumbnailFilePath;
	}



	public Integer getImageThumbnailWidth() {
		return imageThumbnailWidth;
	}



	public void setImageThumbnailWidth(Integer imageThumbnailWidth) {
		this.imageThumbnailWidth = imageThumbnailWidth;
	}



	public Integer getImageThumbnailHeight() {
		return imageThumbnailHeight;
	}



	public void setImageThumbnailHeight(Integer imageThumbnailHeight) {
		this.imageThumbnailHeight = imageThumbnailHeight;
	}

	
}
