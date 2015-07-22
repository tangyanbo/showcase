package com.shiyuesoft.bbs.bean;
// Generated 2015-7-22 18:18:16 by Hibernate Tools 3.4.0.CR1

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * Entity: 
 */
@Entity
@Table(name = "bbs_oper_log")
public class OperLog implements java.io.Serializable {

	/** 
	 * 主键.
	 */

	private Long id;

	/** 
	 * 用户名.
	 */

	private String userName;

	/** 
	 * 时间.
	 */

	private Date operTime;

	/** 
	 * 操作板块.
	 */

	private String operPlate;

	/** 
	 * 操作内容.
	 */

	private String content;

	/** 
	 * ip.
	 */

	private String ip;

	public OperLog() {
	}

	public OperLog(String userName, Date operTime, String operPlate, String content, String ip) {
		setUserName(userName);
		setOperTime(operTime);
		setOperPlate(operPlate);
		setContent(content);
		setIp(ip);
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "id", unique = true, nullable = false)
	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	@Column(name = "user_name", length = 100)
	public String getUserName() {
		return this.userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "oper_time", length = 19)
	public Date getOperTime() {
		return this.operTime;
	}

	public void setOperTime(Date operTime) {
		this.operTime = operTime;
	}

	@Column(name = "oper_plate", length = 100)
	public String getOperPlate() {
		return this.operPlate;
	}

	public void setOperPlate(String operPlate) {
		this.operPlate = operPlate;
	}

	@Column(name = "content", length = 1000)
	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	@Column(name = "ip", length = 256)
	public String getIp() {
		return this.ip;
	}

	public void setIp(String ip) {
		this.ip = ip;
	}

}
