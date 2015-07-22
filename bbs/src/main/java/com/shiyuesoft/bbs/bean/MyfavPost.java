package com.shiyuesoft.bbs.bean;
// Generated 2015-7-22 18:18:16 by Hibernate Tools 3.4.0.CR1

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * Entity: 
 */
@Entity
@Table(name = "bbs_myfav_post")
public class MyfavPost implements java.io.Serializable {

	/** 
	 * fav_id.
	 */

	private Long favId;

	/** 
	 * 帖子id.
	 */

	private Post post;

	/** 
	 * 所属user.
	 */

	private Long owner;

	public MyfavPost() {
	}

	public MyfavPost(Post post, Long owner) {
		setPost(post);
		setOwner(owner);
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "fav_id", unique = true, nullable = false)
	public Long getFavId() {
		return this.favId;
	}

	public void setFavId(Long favId) {
		this.favId = favId;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "post_id")
	public Post getPost() {
		return this.post;
	}

	public void setPost(Post post) {
		this.post = post;
	}

	@Column(name = "owner")
	public Long getOwner() {
		return this.owner;
	}

	public void setOwner(Long owner) {
		this.owner = owner;
	}

}
