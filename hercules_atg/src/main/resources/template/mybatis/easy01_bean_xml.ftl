<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE mapper PUBLIC "-//mybatis.org//DTD Mapper 3.0//EN" "http://mybatis.org/dtd/mybatis-3-mapper.dtd" >
<mapper namespace="${config.cfg_easy_module_package}.dao.${table.className}Mapper" >
  <resultMap id="BaseResultMap" type="${config.cfg_easy_module_package}.dao.${table.className}" >
  <#list table.columns as c >
  	<#if c.isPk == 'YES'>
  	<id column="${c.columnName}" property="${c.columnFieldName}" jdbcType="${c.jdbcType}" />
  	<#else>
	<result column="${c.columnName}" property="${c.columnFieldName}" jdbcType="${c.jdbcType}" />
	</#if>  	
  </#list>
  </resultMap>

  <insert id="insert" parameterType="com.bypay.forpay.dao.${table.className}" >
  insert into ${table.tableName} (
		  <#list table.columns as c >
		  ${c.columnName}<#if c?has_next>,</#if>
		  </#list>
    )
  values (
		  <#list table.columns as c >
		  <#noparse>#{</#noparse>${c.columnFieldName},jdbcType=${c.jdbcType}<#noparse>}</#noparse><#if c?has_next>,</#if>		  		  
		  </#list>
		  )
</insert>
</mapper>