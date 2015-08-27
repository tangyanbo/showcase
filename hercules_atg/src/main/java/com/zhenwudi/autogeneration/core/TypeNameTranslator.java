package com.zhenwudi.autogeneration.core;
import java.sql.Types;
import java.util.HashMap;
import java.util.Map;

/**
 * TypeNameTranslator
 * @author 唐延波
 * @date 2015年8月18日
 */
public class TypeNameTranslator {
    
    private static Map<Integer, String> typeToName;
    private static Map<String, Integer> nameToType;
	private static Map<Integer, String> typeMap;
    
    static {
        typeToName = new HashMap<Integer, String>();
        typeToName.put(Types.ARRAY, "ARRAY"); //$NON-NLS-1$
        typeToName.put(Types.BIGINT, "BIGINT"); //$NON-NLS-1$
        typeToName.put(Types.BINARY, "BINARY"); //$NON-NLS-1$
        typeToName.put(Types.BIT, "BIT"); //$NON-NLS-1$
        typeToName.put(Types.BLOB, "BLOB"); //$NON-NLS-1$
        typeToName.put(Types.BOOLEAN, "BOOLEAN"); //$NON-NLS-1$
        typeToName.put(Types.CHAR, "CHAR"); //$NON-NLS-1$
        typeToName.put(Types.CLOB, "CLOB"); //$NON-NLS-1$
        typeToName.put(Types.DATALINK, "DATALINK"); //$NON-NLS-1$
        typeToName.put(Types.DATE, "DATE"); //$NON-NLS-1$
        typeToName.put(Types.DECIMAL, "NUMERIC"); //$NON-NLS-1$------------------------------------------
        typeToName.put(Types.DISTINCT, "DISTINCT"); //$NON-NLS-1$
        typeToName.put(Types.DOUBLE, "DOUBLE"); //$NON-NLS-1$
        typeToName.put(Types.FLOAT, "FLOAT"); //$NON-NLS-1$
        typeToName.put(Types.INTEGER, "INTEGER"); //$NON-NLS-1$
        typeToName.put(Types.JAVA_OBJECT, "JAVA_OBJECT"); //$NON-NLS-1$
        typeToName.put(Types.LONGVARBINARY, "LONGVARBINARY"); //$NON-NLS-1$
        typeToName.put(Types.LONGVARCHAR, "LONGVARCHAR"); //$NON-NLS-1$
        typeToName.put(Types.NULL, "NULL"); //$NON-NLS-1$
        typeToName.put(Types.NUMERIC, "NUMERIC"); //$NON-NLS-1$
        typeToName.put(Types.OTHER, "OTHER"); //$NON-NLS-1$
        typeToName.put(Types.REAL, "REAL"); //$NON-NLS-1$
        typeToName.put(Types.REF, "REF"); //$NON-NLS-1$
        typeToName.put(Types.SMALLINT, "SMALLINT"); //$NON-NLS-1$
        typeToName.put(Types.STRUCT, "STRUCT"); //$NON-NLS-1$
        typeToName.put(Types.TIME, "TIME"); //$NON-NLS-1$
        typeToName.put(Types.TIMESTAMP, "TIMESTAMP"); //$NON-NLS-1$
        typeToName.put(Types.TINYINT, "TINYINT"); //$NON-NLS-1$
        typeToName.put(Types.VARBINARY, "VARBINARY"); //$NON-NLS-1$
        typeToName.put(Types.VARCHAR, "VARCHAR"); //$NON-NLS-1$

        nameToType = new HashMap<String, Integer>();
        nameToType.put("ARRAY", Types.ARRAY); //$NON-NLS-1$
        nameToType.put("BIGINT", Types.BIGINT); //$NON-NLS-1$
        nameToType.put("BINARY", Types.BINARY); //$NON-NLS-1$
        nameToType.put("BIT", Types.BIT); //$NON-NLS-1$
        nameToType.put("BLOB", Types.BLOB); //$NON-NLS-1$
        nameToType.put("BOOLEAN", Types.BOOLEAN); //$NON-NLS-1$
        nameToType.put("CHAR", Types.CHAR); //$NON-NLS-1$
        nameToType.put("CLOB", Types.CLOB); //$NON-NLS-1$
        nameToType.put("DATALINK", Types.DATALINK); //$NON-NLS-1$
        nameToType.put("DATE", Types.DATE); //$NON-NLS-1$
        nameToType.put("DECIMAL", Types.DECIMAL); //$NON-NLS-1$
        nameToType.put("DISTINCT", Types.DISTINCT); //$NON-NLS-1$
        nameToType.put("DOUBLE", Types.DOUBLE); //$NON-NLS-1$
        nameToType.put("FLOAT", Types.FLOAT); //$NON-NLS-1$
        nameToType.put("INTEGER", Types.INTEGER); //$NON-NLS-1$
        nameToType.put("JAVA_OBJECT", Types.JAVA_OBJECT); //$NON-NLS-1$
        nameToType.put("LONGVARBINARY", Types.LONGVARBINARY); //$NON-NLS-1$
        nameToType.put("LONGVARCHAR", Types.LONGVARCHAR); //$NON-NLS-1$
        nameToType.put("NULL", Types.NULL); //$NON-NLS-1$
        nameToType.put("NUMERIC", Types.NUMERIC); //$NON-NLS-1$
        nameToType.put("OTHER", Types.OTHER); //$NON-NLS-1$
        nameToType.put("REAL", Types.REAL); //$NON-NLS-1$
        nameToType.put("REF", Types.REF); //$NON-NLS-1$
        nameToType.put("SMALLINT", Types.SMALLINT); //$NON-NLS-1$
        nameToType.put("STRUCT", Types.STRUCT); //$NON-NLS-1$
        nameToType.put("TIME", Types.TIME); //$NON-NLS-1$
        nameToType.put("TIMESTAMP", Types.TIMESTAMP); //$NON-NLS-1$
        nameToType.put("TINYINT", Types.TINYINT); //$NON-NLS-1$
        nameToType.put("VARBINARY", Types.VARBINARY); //$NON-NLS-1$
        nameToType.put("VARCHAR", Types.VARCHAR); //$NON-NLS-1$
        
        typeMap = new HashMap<Integer, String>();        
        typeMap.put(Types.ARRAY, Object.class.getSimpleName());
        typeMap.put(Types.BIGINT, Long.class.getSimpleName());
        typeMap.put(Types.BINARY, "byte[]"); //$NON-NLS-1$
        typeMap.put(Types.BIT, Boolean.class.getSimpleName());
        typeMap.put(Types.BLOB, "byte[]"); //$NON-NLS-1$
        typeMap.put(Types.BOOLEAN, Boolean.class.getSimpleName());
        typeMap.put(Types.CHAR, String.class.getSimpleName());
        typeMap.put(Types.CLOB, String.class.getSimpleName());
        typeMap.put(Types.DATALINK, Object.class.getSimpleName());
        typeMap.put(Types.DATE, java.sql.Date.class.getSimpleName());
        typeMap.put(Types.DISTINCT, Object.class.getSimpleName());
        typeMap.put(Types.DOUBLE, Double.class.getSimpleName());
        typeMap.put(Types.FLOAT, Float.class.getSimpleName());
        typeMap.put(Types.INTEGER, Integer.class.getSimpleName());
        typeMap.put(Types.JAVA_OBJECT, Object.class.getSimpleName());
        typeMap.put(Types.LONGVARBINARY, "byte[]"); //$NON-NLS-1$
        typeMap.put(Types.LONGVARCHAR, String.class.getSimpleName());
        typeMap.put(Types.NULL, Object.class.getSimpleName());
        typeMap.put(Types.OTHER, Object.class.getSimpleName());
        typeMap.put(Types.REAL, Float.class.getSimpleName());
        typeMap.put(Types.REF, Object.class.getSimpleName());
        typeMap.put(Types.SMALLINT, Short.class.getSimpleName());
        typeMap.put(Types.STRUCT, Object.class.getSimpleName());
        typeMap.put(Types.TIME, java.sql.Time.class.getSimpleName());
        typeMap.put(Types.TIMESTAMP, java.util.Date.class.getSimpleName());
        typeMap.put(Types.TINYINT, Byte.class.getSimpleName());
        typeMap.put(Types.VARBINARY, "byte[]"); //$NON-NLS-1$
        typeMap.put(Types.VARCHAR, String.class.getSimpleName());
        typeMap.put(Types.DECIMAL,Long.class.getSimpleName()); //$NON-NLS-1$--------
        typeMap.put(Types.NUMERIC,java.math.BigDecimal.class.getSimpleName()); 
       
    }

    /**
     * Utility Class - no instances
     */
    private TypeNameTranslator() {
        super();
    }

    /**
     * Translates from a java.sql.Types values to the proper iBATIS
     * string representation of the type. 
     * 
     * @param jdbcType a value from java.sql.Types
     * @return the iBATIS String representation of a JDBC type
     */
    public static String getJdbcTypeName(int jdbcType) {
        String answer = typeToName.get(jdbcType);
        if (answer == null) {
            answer = "OTHER"; //$NON-NLS-1$
        }
	    
        return answer;
    }
    /**
     * Translates from the string representation of the type to the
     * java.sql.Types value. 
     * 
     * @param jdbcTypeName the iBATIS String representation of a JDBC type
     * @return a value from java.sql.Types
     */
    public static int getJdbcType(String jdbcTypeName) {
        Integer answer = nameToType.get(jdbcTypeName);
        if (answer == null) {
            answer = Types.OTHER;
        }
        
        return answer;
    }
    
    public static String getJavaType(int jdbcType) {
        String answer = typeMap.get(jdbcType);
        if (answer == null) {
            answer = "Object";
        }
        return answer;
    }
    
   
}

