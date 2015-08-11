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
import com.shiyue.bbs.dao.IFaiOrderInfoV2Dao;
import com.shiyue.bbs.model.dto.FaiOrderInfoV2Dto;
import com.shiyue.bbs.model.FaiOrderInfoV2QueryBean;
import com.shiyue.bbs.service.IFaiOrderInfoV2Service;


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
@Service("faiOrderInfoV2Service")
@Transactional (propagation = Propagation.REQUIRED,isolation=Isolation.DEFAULT,rollbackFor=Exception.class)
public class FaiOrderInfoV2ServiceImpl extends GenericServiceImpl<FaiOrderInfoV2Dto, String> implements IFaiOrderInfoV2Service{
    @Autowired
    private IFaiOrderInfoV2Dao   faiOrderInfoV2Dao;

	public BaseDao<FaiOrderInfoV2Dto, String> getBaseDao() {
		return faiOrderInfoV2Dao;
	}
	

	/****
	 * @param  faiOrderInfoV2QueryBean
	 * @param  pagingObject
	 * @return PageResult
	 * @throws Exception
	 */
	 public PageResult queryFaiOrderInfoV2ListPage(FaiOrderInfoV2QueryBean faiOrderInfoV2QueryBean,PagingObject pagingObject) throws Exception
	 {	
		 	return this.faiOrderInfoV2Dao.queryFaiOrderInfoV2ListPage(faiOrderInfoV2QueryBean, pagingObject);
	 }
	
}
