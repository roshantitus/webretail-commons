/**
 * 
 */
package com.rsinc.webretail.b2c.estore.data.entity;

import javax.persistence.Access;
import javax.persistence.AccessType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotEmpty;

/**
 * @author Roshan Titus
 *
 */
@Entity
@Access(AccessType.PROPERTY)
//@NamedQueries({@NamedQuery(name="findByUsername", query=""), })
@Table(name="image")
public class ImageBean extends BaseBean {

	/**
	 * 
	 */
	private static final long serialVersionUID = -4667762931922711304L;

	@NotEmpty
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

	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	@Column(name = "image_id")
	public Long getImageId() {
		return id;
	}

	public void setImageId(Long id) {
		this.id = id;
	}	

	@Column(name = "image_file_path")
	public String getImageFilePath() {
		return imageFilePath;
	}



	public void setImageFilePath(String imageFilePath) {
		this.imageFilePath = imageFilePath;
	}


	@Column(name = "image_width")
	public Integer getImageWidth() {
		return imageWidth;
	}



	public void setImageWidth(Integer imageWidth) {
		this.imageWidth = imageWidth;
	}


	@Column(name = "image_height")
	public Integer getImageHeight() {
		return imageHeight;
	}



	public void setImageHeight(Integer imageHeight) {
		this.imageHeight = imageHeight;
	}


	@Column(name = "image_thumbnail_file_path")
	public String getImageThumbnailFilePath() {
		return imageThumbnailFilePath;
	}



	public void setImageThumbnailFilePath(String imageThumbnailFilePath) {
		this.imageThumbnailFilePath = imageThumbnailFilePath;
	}


	@Column(name = "image_thumbnail_width")
	public Integer getImageThumbnailWidth() {
		return imageThumbnailWidth;
	}



	public void setImageThumbnailWidth(Integer imageThumbnailWidth) {
		this.imageThumbnailWidth = imageThumbnailWidth;
	}


	@Column(name = "image_thumbnail_height")
	public Integer getImageThumbnailHeight() {
		return imageThumbnailHeight;
	}



	public void setImageThumbnailHeight(Integer imageThumbnailHeight) {
		this.imageThumbnailHeight = imageThumbnailHeight;
	}

	
}
