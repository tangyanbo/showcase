package com.zhenwudi.autogeneration.core;

import java.util.ArrayList;
import java.util.Iterator;
/**
 * @author chenjia
 */
public class Table {
	
	/*
*  1.  TABLE_CAT String => 表类别（可为 null）
   2. TABLE_SCHEM String => 表模式（可为 null）
   3. TABLE_NAME String => 表名称
   4. TABLE_TYPE String => 表类型。典型的类型是 "TABLE"、"VIEW"、"SYSTEM TABLE"、"GLOBAL TEMPORARY"、"LOCAL TEMPORARY"、"ALIAS" 和 "SYNONYM"。
   5. REMARKS String => 表的解释性注释
   6. TYPE_CAT String => 类型的类别（可为 null）
   7. TYPE_SCHEM String => 类型模式（可为 null）
   8. TYPE_NAME String => 类型名称（可为 null）
   9. SELF_REFERENCING_COL_NAME String => 有类型表的指定 "identifier" 列的名称（可为 null）
  10. REF_GENERATION String => 指定在 SELF_REFERENCING_COL_NAME 中创建值的方式。这些值为 "SYSTEM"、"USER" 和 "DERIVED"。（可能为 null） 
	 */
	final static String TABLE_CAT="TABLE_CAT";
	final static String TABLE_SCHEM="TABLE_SCHEM";
	final static String TABLE_NAME="TABLE_NAME";
	final static String TABLE_TYPE="TABLE_TYPE";
	final static String REMARKS="REMARKS";
	final static String TYPE_CAT="TYPE_CAT";
	final static String TYPE_SCHEM="TYPE_SCHEM";
	final static String TYPE_NAME="TYPE_NAME";
	final static String SELF_REFERENCING_COL_NAME="SELF_REFERENCING_COL_NAME";
	final static String REF_GENERATION="REF_GENERATION";
	
	final static String tablePrefix = "bbs_";
	
	
	String tableCat;
	String tableSchem;
	String tableName;
	String tableType;
	String remarks;
	String typeCat;
	String typeSchem;
	String typeName;
	String selfReferencingColName;
	String refGeneration;


	
	java.util.List fk = new ArrayList();
	
	java.util.Collection<Column> columns=new ArrayList<Column>();
	java.util.Collection<Column> pkColumns=new ArrayList<Column>();
	java.util.Collection<Column> dateTimeColumns=new ArrayList<Column>();
	
	/**
	 * 主键
	 * @return
	 */
	public java.util.Collection<Column> getPrimaryKeys() {
		return pkColumns;
	}
	/**
	 * 主键
	 */
	public void setPrimaryKeys(java.util.Collection<Column> pkColumns) {
		this.pkColumns = pkColumns;
	}
	/**
	 * 所有的列
	 * @return
	 */
	public java.util.Collection<Column> getColumns() {
		return columns;
	}
	/**
	 * 所有的列
	 * @param columns
	 */
	public void setColumns(java.util.Collection<Column> columns) {
		this.columns = columns;
	}
	
	public java.util.Collection<Column> getDateTimeColumns() {
		return dateTimeColumns;
	}
	
	public void setDateTimeColumns(java.util.Collection<Column> dateTimeColumns) {
		this.dateTimeColumns = dateTimeColumns;
	}
	
