package ${config.cfg_easy_module_package}.model.dto;
import com.hercules.database.dto.impl.BaseDtoImpl;
import com.hercules.database.util.Constant;
import com.hercules.dto.annotation.AddParentClass;
import com.hercules.dto.annotation.EntityPK;
import java.util.Date;

/**
 * 类功能:自动代码生成模板 DTO模板
 * <p>创建者:</p>
 * <p>创建时间:</p>
 * <p>修改者:</p>
 * <p>修改时间:</p>
 * <p>修改原因：</p>
 * <p>审核者:</p>
 * <p>审核时间:</p>
 * <p>审核意见：</p>
 * 
 * 规约开启方式 用于规约符合我们要求的对象
 * 1. 设置   AddParentClass = true
 * 2. 类       extends BaseDtoImpl
 * 
 * 规约关闭方式  用于规约不受我们控制的对象
 * 1. 设置   AddParentClass = false
 * 2. 类        implements IBaseDto
 */
@SuppressWarnings("serial")
@EntityPK(Pk = "<#if (table.primaryKeys?size==1)><#list table.primaryKeys as c >${c.columnName}</#list></#if>", defaultColumn = false, tableName = "${table.tableName}")
@AddParentClass(AddParentClass = true, DefaultValueClass = Constant.DEFAULT_COLUMN_DEFAULT_CLASEENAME)
public class ${table.className}Dto  extends BaseDtoImpl{//${table.remarks?if_exists}
<#list table.columns as c >
	  <#if (c.javaType=='java.sql.Timestamp')||(c.javaType=='java.util.Date')>
	    <#if (c.columnName!='created_date')&&(c.columnName!='updated_date')&&(c.columnName!='end_date')>
    private java.util.Date ${c.columnName};//${c.remarks?if_exists}
        </#if> 
	  <#else>
	  <#if (c.columnName!='created_user_cd')&&(c.columnName!='updated_user_cd')>
	private ${c.javaType} ${c.columnName};//${c.remarks?if_exists}
	 </#if> 
	  </#if>
</#list>

<#list table.columns as c >	
      <#if (c.javaType=='java.sql.Timestamp')||(c.javaType=='java.util.Date')>
 <#if (c.columnName!='created_date')&&(c.columnName!='updated_date')&&(c.columnName!='end_date')>
   /**
	* 获取 ${c.remarks?if_exists}
	* @return
	*/
	public java.util.Date get${c.columnNameFcu}() {
		return ${c.columnName};
	}
	
   /**
	* 设置 ${c.remarks?if_exists}
	* @param ${c.columnName}
	*/
 	public void set${c.columnNameFcu}(java.util.Date ${c.columnName}) {
		this.${c.columnName} = ${c.columnName};
	}
</#if>
	  <#else>
<#if (c.columnName!='created_user_cd')&&(c.columnName!='updated_user_cd')>
   /**
	* 获取 ${c.remarks?if_exists}
	* @return
	*/
	public ${c.javaType} get${c.columnNameFcu}() {
		return ${c.columnName};
	}
	
   /**
	* 设置 ${c.remarks?if_exists}
	* @param ${c.columnName}
	*/
 	public void set${c.columnNameFcu}(${c.javaType} ${c.columnName}) {
		this.${c.columnName} = ${c.columnName};
	}
	  </#if>
</#if>
</#list>
}
