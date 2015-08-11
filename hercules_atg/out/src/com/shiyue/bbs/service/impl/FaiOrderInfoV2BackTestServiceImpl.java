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
import com.shiyue.bbs.dao.IFaiOrderInfoV2BackTestDao;
import com.shiyue.bbs.model.dto.FaiOrderInfoV2BackTestDto;
import com.shiyue.bbs.model.FaiOrderInfoV2BackTestQueryBean;
import com.shiyue.bbs.service.IFaiOrderInfoV2BackTestService;


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
@Service("faiOrderInfoV2BackTestService")
@Transactional (propagation = Propagation.REQUIRED,isolation=Isolation.DEFAULT,rollbackFor=Exception.class)
public class FaiOrderInfoV2BackTestServiceImpl extends GenericServiceImpl<FaiOrderInfoV2BackTestDto, String> implements IFaiOrderInfoV2BackTestService{
    @Autowired
    private IFaiOrderInfoV2BackTestDao   faiOrderInfoV2BackTestDao;

	public BaseDao<FaiOrderInfoV2BackTestDto, String> getBaseDao() {
		return faiOrderInfoV2BackTestDao;
	}
	

	/****
	 * @param  faiOrderInfoV2BackTestQueryBean
	 * @param  pagingObject
	 * @return PageResult
	 * @throws Exception
	 */
	 public PageResult queryFaiOrderInfoV2BackTestListPage(FaiOrderInfoV2BackTestQueryBean faiOrderInfoV2BackTestQueryBean,PagingObject pagingObject) throws Exception
	 {	
		 	return this.faiOrderInfoV2BackTestDao.queryFaiOrderInfoV2BackTestListPage(faiOrderInfoV2BackTestQueryBean, pagingObject);
	 }
	
}
