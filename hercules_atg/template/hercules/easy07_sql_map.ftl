<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE sqlMap PUBLIC "-//ibatis.apache.org//DTD SQL Map 2.0//EN" "http://ibatis.apache.org/dtd/sql-map-2.dtd">
<sqlMap namespace="${table.lowerCaseFirstClassName}">

  <!--用于模糊查询-->
     <select id="select_${table.lowerCaseFirstClassName}List" parameterClass="${config.cfg_easy_module_package}.model.${table.className}QueryBean" resultClass="java.util.HashMap">
          SELECT  
		 <#if (table.primaryKeys?size==1)>
		 	<#list table.primaryKeys as c >
		 		${c.getColumnNameUpperCase()}  <!--${c.remarks?if_exists}-->
		 	</#list>
		 </#if>
		 <#list table.columns as c >
		 <#list table.primaryKeys as c1 > 
		  	<#if (c1.columnName!=c.columnName)>
		  		,${c.getColumnNameUpperCase()}  <!--${c.remarks?if_exists}-->
			</#if>
		 </#list>
		 </#list>
		  FROM ${table.tableName}
		  WHERE 1=1 AND ${table.tableName}.END_DATE=TO_DATE('9999-12-31', 'yyyy-MM-dd')	 
		  <#list table.columns as c >
		     <#if (c.javaType=='java.lang.String') > 
				 <isNotEmpty prepend=" and " property="${c.columnName}">
					(${c.getColumnNameUpperCase()}) Like '%'||(#${c.columnName}:VARCHAR#)||'%'
			    </isNotEmpty>    
			 </#if>
			 <#if (c.javaType=='java.math.BigDecimal')||(c.javaType=='java.lang.Long') ||(c.javaType=='java.lang.Integer')||(c.javaType=='java.lang.Float')||(c.javaType=='java.lang.Double')||(c.javaType=='Boolean')>
				<isNotNull property="${c.columnName}" prepend="and" >
				    (${c.getColumnNameUpperCase()}) =#${c.columnName}#
			    </isNotNull>
			</#if>
			 <#if (c.javaType=='java.util.Date')||(c.javaType=='java.sql.Timestamp')>
			 	<isNotEmpty prepend=" and " property="${c.columnName}">
					TO_CHAR(${c.getColumnNameUpperCase()}, 'yyyy-MM-dd')	=TO_CHAR((#${c.columnName}:DATE#),'yyyy-MM-dd')
			    </isNotEmpty>    
		 	 </#if> 
		   </#list>
			   <isNotEmpty property="orderStr">
					$orderStr$
			   </isNotEmpty>
     </select>
     
     <!--用于查询总数-->
     <select id="select_${table.lowerCaseFirstClassName}List_count" parameterClass="${config.cfg_easy_module_package}.model.${table.className}QueryBean" resultClass="int">
			SELECT  count(1)
		    FROM ${table.tableName}
			WHERE 1=1 AND ${table.tableName}.END_DATE=TO_DATE('9999-12-31', 'yyyy-MM-dd')	
		    <#list table.columns as c >
		     <#if (c.javaType=='java.lang.String') > 
				 <isNotEmpty prepend=" and " property="${c.columnName}">
					(${c.getColumnNameUpperCase()}) Like '%'||(#${c.columnName}:VARCHAR#)||'%'
			    </isNotEmpty>    
			 </#if>
			 <#if (c.javaType=='java.math.BigDecimal')||(c.javaType=='java.lang.Long') ||(c.javaType=='java.lang.Integer')||(c.javaType=='java.lang.Float')||(c.javaType=='java.lang.Double')||(c.javaType=='Boolean')>
				 <isNotNull property="${c.columnName}" prepend="and" >
					(${c.getColumnNameUpperCase()}) =#${c.columnName}#
				 </isNotNull>
			 </#if>
			 <#if (c.javaType=='java.util.Date')||(c.javaType=='java.sql.Timestamp')>
			 	<isNotEmpty prepend=" and " property="${c.columnName}">
					TO_CHAR(${c.getColumnNameUpperCase()}, 'yyyy-MM-dd')=TO_CHAR((#${c.columnName}:DATE#),'yyyy-MM-dd')
			    </isNotEmpty>    
			 </#if>
		    </#list>
	 </select>


</sqlMap>