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
@Table(name = "bbs_post_attach")
public class PostAttach implements java.io.Serializable {

	private Long attachId;

	/** 
	 * 帖子id.
	 */

	private Post post;

	private String fileId;

	public PostAttach() {
	}

	public PostAttach(Post post, String fileId) {
		setPost(post);
		setFileId(fileId);
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "attach_id", unique = true, nullable = false)
	public Long getAttachId() {
		return this.attachId;
	}

	public void setAttachId(Long attachId) {
		this.attachId = attachId;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "post_id")
	public Post getPost() {
		return this.post;
	}

	public void setPost(Post post) {
		this.post = post;
	}

	@Column(name = "file_id", length = 100)
	public String getFileId() {
		return this.fileId;
	}

	public void setFileId(String fileId) {
		this.fileId = fileId;
	}

}
