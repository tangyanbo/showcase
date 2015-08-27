package com.tangyanbo.gen.table;
import java.sql.DatabaseMetaData;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Collection;
import java.util.Iterator;

/**
 * @author chenjia
 */
public class Compare {

	public static void CompareTables(DatabaseMetaData databaseMetaData,
			String catalogName, String schemaName, Table table,
			String[] types) {
		
		try {
			ResultSet rs = databaseMetaData.getTables(catalogName, schemaName, table.getTableName(),
					 types);
			CompareColumns( databaseMetaData, catalogName,  schemaName,   table);
			ComparegetPrimaryKeys( databaseMetaData, catalogName,  schemaName,   table);
			rs.close();
		} catch (SQLException e) {
			System.out.println(table.getTableName()+":"+e.getMessage());
			
		}

	}
	
	public static void CompareColumns(DatabaseMetaData databaseMetaData,String catalogName, String schemaName,  Table table){
		Collection<Column> cls = table.getColumns();
		
		for(Iterator<Column> i = cls.iterator();i.hasNext();){
			Column c = i.next();
			try {
				ResultSet rs = databaseMetaData.getColumns(catalogName,
						schemaName, table.getTableName(), c.getColumnName());
				if(rs.next()){
					CompareColumn( rs,  c  );
				}else{
					System.out.println("            "+c.getColumnName() +":不存在");
				}
				
				rs.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
	}
	private static void CompareColumn(ResultSet rs, Column c  ) {
		try {
			int i= rs.getInt(Column.DATA_TYPE);
			int s= rs.getInt(Column.COLUMN_SIZE);
			if(i!=c.dataType){
				System.out.println(c.columnName+":类型不一致！");
			}
			if(s!=c.column_size){
				System.out.println(c.columnName+":长度不一致！");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	private static void ComparegetPrimaryKeys(DatabaseMetaData databaseMetaData,String catalogName, String schemaName,  Table table ) {
		Collection<Column> cls = table.getPrimaryKeys();
		
		
		ResultSet rs;
		try {
			rs = databaseMetaData.getPrimaryKeys(catalogName,
					schemaName, table.getTableName());
			while (rs.next()) {

				
				String columnName= rs.getString(Column.COLUMN_NAME);
				Column column = findColumn(columnName,table.getPrimaryKeys());
				if(column==null){
					System.out.println("           +++++++++ "+columnName+"主键不一致！");
				}
			
			}
			rs.close();	
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
	
		private static Column findColumn(String columnName, java.util.Collection<Column> columns){
			for(Iterator<Column> i = columns.iterator();i.hasNext();){
				Column column = i.next();
				if(columnName.equalsIgnoreCase(column.getColumnName())){
					return column;
					
				}
			}
			return null;
		}
	
}

	  



