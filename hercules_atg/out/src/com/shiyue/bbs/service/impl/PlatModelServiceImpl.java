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
import com.shiyue.bbs.dao.IPlatModelDao;
import com.shiyue.bbs.model.dto.PlatModelDto;
import com.shiyue.bbs.model.PlatModelQueryBean;
import com.shiyue.bbs.service.IPlatModelService;


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
@Service("platModelService")
@Transactional (propagation = Propagation.REQUIRED,isolation=Isolation.DEFAULT,rollbackFor=Exception.class)
public class PlatModelServiceImpl extends GenericServiceImpl<PlatModelDto, String> implements IPlatModelService{
    @Autowired
    private IPlatModelDao   platModelDao;

	public BaseDao<PlatModelDto, String> getBaseDao() {
		return platModelDao;
	}
	

	/****
	 * @param  platModelQueryBean
	 * @param  pagingObject
	 * @return PageResult
	 * @throws Exception
	 */
	 public PageResult queryPlatModelListPage(PlatModelQueryBean platModelQueryBean,PagingObject pagingObject) throws Exception
	 {	
		 	return this.platModelDao.queryPlatModelListPage(platModelQueryBean, pagingObject);
	 }
	
}
