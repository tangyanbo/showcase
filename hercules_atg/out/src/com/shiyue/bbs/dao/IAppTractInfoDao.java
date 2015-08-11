package com.shiyue.bbs.dao;
import com.ldbank.common.tools.opensymphony.page.PageResult;
import com.ldbank.common.tools.opensymphony.page.PagingObject;
import  com.shiyue.bbs.model.dto.AppTractInfoDto;
import com.shiyue.bbs.model.AppTractInfoQueryBean;
import com.hercules.database.dao.BaseDao;

/**
 * 类功能:自动代码生成模板 IDao 模板
 * <p>创建者:</p>
 * <p>创建时间:</p>
 * <p>修改者:</p>
 * <p>修改时间:</p>
 * <p>修改原因：</p>
 * <p>审核者:</p>
 * <p>审核时间:</p>
 * <p>审核意见：</p>
 */
public interface IAppTractInfoDao extends BaseDao<AppTractInfoDto,String>{	

	/****
	 * 
	 * @param appTractInfoQueryBean
	 * @param pagingObject
	 * @return
	 * @throws Exception
	 */
	 public PageResult queryAppTractInfoListPage(AppTractInfoQueryBean appTractInfoQueryBean,PagingObject pagingObject) throws Exception;
}
