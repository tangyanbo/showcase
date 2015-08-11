package com.shiyue.bbs.service;
import com.ldbank.common.tools.opensymphony.page.PageResult;
import com.ldbank.common.tools.opensymphony.page.PagingObject;
import  com.shiyue.bbs.model.dto.SucPayInfoNew1102Dto;
import com.shiyue.bbs.model.SucPayInfoNew1102QueryBean;
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
public interface ISucPayInfoNew1102Service extends IGenericService<SucPayInfoNew1102Dto, String>{

	/****
	 * 
	 * @param sucPayInfoNew1102QueryBean
	 * @param pagingObject
	 * @return
	 * @throws Exception
	 */
	 public PageResult querySucPayInfoNew1102ListPage(SucPayInfoNew1102QueryBean sucPayInfoNew1102QueryBean,PagingObject pagingObject) throws Exception;

}
