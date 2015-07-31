package com.zhenwudi.autogeneration.core;

import java.sql.Types;
/**
 * @author chenjia
 */
public class Column {
	/*
	# COLUMN_NAME String => 列名称
	# DATA_TYPE int => 来自 java.sql.Types 的 SQL 类型
	# TYPE_NAME String => 数据源依赖的类型名称，对于 UDT，该类型名称是完全限定的
	# COLUMN_SIZE int => 列的大小。对于 char 或 date 类型，列的大小是最大字符数，对于 numeric 和 decimal 类型，列的大小就是精度。
	# BUFFER_LENGTH 未被使用。
	# DECIMAL_DIGITS int => 小数部分的位数
	# NUM_PREC_RADIX int => 基数（通常为 10 或 2）
	# NULLABLE int => 是否允许使用 NULL。

	    * columnNoNulls - 可能不允许使用 NULL 值
	    * columnNullable - 明确允许使用 NULL 值
	    * columnNullableUnknown - 不知道是否可使用 null 

	# REMARKS String => 描述列的注释（可为 null）
	# COLUMN_DEF String => 默认值（可为 null）
	# SQL_DATA_TYPE int => 未使用
	# SQL_DATETIME_SUB int => 未使用
	# CHAR_OCTET_LENGTH int => 对于 char 类型，该长度是列中的最大字节数
	# ORDINAL_POSITION int => 表中的列的索引（从 1 开始）
	# IS_NULLABLE String => "NO" 表示明确不允许列使用 NULL 值，"YES" 表示可能允许列使用 NULL 值。空字符串表示没人知道是否允许使用 null 值。
	 
	*/ 
	final static String  COLUMN_NAME="COLUMN_NAME";
	final static String  DATA_TYPE="DATA_TYPE";
	final static String TYPE_NAME="TYPE_NAME"; 		
	final static String COLUMN_SIZE="COLUMN_SIZE"; 
	final static String DECIMAL_DIGITS="DECIMAL_DIGITS";
	final static String NUM_PREC_RADIX="NUM_PREC_RADIX";
	final static String NULLABLE="NULLABLE";
	final static String REMARKS ="REMARKS";
	final static String COLUMN_DEF="COLUMN_DEF";
	final static String CHAR_OCTET_LENGTH="CHAR_OCTET_LENGTH";
	final static String ORDINAL_POSITION="ORDINAL_POSITION";
	final static String IS_NULLABLE="IS_NULLABLE";
	
	final static String IS_PK_YES="YES";
	final static String IS_PK_NO="NO";
	
	String  columnName;
	int dataType;
	String type_name; 		
	int column_size; 
	int decimal_digits;
	int num_prec_radix;
	int nullable;
	String remarks;
	String columnDef;
	int charOctetLength;
	int OrdinalPosition;
	String isNullable;
	String isPk = IS_PK_NO;
	
	
	
	//是否是主键
	public String getIsPk() {
		return isPk;
	}
	public void setIsPk(String isPk) {
		this.isPk = isPk;
	}
	
