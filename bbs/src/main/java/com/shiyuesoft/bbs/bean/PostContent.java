package com.shiyuesoft.bbs.bean;
// Generated 2015-7-22 18:18:16 by Hibernate Tools 3.4.0.CR1

import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * Entity: 
 */
@Entity
@Table(name = "bbs_post_content")
public class PostContent implements java.io.Serializable {

	/** 
	 * content_id.
	 */

	private Long contentId;

	/** 
	 * 内容.
	 */

	private String content;

	private Set<Post> posts = new HashSet<Post>(0);

	private Set<Reply> replies = new HashSet<Reply>(0);

	public PostContent() {
	}

	public PostContent(String content, Set<Post> posts, Set<Reply> replies) {
		setContent(content);
		setPosts(posts);
		setReplies(replies);
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "content_id", unique = true, nullable = false)
	public Long getContentId() {
		return this.contentId;
	}

	public void setContentId(Long contentId) {
		this.contentId = contentId;
	}

	@Column(name = "content", length = 65535)
	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "postContent")
	public Set<Post> getPosts() {
		return this.posts;
	}

	public void setPosts(Set<Post> posts) {
		this.posts = posts;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "postContent")
	public Set<Reply> getReplies() {
		return this.replies;
	}

	public void setReplies(Set<Reply> replies) {
		this.replies = replies;
	}

}
