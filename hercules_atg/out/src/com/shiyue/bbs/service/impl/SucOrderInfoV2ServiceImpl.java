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
import com.shiyue.bbs.dao.ISucOrderInfoV2Dao;
import com.shiyue.bbs.model.dto.SucOrderInfoV2Dto;
import com.shiyue.bbs.model.SucOrderInfoV2QueryBean;
import com.shiyue.bbs.service.ISucOrderInfoV2Service;


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
@Service("sucOrderInfoV2Service")
@Transactional (propagation = Propagation.REQUIRED,isolation=Isolation.DEFAULT,rollbackFor=Exception.class)
public class SucOrderInfoV2ServiceImpl extends GenericServiceImpl<SucOrderInfoV2Dto, String> implements ISucOrderInfoV2Service{
    @Autowired
    private ISucOrderInfoV2Dao   sucOrderInfoV2Dao;

	public BaseDao<SucOrderInfoV2Dto, String> getBaseDao() {
		return sucOrderInfoV2Dao;
	}
	

	/****
	 * @param  sucOrderInfoV2QueryBean
	 * @param  pagingObject
	 * @return PageResult
	 * @throws Exception
	 */
	 public PageResult querySucOrderInfoV2ListPage(SucOrderInfoV2QueryBean sucOrderInfoV2QueryBean,PagingObject pagingObject) throws Exception
	 {	
		 	return this.sucOrderInfoV2Dao.querySucOrderInfoV2ListPage(sucOrderInfoV2QueryBean, pagingObject);
	 }
	
}