	/**
	 * REF_GENERATION String => 指定在 SELF_REFERENCING_COL_NAME 中创建值的方式。这些值为 "SYSTEM"、"USER" 和 "DERIVED"。（可能为 null） 
	 * @return
	 */
	public String getRefGeneration() {
		return refGeneration;
	}
	/**
	 * REF_GENERATION String => 指定在 SELF_REFERENCING_COL_NAME 中创建值的方式。这些值为 "SYSTEM"、"USER" 和 "DERIVED"。（可能为 null） 
	 * @param refGeneration
	 */
	public void setRefGeneration(String refGeneration) {
		this.refGeneration = refGeneration;
	}
	/**
	 * REMARKS String => 表的解释性注释
	 * @return
	 */
	public String getRemarks() {
		return remarks;
	}
	/**
	 * REMARKS String => 表的解释性注释
	 * @param remarks
	 */
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	/**
	 * SELF_REFERENCING_COL_NAME String => 有类型表的指定 "identifier" 列的名称（可为 null）
	 * @return
	 */
	public String getSelfReferencingColName() {
		return selfReferencingColName;
	}
	/**
	 * SELF_REFERENCING_COL_NAME String => 有类型表的指定 "identifier" 列的名称（可为 null）
	 * @param selfReferencingColName
	 */
	public void setSelfReferencingColName(String selfReferencingColName) {
		this.selfReferencingColName = selfReferencingColName;
	}
	/**
	 * TABLE_CAT String => 表类别（可为 null）
	 * @return
	 */
	public String getTableCat() {
		return tableCat;
	}
	/**
	 * TABLE_CAT String => 表类别（可为 null）
	 * @param tableCat
	 */
	public void setTableCat(String tableCat) {
		this.tableCat = tableCat;
	}
	/**
	 * TABLE_NAME String => 表名称
	 * @return
	 */
	public String getTableName() {
		return tableName;
	}
	/**
	 * TABLE_NAME String => 表名称
	 * @param tableName
	 */
	public void setTableName(String tableName) {
		this.tableName = tableName;
	}
	/**
	 * TABLE_SCHEM String => 表模式（可为 null）
	 * @return
	 */
	public String getTableSchem() {
		return tableSchem;
	}
	/**
	 * TABLE_SCHEM String => 表模式（可为 null）
	 * @param tableSchem
	 */
	public void setTableSchem(String tableSchem) {
		this.tableSchem = tableSchem;
	}
	/**
	 * TABLE_TYPE String => 表类型。典型的类型是 "TABLE"、"VIEW"、"SYSTEM TABLE"、"GLOBAL TEMPORARY"、"LOCAL TEMPORARY"、"ALIAS" 和 "SYNONYM"。
	 * @return
	 */
	public String getTableType() {
		return tableType;
	}
	/**
	 * TABLE_TYPE String => 表类型。典型的类型是 "TABLE"、"VIEW"、"SYSTEM TABLE"、"GLOBAL TEMPORARY"、"LOCAL TEMPORARY"、"ALIAS" 和 "SYNONYM"。
	 * @param tableType
	 */
	public void setTableType(String tableType) {
		this.tableType = tableType;
	}
	/**
	 * TYPE_CAT String => 类型的类别（可为 null）
	 * @return
	 */
	public String getTypeCat() {
		return typeCat;
	}
	/**
	 * TYPE_CAT String => 类型的类别（可为 null）
	 * @param typeCat
	 */
	public void setTypeCat(String typeCat) {
		this.typeCat = typeCat;
	}
	/**
	 * TYPE_NAME String => 类型名称（可为 null）
	 * @return
	 */
	public String getTypeName() {
		return typeName;
	}
	/**
	 * TYPE_NAME String => 类型名称（可为 null）
	 * @param typeName
	 */
	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}
	/**
	 * TYPE_SCHEM String => 类型模式（可为 null）
	 * @return
	 */
	public String getTypeSchem() {
		return typeSchem;
	}
	/**
	 * TYPE_SCHEM String => 类型模式（可为 null）
	 * @param typeSchem
	 */
	public void setTypeSchem(String typeSchem) {
		this.typeSchem = typeSchem;
	}
	
	
	
	public String getClassName(){
		//String tbName = tableName.substring(tablePrefix.length());
		return StringUtil.getCamelCaseString(tableName, true);
	}
	
	/**
	 * 用于部分小写
	 * @return
	 */
	public String getLowerCaseFirstClassName(){
		return getLowerCaseFirst(StringUtil.getCamelCaseString(tableName, true));
	}
	
	



	/**
	 * 方法名
	 ***/
	public String getClassNameFcu(){
		return StringUtil.getCamelCaseString(tableName, false);
	}
	


	/**
	 * 类名
	 ***/
	public String getModelClassName(){
		return getClassName();
	}
	

	/**
	 * 首字母小写的内部封装方法
	 * @param val
	 * @return
	 */
	public static String getLowerCaseFirst(String val)
	{
		if(val!=null||!"".equalsIgnoreCase(val)){
			   char c = val.charAt(0);
		       c = Character.toLowerCase(c);
		       return c + val.substring(1);
		}
		return val;
	}


	
	
	public java.util.Collection getNotPkColumns(){
		java.util.Collection c = new java.util.ArrayList();
		for(Iterator<Column> i = columns.iterator();i.hasNext();){
			Column column = i.next();
			if(!isPkColumns(column)){
				column.setIsPk(Column.IS_PK_NO);
				c.add(column);
			}
		}
		return c;
	}
	
	public boolean isPkColumns(Column column){
		for(Iterator<Column> i = pkColumns.iterator();i.hasNext();){
			Column pk = i.next();
			if(pk.getColumnName().equalsIgnoreCase(column.getColumnName())){
				return true;
			}
			
		}
		return false;
	}
	
	public void add(Fk fk){
		this.fk.add(fk);
	}
	public java.util.List getFk() {
		return fk;
	}
	
	
	
	
}
