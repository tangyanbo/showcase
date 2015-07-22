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
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * Entity: 
 */
@Entity
@Table(name = "bbs_plate")
public class Plate implements java.io.Serializable {

	/** 
	 * 板块id.
	 */

	private Long plateId;

	/** 
	 * 分区id.
	 */

	private Area area;

	/** 
	 * 板块名称.
	 */

	private String plateName;

	/** 
	 * 发帖用户类型
	        01：学生
	        02：家长
	        03：教师
	        04：指定教师.
	 */

	private String publisherType;

	/** 
	 * 序号.
	 */

	private Integer sort;

	/** 
	 * 上传图标.
	 */

	private String iconPath;

	/** 
	 * 版主.
	 */

	private Long plateMaster;

	/** 
	 * 帖子总数.
	 */

	private Integer totalPost;

	/** 
	 * 回复总数.
	 */

	private Integer totalReply;

	private Set<ReplyAuditor> replyAuditors = new HashSet<ReplyAuditor>(0);

	private Set<PlatePublisher> platePublishers = new HashSet<PlatePublisher>(0);

	private Set<PlateAuditor> plateAuditors = new HashSet<PlateAuditor>(0);

	private Set<Post> posts = new HashSet<Post>(0);

	private Set<PlateMaster> plateMasters = new HashSet<PlateMaster>(0);

	public Plate() {
	}

	public Plate(Area area, String plateName, String publisherType, Integer sort, String iconPath, Long plateMaster,
			Integer totalPost, Integer totalReply, Set<ReplyAuditor> replyAuditors, Set<PlatePublisher> platePublishers,
			Set<PlateAuditor> plateAuditors, Set<Post> posts, Set<PlateMaster> plateMasters) {
		setArea(area);
		setPlateName(plateName);
		setPublisherType(publisherType);
		setSort(sort);
		setIconPath(iconPath);
		setPlateMaster(plateMaster);
		setTotalPost(totalPost);
		setTotalReply(totalReply);
		setReplyAuditors(replyAuditors);
		setPlatePublishers(platePublishers);
		setPlateAuditors(plateAuditors);
		setPosts(posts);
		setPlateMasters(plateMasters);
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "plate_id", unique = true, nullable = false)
	public Long getPlateId() {
		return this.plateId;
	}

	public void setPlateId(Long plateId) {
		this.plateId = plateId;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "area_id")
	public Area getArea() {
		return this.area;
	}

	public void setArea(Area area) {
		this.area = area;
	}

	@Column(name = "plate_name", length = 200)
	public String getPlateName() {
		return this.plateName;
	}

	public void setPlateName(String plateName) {
		this.plateName = plateName;
	}

	@Column(name = "publisher_type", length = 2)
	public String getPublisherType() {
		return this.publisherType;
	}

	public void setPublisherType(String publisherType) {
		this.publisherType = publisherType;
	}

	@Column(name = "sort")
	public Integer getSort() {
		return this.sort;
	}

	public void setSort(Integer sort) {
		this.sort = sort;
	}

	@Column(name = "icon_path", length = 200)
	public String getIconPath() {
		return this.iconPath;
	}

	public void setIconPath(String iconPath) {
		this.iconPath = iconPath;
	}

	@Column(name = "plate_master")
	public Long getPlateMaster() {
		return this.plateMaster;
	}

	public void setPlateMaster(Long plateMaster) {
		this.plateMaster = plateMaster;
	}

	@Column(name = "total_post")
	public Integer getTotalPost() {
		return this.totalPost;
	}

	public void setTotalPost(Integer totalPost) {
		this.totalPost = totalPost;
	}

	@Column(name = "total_reply")
	public Integer getTotalReply() {
		return this.totalReply;
	}

	public void setTotalReply(Integer totalReply) {
		this.totalReply = totalReply;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "plate")
	public Set<ReplyAuditor> getReplyAuditors() {
		return this.replyAuditors;
	}

	public void setReplyAuditors(Set<ReplyAuditor> replyAuditors) {
		this.replyAuditors = replyAuditors;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "plate")
	public Set<PlatePublisher> getPlatePublishers() {
		return this.platePublishers;
	}

	public void setPlatePublishers(Set<PlatePublisher> platePublishers) {
		this.platePublishers = platePublishers;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "plate")
	public Set<PlateAuditor> getPlateAuditors() {
		return this.plateAuditors;
	}

	public void setPlateAuditors(Set<PlateAuditor> plateAuditors) {
		this.plateAuditors = plateAuditors;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "plate")
	public Set<Post> getPosts() {
		return this.posts;
	}

	public void setPosts(Set<Post> posts) {
		this.posts = posts;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "plate")
	public Set<PlateMaster> getPlateMasters() {
		return this.plateMasters;
	}

	public void setPlateMasters(Set<PlateMaster> plateMasters) {
		this.plateMasters = plateMasters;
	}

}
