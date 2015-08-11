package com.shiyue.bbs.service;
import com.ldbank.common.tools.opensymphony.page.PageResult;
import com.ldbank.common.tools.opensymphony.page.PagingObject;
import  com.shiyue.bbs.model.dto.CstpCsn0221Dto;
import com.shiyue.bbs.model.CstpCsn0221QueryBean;
import com.hercules.database.service.IGenericService;


/**
 * 类功能:自动代码生成模板   IService 模板
 * <p>创建者:</p>
 * <p>创建时间:</p>
 * <p>修改者:</p>
 * <p>修改时间:</p>
 * <p>修改原因：</p>
 * <p>审核者:</p>
 * <p>审核时间:</p>
 * <p>审核意见：</p>
 */
public interface ICstpCsn0221Service extends IGenericService<CstpCsn0221Dto, String>{

	/****
	 * 
	 * @param cstpCsn0221QueryBean
	 * @param pagingObject
	 * @return
	 * @throws Exception
	 */
	 public PageResult queryCstpCsn0221ListPage(CstpCsn0221QueryBean cstpCsn0221QueryBean,PagingObject pagingObject) throws Exception;

}
