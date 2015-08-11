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
import com.shiyue.bbs.dao.IV2OrderInfoDao;
import com.shiyue.bbs.model.dto.V2OrderInfoDto;
import com.shiyue.bbs.model.V2OrderInfoQueryBean;
import com.shiyue.bbs.service.IV2OrderInfoService;


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
@Service("v2OrderInfoService")
@Transactional (propagation = Propagation.REQUIRED,isolation=Isolation.DEFAULT,rollbackFor=Exception.class)
public class V2OrderInfoServiceImpl extends GenericServiceImpl<V2OrderInfoDto, String> implements IV2OrderInfoService{
    @Autowired
    private IV2OrderInfoDao   v2OrderInfoDao;

	public BaseDao<V2OrderInfoDto, String> getBaseDao() {
		return v2OrderInfoDao;
	}
	

	/****
	 * @param  v2OrderInfoQueryBean
	 * @param  pagingObject
	 * @return PageResult
	 * @throws Exception
	 */
	 public PageResult queryV2OrderInfoListPage(V2OrderInfoQueryBean v2OrderInfoQueryBean,PagingObject pagingObject) throws Exception
	 {	
		 	return this.v2OrderInfoDao.queryV2OrderInfoListPage(v2OrderInfoQueryBean, pagingObject);
	 }
	
}
