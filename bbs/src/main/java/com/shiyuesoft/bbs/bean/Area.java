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
@Table(name = "bbs_area")
public class Area implements java.io.Serializable {

	/** 
	 * 分区id.
	 */

	private Long areaId;

	/** 
	 * 分区名称.
	 */

	private String areaName;

	/** 
	 * 分区版主.
	 */

	private Long areaMaster;

	/** 
	 * 序号.
	 */

	private Integer soer;

	private Set<Plate> plates = new HashSet<Plate>(0);

	private Set<AreaMaster> areaMasters = new HashSet<AreaMaster>(0);

	public Area() {
	}

	public Area(String areaName, Long areaMaster, Integer soer, Set<Plate> plates, Set<AreaMaster> areaMasters) {
		setAreaName(areaName);
		setAreaMaster(areaMaster);
		setSoer(soer);
		setPlates(plates);
		setAreaMasters(areaMasters);
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "area_id", unique = true, nullable = false)
	public Long getAreaId() {
		return this.areaId;
	}

	public void setAreaId(Long areaId) {
		this.areaId = areaId;
	}

	@Column(name = "area_name", length = 100)
	public String getAreaName() {
		return this.areaName;
	}

	public void setAreaName(String areaName) {
		this.areaName = areaName;
	}

	@Column(name = "area_master")
	public Long getAreaMaster() {
		return this.areaMaster;
	}

	public void setAreaMaster(Long areaMaster) {
		this.areaMaster = areaMaster;
	}

	@Column(name = "soer")
	public Integer getSoer() {
		return this.soer;
	}

	public void setSoer(Integer soer) {
		this.soer = soer;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "area")
	public Set<Plate> getPlates() {
		return this.plates;
	}

	public void setPlates(Set<Plate> plates) {
		this.plates = plates;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "area")
	public Set<AreaMaster> getAreaMasters() {
		return this.areaMasters;
	}

	public void setAreaMasters(Set<AreaMaster> areaMasters) {
		this.areaMasters = areaMasters;
	}

}
