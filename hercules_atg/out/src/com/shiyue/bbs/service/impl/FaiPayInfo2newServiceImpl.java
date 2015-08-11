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
import com.shiyue.bbs.dao.IFaiPayInfo2newDao;
import com.shiyue.bbs.model.dto.FaiPayInfo2newDto;
import com.shiyue.bbs.model.FaiPayInfo2newQueryBean;
import com.shiyue.bbs.service.IFaiPayInfo2newService;


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
@Service("faiPayInfo2newService")
@Transactional (propagation = Propagation.REQUIRED,isolation=Isolation.DEFAULT,rollbackFor=Exception.class)
public class FaiPayInfo2newServiceImpl extends GenericServiceImpl<FaiPayInfo2newDto, String> implements IFaiPayInfo2newService{
    @Autowired
    private IFaiPayInfo2newDao   faiPayInfo2newDao;

	public BaseDao<FaiPayInfo2newDto, String> getBaseDao() {
		return faiPayInfo2newDao;
	}
	

	/****
	 * @param  faiPayInfo2newQueryBean
	 * @param  pagingObject
	 * @return PageResult
	 * @throws Exception
	 */
	 public PageResult queryFaiPayInfo2newListPage(FaiPayInfo2newQueryBean faiPayInfo2newQueryBean,PagingObject pagingObject) throws Exception
	 {	
		 	return this.faiPayInfo2newDao.queryFaiPayInfo2newListPage(faiPayInfo2newQueryBean, pagingObject);
	 }
	
}
