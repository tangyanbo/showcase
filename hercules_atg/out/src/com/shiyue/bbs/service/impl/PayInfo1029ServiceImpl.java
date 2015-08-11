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
import com.shiyue.bbs.dao.IPayInfo1029Dao;
import com.shiyue.bbs.model.dto.PayInfo1029Dto;
import com.shiyue.bbs.model.PayInfo1029QueryBean;
import com.shiyue.bbs.service.IPayInfo1029Service;


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
@Service("payInfo1029Service")
@Transactional (propagation = Propagation.REQUIRED,isolation=Isolation.DEFAULT,rollbackFor=Exception.class)
public class PayInfo1029ServiceImpl extends GenericServiceImpl<PayInfo1029Dto, String> implements IPayInfo1029Service{
    @Autowired
    private IPayInfo1029Dao   payInfo1029Dao;

	public BaseDao<PayInfo1029Dto, String> getBaseDao() {
		return payInfo1029Dao;
	}
	

	/****
	 * @param  payInfo1029QueryBean
	 * @param  pagingObject
	 * @return PageResult
	 * @throws Exception
	 */
	 public PageResult queryPayInfo1029ListPage(PayInfo1029QueryBean payInfo1029QueryBean,PagingObject pagingObject) throws Exception
	 {	
		 	return this.payInfo1029Dao.queryPayInfo1029ListPage(payInfo1029QueryBean, pagingObject);
	 }
	
}
