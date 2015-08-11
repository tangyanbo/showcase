package com.shiyue.bbs.service.impl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import com.hercules.database.dao.BaseDao;
import com.hercules.database.service.impl.GenericServiceImpl;
import com.ldbank.common.tools.opensymphony.page.PageResult;
import com.ldbank.common.tools.opensymphony.page.PagingObject;
import com.shiyue.bbs.dao.ISucPayInfoNew1102Dao;
import com.shiyue.bbs.model.dto.SucPayInfoNew1102Dto;
import com.shiyue.bbs.model.SucPayInfoNew1102QueryBean;
import com.shiyue.bbs.service.ISucPayInfoNew1102Service;


/**
 * 类功能:自动代码生成模板 ServiceImpl 模板
 * <p>创建者:</p>
 * <p>创建时间:</p>
 * <p>修改者:</p>
 * <p>修改时间:</p>
 * <p>修改原因：</p>
 * <p>审核者:</p>
 * <p>审核时间:</p>
 * <p>审核意见：</p>
 */

@Scope("prototype")
@Service("sucPayInfoNew1102Service")
@Transactional (propagation = Propagation.REQUIRED,isolation=Isolation.DEFAULT,rollbackFor=Exception.class)
public class SucPayInfoNew1102ServiceImpl extends GenericServiceImpl<SucPayInfoNew1102Dto, String> implements ISucPayInfoNew1102Service{
    @Autowired
    private ISucPayInfoNew1102Dao   sucPayInfoNew1102Dao;

	public BaseDao<SucPayInfoNew1102Dto, String> getBaseDao() {
		return sucPayInfoNew1102Dao;
	}
	

	/****
	 * @param  sucPayInfoNew1102QueryBean
	 * @param  pagingObject
	 * @return PageResult
	 * @throws Exception
	 */
	 public PageResult querySucPayInfoNew1102ListPage(SucPayInfoNew1102QueryBean sucPayInfoNew1102QueryBean,PagingObject pagingObject) throws Exception
	 {	
		 	return this.sucPayInfoNew1102Dao.querySucPayInfoNew1102ListPage(sucPayInfoNew1102QueryBean, pagingObject);
	 }
	
}
