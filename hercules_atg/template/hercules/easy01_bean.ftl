package ${config.cfg_easy_module_package}.bean;

import static javax.persistence.GenerationType.IDENTITY;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OrderBy;
import javax.persistence.Table;
import java.util.Date;

/**
 * ${table.className}
 * @author 唐延波
 * @date 
 */
@Entity
@Table(name = "${table.tableName}")
public class ${table.className} implements java.io.Serializable {

	<#--属性-->
	<#list table.columns as c >
	  <#if (c.javaType=='java.sql.Timestamp')||(c.javaType=='java.util.Date')>
	    <#if (c.columnName!='created_date')&&(c.columnName!='updated_date')&&(c.columnName!='end_date')>
	/**
	* ${c.remarks?if_exists}
	*/    
    private ${c.javaType} ${c.columnFieldName};
    
        </#if> 
	  <#else>
	  <#if (c.columnName!='created_user_cd')&&(c.columnName!='updated_user_cd')>
	/**
	* ${c.remarks?if_exists}
	*/
	private ${c.javaType} ${c.columnFieldName};
	
	 </#if> 
	  </#if>
	</#list>

	<#--getter and setter -->
<#list table.columns as c >	
	/**
	 * 获取 ${c.remarks?if_exists}
	 * @return
	 */
	<#if c.isPk == 'YES'>
	@Id
	@GeneratedValue(strategy = IDENTITY)
	</#if> 
	public ${c.javaType} get${c.columnNameFcu}() {
		return ${c.columnFieldName};
	}

	/**
	 * 设置 ${c.remarks?if_exists}
	 * @param ${c.columnName}
	 */
	public void set${c.columnNameFcu}(${c.javaType} ${c.columnFieldName}) {
		this.${c.columnFieldName} = ${c.columnFieldName};
	}

</#list>
}
