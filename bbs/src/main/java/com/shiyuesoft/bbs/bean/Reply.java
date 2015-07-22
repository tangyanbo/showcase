package com.shiyuesoft.bbs.bean;
// Generated 2015-7-22 18:18:16 by Hibernate Tools 3.4.0.CR1

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * Entity: 
 */
@Entity
@Table(name = "bbs_post_reply")
public class Reply implements java.io.Serializable {

	/** 
	 * 帖子回复id.
	 */

	private Long postReplyId;

	/** 
	 * content_id.
	 */

	private PostContent postContent;

	/** 
	 * 帖子id.
	 */

	private Post post;

	/** 
	 * 回复人.
	 */

	private Long replyUser;

	/** 
	 * 回复时间.
	 */

	private Date replyTime;

	/** 
	 * 审核状态
	        0：待审核
	        1：审核失败
	        2：审核通过.
	 */

	private Integer aduStatus;

	/** 
	 * 删除状态
	        0：未删除
	        1：已删除.
	 */

	private Integer deleteStatus;

	/** 
	 * 类型
	        0：帖子回复
	        1：回复的回复.
	 */

	private Integer type;

	/** 
	 * 被回复的人.
	 */

	private Long repliedUser;

	/** 
	 * 回复id.
	 */

	private Long parentId;

	public Reply() {
	}

	public Reply(PostContent postContent, Post post, Long replyUser, Date replyTime, Integer aduStatus,
			Integer deleteStatus, Integer type, Long repliedUser, Long parentId) {
		setPostContent(postContent);
		setPost(post);
		setReplyUser(replyUser);
		setReplyTime(replyTime);
		setAduStatus(aduStatus);
		setDeleteStatus(deleteStatus);
		setType(type);
		setRepliedUser(repliedUser);
		setParentId(parentId);
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "post_reply_id", unique = true, nullable = false)
	public Long getPostReplyId() {
		return this.postReplyId;
	}

	public void setPostReplyId(Long postReplyId) {
		this.postReplyId = postReplyId;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "content_id")
	public PostContent getPostContent() {
		return this.postContent;
	}

	public void setPostContent(PostContent postContent) {
		this.postContent = postContent;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "post_id")
	public Post getPost() {
		return this.post;
	}

	public void setPost(Post post) {
		this.post = post;
	}

	@Column(name = "reply_user")
	public Long getReplyUser() {
		return this.replyUser;
	}

	public void setReplyUser(Long replyUser) {
		this.replyUser = replyUser;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "reply_time", length = 19)
	public Date getReplyTime() {
		return this.replyTime;
	}

	public void setReplyTime(Date replyTime) {
		this.replyTime = replyTime;
	}

	@Column(name = "adu_status")
	public Integer getAduStatus() {
		return this.aduStatus;
	}

	public void setAduStatus(Integer aduStatus) {
		this.aduStatus = aduStatus;
	}

	@Column(name = "delete_status")
	public Integer getDeleteStatus() {
		return this.deleteStatus;
	}

	public void setDeleteStatus(Integer deleteStatus) {
		this.deleteStatus = deleteStatus;
	}

	@Column(name = "type")
	public Integer getType() {
		return this.type;
	}

	public void setType(Integer type) {
		this.type = type;
	}

	@Column(name = "replied_user")
	public Long getRepliedUser() {
		return this.repliedUser;
	}

	public void setRepliedUser(Long repliedUser) {
		this.repliedUser = repliedUser;
	}

	@Column(name = "parent_id")
	public Long getParentId() {
		return this.parentId;
	}

	public void setParentId(Long parentId) {
		this.parentId = parentId;
	}

}
