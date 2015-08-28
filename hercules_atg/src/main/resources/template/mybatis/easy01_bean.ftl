package ${config.cfg_easy_module_package}.bean;


import java.util.HashSet;
import java.util.Set;

import java.util.Date;

/**
 * ${table.className}
 * @author 唐延波
 * @date 
 */
public class ${table.className} implements java.io.Serializable {

	<#--属性-->
	<#list table.columns as c >
	  
	/**
	* ${c.remarks?if_exists}
	*/    
    private ${c.javaType} ${c.columnFieldName};
    
	</#list>

	<#--getter and setter -->
    <#list table.columns as c >	
	/**
	 * 获取 ${c.remarks?if_exists}
	 * @return
	 */	
	public ${c.javaType} get${c.columnNameFcu}() {
		return ${c.columnFieldName};
	}

	/**
	 * 设置 ${c.remarks?if_exists}
	 * @param ${c.columnFieldName}
	 */
	public void set${c.columnNameFcu}(${c.javaType} ${c.columnFieldName}) {
		this.${c.columnFieldName} = ${c.columnFieldName};
	}

</#list>
}
