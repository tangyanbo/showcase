package com.shiyue.bbs.service;
import com.ldbank.common.tools.opensymphony.page.PageResult;
import com.ldbank.common.tools.opensymphony.page.PagingObject;
import  com.shiyue.bbs.model.dto.FaiPayInfo2new1102Dto;
import com.shiyue.bbs.model.FaiPayInfo2new1102QueryBean;
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
public interface IFaiPayInfo2new1102Service extends IGenericService<FaiPayInfo2new1102Dto, String>{

	/****
	 * 
	 * @param faiPayInfo2new1102QueryBean
	 * @param pagingObject
	 * @return
	 * @throws Exception
	 */
	 public PageResult queryFaiPayInfo2new1102ListPage(FaiPayInfo2new1102QueryBean faiPayInfo2new1102QueryBean,PagingObject pagingObject) throws Exception;

}
