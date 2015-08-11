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
import com.shiyue.bbs.dao.IPayInfo0703Dao;
import com.shiyue.bbs.model.dto.PayInfo0703Dto;
import com.shiyue.bbs.model.PayInfo0703QueryBean;
import com.shiyue.bbs.service.IPayInfo0703Service;


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
@Service("payInfo0703Service")
@Transactional (propagation = Propagation.REQUIRED,isolation=Isolation.DEFAULT,rollbackFor=Exception.class)
public class PayInfo0703ServiceImpl extends GenericServiceImpl<PayInfo0703Dto, String> implements IPayInfo0703Service{
    @Autowired
    private IPayInfo0703Dao   payInfo0703Dao;

	public BaseDao<PayInfo0703Dto, String> getBaseDao() {
		return payInfo0703Dao;
	}
	

	/****
	 * @param  payInfo0703QueryBean
	 * @param  pagingObject
	 * @return PageResult
	 * @throws Exception
	 */
	 public PageResult queryPayInfo0703ListPage(PayInfo0703QueryBean payInfo0703QueryBean,PagingObject pagingObject) throws Exception
	 {	
		 	return this.payInfo0703Dao.queryPayInfo0703ListPage(payInfo0703QueryBean, pagingObject);
	 }
	
}
