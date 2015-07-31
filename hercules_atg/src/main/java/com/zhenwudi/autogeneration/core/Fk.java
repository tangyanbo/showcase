package com.zhenwudi.autogeneration.core;

/** 
 * @author chenjia
 */
public class Fk {
	String fkTable;
	String fkColumn;
	String pkColumn;
	public String getFkColumn() {
		return fkColumn;
	}
	public void setFkColumn(String fkColumn) {
		this.fkColumn = fkColumn;
	}
	public String getFkTable() {
		return fkTable;
	}
	public void setFkTable(String fkTable) {
		this.fkTable = fkTable;
	}
	public String getPkColumn() {
		return pkColumn;
	}
	public void setPkColumn(String pkColumn) {
		this.pkColumn = pkColumn;
	}
	public String getPkPropertyName() {
		return StringUtil.getCamelCaseString(pkColumn, false);
	}

}
