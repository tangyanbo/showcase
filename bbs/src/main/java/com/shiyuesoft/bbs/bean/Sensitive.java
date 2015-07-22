package com.shiyuesoft.bbs.bean;
// Generated 2015-7-22 18:18:16 by Hibernate Tools 3.4.0.CR1

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Entity: 
 */
@Entity
@Table(name = "bbs_sensitive")
public class Sensitive implements java.io.Serializable {

	/** 
	 * 主键.
	 */

	private Long id;

	/** 
	 * 敏感词.
	 */

	private String word;

	public Sensitive() {
	}

	public Sensitive(String word) {
		setWord(word);
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

	@Column(name = "word", length = 500)
	public String getWord() {
		return this.word;
	}

	public void setWord(String word) {
		this.word = word;
	}

}
