package com.shiyue.bbs.model.dto;
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
@EntityPK(Pk = "", defaultColumn = false, tableName = "TestSQL")
@AddParentClass(AddParentClass = true, DefaultValueClass = Constant.DEFAULT_COLUMN_DEFAULT_CLASEENAME)
public class TestsqlDto  extends BaseDtoImpl{//
	private java.lang.Long testsql1;//
	private java.lang.String t1;//
	private java.lang.String t2;//

   /**
	* 获取 
	* @return
	*/
	public java.lang.Long getTestsql1() {
		return testsql1;
	}
	
   /**
	* 设置 
	* @param testsql1
	*/
 	public void setTestsql1(java.lang.Long testsql1) {
		this.testsql1 = testsql1;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getT1() {
		return t1;
	}
	
   /**
	* 设置 
	* @param t1
	*/
 	public void setT1(java.lang.String t1) {
		this.t1 = t1;
	}
   /**
	* 获取 
	* @return
	*/
	public java.lang.String getT2() {
		return t2;
	}
	
   /**
	* 设置 
	* @param t2
	*/
 	public void setT2(java.lang.String t2) {
		this.t2 = t2;
	}
}
