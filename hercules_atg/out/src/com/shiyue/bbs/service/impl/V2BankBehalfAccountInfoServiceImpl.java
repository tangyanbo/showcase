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
import com.shiyue.bbs.dao.IV2BankBehalfAccountInfoDao;
import com.shiyue.bbs.model.dto.V2BankBehalfAccountInfoDto;
import com.shiyue.bbs.model.V2BankBehalfAccountInfoQueryBean;
import com.shiyue.bbs.service.IV2BankBehalfAccountInfoService;


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
@Service("v2BankBehalfAccountInfoService")
@Transactional (propagation = Propagation.REQUIRED,isolation=Isolation.DEFAULT,rollbackFor=Exception.class)
public class V2BankBehalfAccountInfoServiceImpl extends GenericServiceImpl<V2BankBehalfAccountInfoDto, String> implements IV2BankBehalfAccountInfoService{
    @Autowired
    private IV2BankBehalfAccountInfoDao   v2BankBehalfAccountInfoDao;

	public BaseDao<V2BankBehalfAccountInfoDto, String> getBaseDao() {
		return v2BankBehalfAccountInfoDao;
	}
	

	/****
	 * @param  v2BankBehalfAccountInfoQueryBean
	 * @param  pagingObject
	 * @return PageResult
	 * @throws Exception
	 */
	 public PageResult queryV2BankBehalfAccountInfoListPage(V2BankBehalfAccountInfoQueryBean v2BankBehalfAccountInfoQueryBean,PagingObject pagingObject) throws Exception
	 {	
		 	return this.v2BankBehalfAccountInfoDao.queryV2BankBehalfAccountInfoListPage(v2BankBehalfAccountInfoQueryBean, pagingObject);
	 }
	
}