	/**
	 * CHAR_OCTET_LENGTH int => 对于 char 类型，该长度是列中的最大字节数
	 * @return
	 */
	public int getCharOctetLength() {
		return charOctetLength;
	}
	/**
	 * CHAR_OCTET_LENGTH int => 对于 char 类型，该长度是列中的最大字节数
	 * @param charOctetLength
	 */
	public void setCharOctetLength(int charOctetLength) {
		this.charOctetLength = charOctetLength;
	}
	/**
	 * COLUMN_SIZE int => 列的大小。对于 char 或 date 类型，列的大小是最大字符数，对于 numeric 和 decimal 类型，列的大小就是精度。
	 * @return
	 */
	public int getColumnSize() {
		return column_size;
	}
	/**
	 * COLUMN_SIZE int => 列的大小。对于 char 或 date 类型，列的大小是最大字符数，对于 numeric 和 decimal 类型，列的大小就是精度。
	 * @param column_size
	 */
	public void setColumnSize(int column_size) {
		this.column_size = column_size;
	}
	/**
	 * COLUMN_DEF String => 默认值（可为 null）
	 * @return
	 */
	public String getColumnDef() {
		return columnDef;
	}
	/**
	 * COLUMN_DEF String => 默认值（可为 null）
	 * @param columnDef
	 */
	public void setColumnDef(String columnDef) {
		this.columnDef = columnDef;
	}
	/**
	 *  COLUMN_NAME String => 列名称
	 * @return
	 */
	public String getColumnName() {
		return columnName.toLowerCase();
	}
	/**
	 *  COLUMN_NAME String => 列名称
	 * @param columnName
	 */
	public void setColumnName(String columnName) {
		this.columnName = columnName;
	}
	/**
	 * DATA_TYPE int => 来自 java.sql.Types 的 SQL 类型
	 * @return
	 */
	public int getDataType() {
		return dataType;
	}
	/**
	 * DATA_TYPE int => 来自 java.sql.Types 的 SQL 类型
	 * @param dataType
	 */
	public void setDataType(int dataType) {
		this.dataType = dataType;
	}
	/**
	 * DECIMAL_DIGITS int => 小数部分的位数
	 * @return
	 */
	public int getDecimal_digits() {
		return decimal_digits;
	}
	/**
	 * DECIMAL_DIGITS int => 小数部分的位数
	 * @param decimal_digits
	 */
	public void setDecimal_digits(int decimal_digits) {
		this.decimal_digits = decimal_digits;
	}
	/**
	 * IS_NULLABLE String => "NO" 表示明确不允许列使用 NULL 值，"YES" 表示可能允许列使用 NULL 值。空字符串表示没人知道是否允许使用 null 值。
	 * @return
	 */
	public String getIsNullable() {
		return isNullable;
	}
	/**
	 * IS_NULLABLE String => "NO" 表示明确不允许列使用 NULL 值，"YES" 表示可能允许列使用 NULL 值。空字符串表示没人知道是否允许使用 null 值。
	 * @param isNullable
	 */
	public void setIsNullable(String isNullable) {
		this.isNullable = isNullable;
	}
	/**
	 * # NULLABLE int => 是否允许使用 NULL。

	    * columnNoNulls - 可能不允许使用 NULL 值
	    * columnNullable - 明确允许使用 NULL 值
	    * columnNullableUnknown - 不知道是否可使用 null
	 * @return
	 */
	public int getNullable() {
		return nullable;
	}
	/**
	 * # NULLABLE int => 是否允许使用 NULL。

	    * columnNoNulls - 可能不允许使用 NULL 值
	    * columnNullable - 明确允许使用 NULL 值
	    * columnNullableUnknown - 不知道是否可使用 null
	 * @param nullable
	 */
	public void setNullable(int nullable) {
		this.nullable = nullable;
	}
	/**
	 * # NUM_PREC_RADIX int => 基数（通常为 10 或 2）
	 * @return
	 */
	public int getNumPrecRadix() {
		return num_prec_radix;
	}
	/**
	 * # NUM_PREC_RADIX int => 基数（通常为 10 或 2）
	 * @param num_prec_radix
	 */
	public void setNumPrecRadix(int num_prec_radix) {
		this.num_prec_radix = num_prec_radix;
	}
	/**
	 * # ORDINAL_POSITION int => 表中的列的索引（从 1 开始）
	 * @return
	 */
	public int getOrdinalPosition() {
		return OrdinalPosition;
	}
	/**
	 * # ORDINAL_POSITION int => 表中的列的索引（从 1 开始）
	 * @param ordinalPosition
	 */
	public void setOrdinalPosition(int ordinalPosition) {
		OrdinalPosition = ordinalPosition;
	}
	/**
	 * REMARKS String => 描述列的注释（可为 null）
	 * @return
	 */
	public String getRemarks() {
		return remarks;
	}
	/**
	 * REMARKS String => 描述列的注释（可为 null）
	 * @param remarks
	 */
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	/**
	 * # TYPE_NAME String => 数据源依赖的类型名称，对于 UDT，该类型名称是完全限定的
	 * @return
	 */
	public String getTypeName() {
		return type_name;
	}
	/**
	 * # TYPE_NAME String => 数据源依赖的类型名称，对于 UDT，该类型名称是完全限定的
	 * @param type_name
	 */
	public void setTypeName(String type_name) {
		this.type_name = type_name;
	}
	public String getJavaType() {
		if(dataType==Types.NUMERIC || dataType==Types.DECIMAL){
				if(column_size<10){
					return decimal_digits==0? Integer.class.getName():TypeNameTranslator.getJavaType(dataType);
				}
				//带有小数精度的都作为  BigDecimal 处理
				return decimal_digits==0? Long.class.getName():java.math.BigDecimal.class.getName();
		}
		
		//INTEGER 作为Long 处理
		if(dataType==Types.INTEGER){
			return java.lang.Long.class.getName();
		}
		return TypeNameTranslator.getJavaType(dataType);
	}
	
	
	/**
	 * 用于  rs.getString("xxx"); 类似方法
	 * @return
	 */
	public String getResultSetGetNameFcu()
	{
		String simple =this.getJavaType();
		simple =simple.substring(simple.lastIndexOf(".")+1, simple.length());
		return simple;
	}
	
	
	public String getJdbcDateType() {
		return TypeNameTranslator.getJdbcTypeName(dataType);
	}
	
	public String getPropertyName() {
		return StringUtil.getCamelCaseString(columnName, false);
	}
	
	public String getPropertyNameFcu() {
		return StringUtil.getCamelCaseString(columnName, true);
	}
	
	public String getColumnNameFcu()
	{
		return getUpperCaseFirst(columnName.toLowerCase());
	}
	public String getColumnNameUpperCase()
	{
		return columnName.toUpperCase();
	}

	
	/**
	 * 首字母大写的内部封装方法
	 * @param val
	 * @return
	 */
	private static String getUpperCaseFirst(String val)
	{
		if(val!=null||!"".equalsIgnoreCase(val)){
			   char c = val.charAt(0);
		       c = Character.toUpperCase(c);
		       return c + val.substring(1);
		}
		return val;
	}

	
	
}
