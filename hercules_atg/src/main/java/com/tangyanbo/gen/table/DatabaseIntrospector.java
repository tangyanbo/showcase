package com.tangyanbo.gen.table;

import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import com.tangyanbo.gen.core.StringUtil;
/**
 * @author chenjia
 */
public class DatabaseIntrospector {

	//public static String ORCALE_SQL_COMMENTS = "select comments  from DBA_COL_COMMENTS  where owner = ? and table_name = ? and column_name = ?";
	public static String ORCALE_SQL_COMMENTS = "select comments  from USER_COL_COMMENTS  where table_name = ? and column_name = ?";//add by yekai

	/**
	 * 获取表的信息
	 * 
	 * @param databaseMetaData
	 * @param catalogName
	 * @param schemaName
	 * @param tableName
	 * @param types
	 * @return
	 * @throws Exception
	 */
	public static java.util.Collection<Table> getTables(DatabaseMetaData databaseMetaData, String catalogName,
			String schemaName, String tableName, String[] types,String[] excludefields) throws Exception {
		List<Table> tables = new ArrayList<Table>();
		ResultSet rs = databaseMetaData.getTables(catalogName, schemaName, tableName, types);
		while (rs.next()) {
			Table table = new Table();

			table.setTableCat(rs.getString(Table.TABLE_CAT));
			table.setTableSchem(rs.getString(Table.TABLE_SCHEM));
			table.setTableName(rs.getString(Table.TABLE_NAME));
			table.setTableType(rs.getString(Table.TABLE_TYPE));
			table.setRemarks(rs.getString(Table.REMARKS));
			// table.setSelfReferencingColName(rs.getString(Table.SELF_REFERENCING_COL_NAME));
			// table.setRefGeneration(rs.getString(Table.REF_GENERATION));

			
			table.setColumns(getColumns(databaseMetaData,table,excludefields));
			table.setDateTimeColumns(getDatetimeColumns(databaseMetaData,table,excludefields));
			getFkTable(databaseMetaData, table);
			table.setPrimaryKeys(getPrimaryKeys(databaseMetaData, table));
			tables.add(table);

		}
		rs.close();
		return tables;

	}

	private static java.util.Collection<Column> getColumns(DatabaseMetaData databaseMetaData, Table table,String[] excludefields)
			throws Exception {
		java.util.Collection<Column> columns = new ArrayList<Column>();
		ResultSet rs = databaseMetaData.getColumns(table.getTableCat(), table.getTableSchem(), table.getTableName(),
				null);
		// OracleResultSetMetaData md = (OracleResultSetMetaData)
		// rs.getMetaData();
		// int k = md.getColumnCount();
		// for(int i=1;i<=k;i++){
		// System.out.println(md.getColumnName(i));
		// }
		String driver = databaseMetaData.getDriverName();
		boolean isOracle = driver.toUpperCase().lastIndexOf("ORACLE") > -1;
		while (rs.next()) {
			// for(int i=1;i<=k;i++){
			// System.out.println(rs.getString(i));
			// }
			// rs.getString("COMMENTS");

			
			Column column = new Column();
			column.setColumnName(rs.getString(Column.COLUMN_NAME));
			column.setDataType(rs.getInt(Column.DATA_TYPE));
			column.setTypeName(rs.getString(Column.TYPE_NAME));
			column.setColumnSize(rs.getInt(Column.COLUMN_SIZE));
			column.setDecimal_digits(rs.getInt(Column.DECIMAL_DIGITS));

			column.setNumPrecRadix(rs.getInt(Column.NUM_PREC_RADIX));
			column.setNullable(rs.getInt(Column.NULLABLE));
			String comments = null;

			column.setColumnDef(rs.getString(Column.COLUMN_DEF));

			column.setOrdinalPosition(rs.getInt(Column.ORDINAL_POSITION));
			column.setIsNullable(rs.getString(Column.IS_NULLABLE));
			String remarks = rs.getString(Column.REMARKS);
			
			
			if (isOracle) {
				comments = getOracleComments(databaseMetaData, table, column.getColumnName().toUpperCase());
			}
			column.setRemarks(StringUtil.isNotNullAndBlank(comments)? StringUtil.clearMistyChars(comments, "") : remarks);
			
			//排除系统默认字段
			if(!existInArray(excludefields,column.getColumnName()))
			{
				columns.add(column);
			}
		}
		rs.close();
		return columns;
	}
	
