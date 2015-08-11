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
import com.shiyue.bbs.dao.IV2BankBehalfTransDetailDao;
import com.shiyue.bbs.model.dto.V2BankBehalfTransDetailDto;
import com.shiyue.bbs.model.V2BankBehalfTransDetailQueryBean;
import com.shiyue.bbs.service.IV2BankBehalfTransDetailService;


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
@Service("v2BankBehalfTransDetailService")
@Transactional (propagation = Propagation.REQUIRED,isolation=Isolation.DEFAULT,rollbackFor=Exception.class)
public class V2BankBehalfTransDetailServiceImpl extends GenericServiceImpl<V2BankBehalfTransDetailDto, String> implements IV2BankBehalfTransDetailService{
    @Autowired
    private IV2BankBehalfTransDetailDao   v2BankBehalfTransDetailDao;

	public BaseDao<V2BankBehalfTransDetailDto, String> getBaseDao() {
		return v2BankBehalfTransDetailDao;
	}
	

	/****
	 * @param  v2BankBehalfTransDetailQueryBean
	 * @param  pagingObject
	 * @return PageResult
	 * @throws Exception
	 */
	 public PageResult queryV2BankBehalfTransDetailListPage(V2BankBehalfTransDetailQueryBean v2BankBehalfTransDetailQueryBean,PagingObject pagingObject) throws Exception
	 {	
		 	return this.v2BankBehalfTransDetailDao.queryV2BankBehalfTransDetailListPage(v2BankBehalfTransDetailQueryBean, pagingObject);
	 }
	
}
