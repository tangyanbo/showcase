package com.shiyue.bbs.dao;
import com.ldbank.common.tools.opensymphony.page.PageResult;
import com.ldbank.common.tools.opensymphony.page.PagingObject;
import  com.shiyue.bbs.model.dto.CstpCsn0365Dto;
import com.shiyue.bbs.model.CstpCsn0365QueryBean;
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
public interface ICstpCsn0365Dao extends BaseDao<CstpCsn0365Dto,String>{	

	/****
	 * 
	 * @param cstpCsn0365QueryBean
	 * @param pagingObject
	 * @return
	 * @throws Exception
	 */
	 public PageResult queryCstpCsn0365ListPage(CstpCsn0365QueryBean cstpCsn0365QueryBean,PagingObject pagingObject) throws Exception;
}
