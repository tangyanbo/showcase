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
import com.shiyue.bbs.dao.IPayInfo0708Dao;
import com.shiyue.bbs.model.dto.PayInfo0708Dto;
import com.shiyue.bbs.model.PayInfo0708QueryBean;
import com.shiyue.bbs.service.IPayInfo0708Service;


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
@Service("payInfo0708Service")
@Transactional (propagation = Propagation.REQUIRED,isolation=Isolation.DEFAULT,rollbackFor=Exception.class)
public class PayInfo0708ServiceImpl extends GenericServiceImpl<PayInfo0708Dto, String> implements IPayInfo0708Service{
    @Autowired
    private IPayInfo0708Dao   payInfo0708Dao;

	public BaseDao<PayInfo0708Dto, String> getBaseDao() {
		return payInfo0708Dao;
	}
	

	/****
	 * @param  payInfo0708QueryBean
	 * @param  pagingObject
	 * @return PageResult
	 * @throws Exception
	 */
	 public PageResult queryPayInfo0708ListPage(PayInfo0708QueryBean payInfo0708QueryBean,PagingObject pagingObject) throws Exception
	 {	
		 	return this.payInfo0708Dao.queryPayInfo0708ListPage(payInfo0708QueryBean, pagingObject);
	 }
	
}
