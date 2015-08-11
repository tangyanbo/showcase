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
import com.shiyue.bbs.dao.IV2BankBehalfMerConfigDao;
import com.shiyue.bbs.model.dto.V2BankBehalfMerConfigDto;
import com.shiyue.bbs.model.V2BankBehalfMerConfigQueryBean;
import com.shiyue.bbs.service.IV2BankBehalfMerConfigService;


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
@Service("v2BankBehalfMerConfigService")
@Transactional (propagation = Propagation.REQUIRED,isolation=Isolation.DEFAULT,rollbackFor=Exception.class)
public class V2BankBehalfMerConfigServiceImpl extends GenericServiceImpl<V2BankBehalfMerConfigDto, String> implements IV2BankBehalfMerConfigService{
    @Autowired
    private IV2BankBehalfMerConfigDao   v2BankBehalfMerConfigDao;

	public BaseDao<V2BankBehalfMerConfigDto, String> getBaseDao() {
		return v2BankBehalfMerConfigDao;
	}
	

	/****
	 * @param  v2BankBehalfMerConfigQueryBean
	 * @param  pagingObject
	 * @return PageResult
	 * @throws Exception
	 */
	 public PageResult queryV2BankBehalfMerConfigListPage(V2BankBehalfMerConfigQueryBean v2BankBehalfMerConfigQueryBean,PagingObject pagingObject) throws Exception
	 {	
		 	return this.v2BankBehalfMerConfigDao.queryV2BankBehalfMerConfigListPage(v2BankBehalfMerConfigQueryBean, pagingObject);
	 }
	
}
