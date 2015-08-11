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
import com.shiyue.bbs.dao.IMerTerminalInfoDao;
import com.shiyue.bbs.model.dto.MerTerminalInfoDto;
import com.shiyue.bbs.model.MerTerminalInfoQueryBean;
import com.shiyue.bbs.service.IMerTerminalInfoService;


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
@Service("merTerminalInfoService")
@Transactional (propagation = Propagation.REQUIRED,isolation=Isolation.DEFAULT,rollbackFor=Exception.class)
public class MerTerminalInfoServiceImpl extends GenericServiceImpl<MerTerminalInfoDto, String> implements IMerTerminalInfoService{
    @Autowired
    private IMerTerminalInfoDao   merTerminalInfoDao;

	public BaseDao<MerTerminalInfoDto, String> getBaseDao() {
		return merTerminalInfoDao;
	}
	

	/****
	 * @param  merTerminalInfoQueryBean
	 * @param  pagingObject
	 * @return PageResult
	 * @throws Exception
	 */
	 public PageResult queryMerTerminalInfoListPage(MerTerminalInfoQueryBean merTerminalInfoQueryBean,PagingObject pagingObject) throws Exception
	 {	
		 	return this.merTerminalInfoDao.queryMerTerminalInfoListPage(merTerminalInfoQueryBean, pagingObject);
	 }
	
}
