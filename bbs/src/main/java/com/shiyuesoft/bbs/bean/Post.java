package com.shiyuesoft.bbs.bean;
// Generated 2015-7-22 18:18:16 by Hibernate Tools 3.4.0.CR1

import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * Entity: 
 */
@Entity
@Table(name = "bbs_post")
public class Post implements java.io.Serializable {

	/** 
	 * 帖子id.
	 */

	private Long postId;

	/** 
	 * 内容id.
	 */

	private PostContent postContent;

	/** 
	 * 板块id.
	 */

	private Plate plate;

	/** 
	 * 标题.
	 */

	private String title;

	/** 
	 * 分区id.
	 */

	private Long areaId;

	/** 
	 * 发表人.
	 */

	private Long publishUser;

	/** 
	 * 发表时间.
	 */

	private Date publishTime;

	/** 
	 * 链接.
	 */

	private String url;

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
	 * 回复总数.
	 */

	private Integer replyCount;

	/** 
	 * 查看总数.
	 */

	private Integer readCount;

	/** 
	 * 最后发表人.
	 */

	private String lastPubUser;

	/** 
	 * 最后发表时间.
	 */

	private Date lastPubTime;

	/** 
	 * 回帖权限
	        0：学生回帖
	        1：教师回帖
	        2：游客回帖
	        空表示不允许回帖.
	 */

	private String replyPerm;

	/** 
	 * 访问权限
	        0：学生访问
	        1：教师访问
	        2：游客访问
	        空表示不允许访问.
	 */

	private String visitPerm;

	private Set<MyfavPost> myfavPosts = new HashSet<MyfavPost>(0);

	private Set<Reply> replies = new HashSet<Reply>(0);

	private Set<PostAttach> postAttachs = new HashSet<PostAttach>(0);

	public Post() {
	}

	public Post(PostContent postContent, Plate plate, String title, Long areaId, Long publishUser, Date publishTime,
			String url, Integer aduStatus, Integer deleteStatus, Integer replyCount, Integer readCount,
			String lastPubUser, Date lastPubTime, String replyPerm, String visitPerm, Set<MyfavPost> myfavPosts,
			Set<Reply> replies, Set<PostAttach> postAttachs) {
		setPostContent(postContent);
		setPlate(plate);
		setTitle(title);
		setAreaId(areaId);
		setPublishUser(publishUser);
		setPublishTime(publishTime);
		setUrl(url);
		setAduStatus(aduStatus);
		setDeleteStatus(deleteStatus);
		setReplyCount(replyCount);
		setReadCount(readCount);
		setLastPubUser(lastPubUser);
		setLastPubTime(lastPubTime);
		setReplyPerm(replyPerm);
		setVisitPerm(visitPerm);
		setMyfavPosts(myfavPosts);
		setReplies(replies);
		setPostAttachs(postAttachs);
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "post_id", unique = true, nullable = false)
	public Long getPostId() {
		return this.postId;
	}

	public void setPostId(Long postId) {
		this.postId = postId;
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
	@JoinColumn(name = "plate_id")
	public Plate getPlate() {
		return this.plate;
	}

	public void setPlate(Plate plate) {
		this.plate = plate;
	}

	@Column(name = "title", length = 1000)
	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	@Column(name = "area_id")
	public Long getAreaId() {
		return this.areaId;
	}

	public void setAreaId(Long areaId) {
		this.areaId = areaId;
	}

	@Column(name = "publish_user")
	public Long getPublishUser() {
		return this.publishUser;
	}

	public void setPublishUser(Long publishUser) {
		this.publishUser = publishUser;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "publish_time", length = 19)
	public Date getPublishTime() {
		return this.publishTime;
	}

	public void setPublishTime(Date publishTime) {
		this.publishTime = publishTime;
	}

	@Column(name = "url", length = 500)
	public String getUrl() {
		return this.url;
	}

	public void setUrl(String url) {
		this.url = url;
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

	@Column(name = "reply_count")
	public Integer getReplyCount() {
		return this.replyCount;
	}

	public void setReplyCount(Integer replyCount) {
		this.replyCount = replyCount;
	}

	@Column(name = "read_count")
	public Integer getReadCount() {
		return this.readCount;
	}

	public void setReadCount(Integer readCount) {
		this.readCount = readCount;
	}

	@Column(name = "last_pub_user", length = 100)
	public String getLastPubUser() {
		return this.lastPubUser;
	}

	public void setLastPubUser(String lastPubUser) {
		this.lastPubUser = lastPubUser;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "last_pub_time", length = 19)
	public Date getLastPubTime() {
		return this.lastPubTime;
	}

	public void setLastPubTime(Date lastPubTime) {
		this.lastPubTime = lastPubTime;
	}

	@Column(name = "reply_perm", length = 200)
	public String getReplyPerm() {
		return this.replyPerm;
	}

	public void setReplyPerm(String replyPerm) {
		this.replyPerm = replyPerm;
	}

	@Column(name = "visit_perm", length = 200)
	public String getVisitPerm() {
		return this.visitPerm;
	}

	public void setVisitPerm(String visitPerm) {
		this.visitPerm = visitPerm;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "post")
	public Set<MyfavPost> getMyfavPosts() {
		return this.myfavPosts;
	}

	public void setMyfavPosts(Set<MyfavPost> myfavPosts) {
		this.myfavPosts = myfavPosts;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "post")
	public Set<Reply> getReplies() {
		return this.replies;
	}

	public void setReplies(Set<Reply> replies) {
		this.replies = replies;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "post")
	public Set<PostAttach> getPostAttachs() {
		return this.postAttachs;
	}

	public void setPostAttachs(Set<PostAttach> postAttachs) {
		this.postAttachs = postAttachs;
	}

}
