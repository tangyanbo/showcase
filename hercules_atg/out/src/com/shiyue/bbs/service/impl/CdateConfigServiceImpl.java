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
import com.shiyue.bbs.dao.ICdateConfigDao;
import com.shiyue.bbs.model.dto.CdateConfigDto;
import com.shiyue.bbs.model.CdateConfigQueryBean;
import com.shiyue.bbs.service.ICdateConfigService;


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
@Service("cdateConfigService")
@Transactional (propagation = Propagation.REQUIRED,isolation=Isolation.DEFAULT,rollbackFor=Exception.class)
public class CdateConfigServiceImpl extends GenericServiceImpl<CdateConfigDto, String> implements ICdateConfigService{
    @Autowired
    private ICdateConfigDao   cdateConfigDao;

	public BaseDao<CdateConfigDto, String> getBaseDao() {
		return cdateConfigDao;
	}
	

	/****
	 * @param  cdateConfigQueryBean
	 * @param  pagingObject
	 * @return PageResult
	 * @throws Exception
	 */
	 public PageResult queryCdateConfigListPage(CdateConfigQueryBean cdateConfigQueryBean,PagingObject pagingObject) throws Exception
	 {	
		 	return this.cdateConfigDao.queryCdateConfigListPage(cdateConfigQueryBean, pagingObject);
	 }
	
}