	/***
	 * 将日期类型的字段提取出来
	 * @param databaseMetaData
	 * @param table
	 * @param excludefields
	 * @return
	 * @throws Exception
	 */
	private static java.util.Collection<Column> getDatetimeColumns(DatabaseMetaData databaseMetaData, Table table,String[] excludefields)
	throws Exception {
		java.util.Collection<Column> columns =	getColumns( databaseMetaData,table,excludefields);
		
		java.util.Collection<Column> datetimeColumns= new ArrayList<Column>();
		
		for(Column _c:columns)
		{
			if(_c.getDataType()==Types.DATE||_c.getDataType()==Types.TIMESTAMP)
			{
				datetimeColumns.add(_c);
			}
		}
		return datetimeColumns;
	}
	
	
	/**
	 * 私有方法用于检查字段是否在列表中存在
	 * **/
	private static boolean existInArray(String[] array,String key)
	{
		for(String _a:array){
			if(_a.equalsIgnoreCase(key)){
				return true;
			}
		}
		return false;
	}

	private static java.util.Collection<Column> getPrimaryKeys(DatabaseMetaData databaseMetaData, Table table)
			throws Exception {
		java.util.Collection<Column> columns = new ArrayList<Column>();
		ResultSet rs = databaseMetaData
				.getPrimaryKeys(table.getTableCat(), table.getTableSchem(), table.getTableName());
		while (rs.next()) {

			String columnName = rs.getString(Column.COLUMN_NAME);
			Column column = findColumn(columnName, table.getColumns());
			column.setIsPk(Column.IS_PK_YES);
			columns.add(column);
		}
		rs.close();
		return columns;
	}

	
		
	
	private static Column findColumn(String columnName, java.util.Collection<Column> columns) {
		for (Iterator<Column> i = columns.iterator(); i.hasNext();) {
			Column column = i.next();
			if (columnName.equalsIgnoreCase(column.getColumnName())) {
				return column;

			}
		}
		return null;
	}

	private static String getOracleComments(DatabaseMetaData databaseMetaData, Table table, String columnName) {
		Connection conn;
		String comments = null;
		try {

			String driver = databaseMetaData.getDriverName();
			driver.toUpperCase().lastIndexOf("ORACLE");

			conn = databaseMetaData.getConnection();
			PreparedStatement st = conn.prepareStatement(ORCALE_SQL_COMMENTS);
			int i = 1;
		//	st.setString(i++, table.getTableSchem()); //add by yekai
			st.setString(i++, table.getTableName());
			st.setString(i++, columnName);
			ResultSet rs = st.executeQuery();
			if (rs.next()) {
				comments = rs.getString(1);
			}
			rs.close();
			st.close();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return comments;
	}

	private static void getFkTable(DatabaseMetaData databaseMetaData, Table table)
			throws SQLException {
		ResultSet rs = databaseMetaData.getExportedKeys(table.getTableCat(), table.getTableSchem(), table
				.getTableName());
		// null);
		while (rs.next()) {
			String fkTableName = rs.getString("FKTABLE_NAME");
			String fkColumnName = rs.getString("FKCOLUMN_NAME");
			String pkColumnName = rs.getString("PKCOLUMN_NAME");
			Fk fk = new Fk();
			fk.setFkColumn(fkColumnName);
			fk.setFkTable(fkTableName);
			fk.setPkColumn(pkColumnName);
			table.add(fk);
		}
		rs.close();
	}
}
