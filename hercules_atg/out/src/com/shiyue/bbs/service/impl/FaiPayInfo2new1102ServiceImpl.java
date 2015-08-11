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
import com.shiyue.bbs.dao.IFaiPayInfo2new1102Dao;
import com.shiyue.bbs.model.dto.FaiPayInfo2new1102Dto;
import com.shiyue.bbs.model.FaiPayInfo2new1102QueryBean;
import com.shiyue.bbs.service.IFaiPayInfo2new1102Service;


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
@Service("faiPayInfo2new1102Service")
@Transactional (propagation = Propagation.REQUIRED,isolation=Isolation.DEFAULT,rollbackFor=Exception.class)
public class FaiPayInfo2new1102ServiceImpl extends GenericServiceImpl<FaiPayInfo2new1102Dto, String> implements IFaiPayInfo2new1102Service{
    @Autowired
    private IFaiPayInfo2new1102Dao   faiPayInfo2new1102Dao;

	public BaseDao<FaiPayInfo2new1102Dto, String> getBaseDao() {
		return faiPayInfo2new1102Dao;
	}
	

	/****
	 * @param  faiPayInfo2new1102QueryBean
	 * @param  pagingObject
	 * @return PageResult
	 * @throws Exception
	 */
	 public PageResult queryFaiPayInfo2new1102ListPage(FaiPayInfo2new1102QueryBean faiPayInfo2new1102QueryBean,PagingObject pagingObject) throws Exception
	 {	
		 	return this.faiPayInfo2new1102Dao.queryFaiPayInfo2new1102ListPage(faiPayInfo2new1102QueryBean, pagingObject);
	 }
	
}
