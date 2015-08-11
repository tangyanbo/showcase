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
import com.shiyue.bbs.dao.IMerTractTypeInfoDao;
import com.shiyue.bbs.model.dto.MerTractTypeInfoDto;
import com.shiyue.bbs.model.MerTractTypeInfoQueryBean;
import com.shiyue.bbs.service.IMerTractTypeInfoService;


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
@Service("merTractTypeInfoService")
@Transactional (propagation = Propagation.REQUIRED,isolation=Isolation.DEFAULT,rollbackFor=Exception.class)
public class MerTractTypeInfoServiceImpl extends GenericServiceImpl<MerTractTypeInfoDto, String> implements IMerTractTypeInfoService{
    @Autowired
    private IMerTractTypeInfoDao   merTractTypeInfoDao;

	public BaseDao<MerTractTypeInfoDto, String> getBaseDao() {
		return merTractTypeInfoDao;
	}
	

	/****
	 * @param  merTractTypeInfoQueryBean
	 * @param  pagingObject
	 * @return PageResult
	 * @throws Exception
	 */
	 public PageResult queryMerTractTypeInfoListPage(MerTractTypeInfoQueryBean merTractTypeInfoQueryBean,PagingObject pagingObject) throws Exception
	 {	
		 	return this.merTractTypeInfoDao.queryMerTractTypeInfoListPage(merTractTypeInfoQueryBean, pagingObject);
	 }
	
}
