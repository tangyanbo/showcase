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
import com.shiyue.bbs.dao.IV2BankBehalfOrderDao;
import com.shiyue.bbs.model.dto.V2BankBehalfOrderDto;
import com.shiyue.bbs.model.V2BankBehalfOrderQueryBean;
import com.shiyue.bbs.service.IV2BankBehalfOrderService;


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
@Service("v2BankBehalfOrderService")
@Transactional (propagation = Propagation.REQUIRED,isolation=Isolation.DEFAULT,rollbackFor=Exception.class)
public class V2BankBehalfOrderServiceImpl extends GenericServiceImpl<V2BankBehalfOrderDto, String> implements IV2BankBehalfOrderService{
    @Autowired
    private IV2BankBehalfOrderDao   v2BankBehalfOrderDao;

	public BaseDao<V2BankBehalfOrderDto, String> getBaseDao() {
		return v2BankBehalfOrderDao;
	}
	

	/****
	 * @param  v2BankBehalfOrderQueryBean
	 * @param  pagingObject
	 * @return PageResult
	 * @throws Exception
	 */
	 public PageResult queryV2BankBehalfOrderListPage(V2BankBehalfOrderQueryBean v2BankBehalfOrderQueryBean,PagingObject pagingObject) throws Exception
	 {	
		 	return this.v2BankBehalfOrderDao.queryV2BankBehalfOrderListPage(v2BankBehalfOrderQueryBean, pagingObject);
	 }
	
}
